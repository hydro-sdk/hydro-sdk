import 'package:meta/meta.dart';
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipelineCacheMgr.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';

class CachingPipeline<T extends Object> implements ISwarsPipeline<T> {
  final ISwarsPipelineCacheMgr _cacheMgr;

  CachingPipeline({
    required final ISwarsPipelineCacheMgr cacheMgr,
  }) : _cacheMgr = cacheMgr;

  CachingPipeline._({
    required final List<ISwarsTerm<dynamic, dynamic, dynamic>> terms,
    required final Map<String, Map<String, ISwarsTermResult<dynamic>>> results,
    required final Map<String, Map<String, dynamic>> rawResults,
    required final Map<String, Map<String, int>> cacheHits,
    required final ISwarsPipelineCacheMgr cacheMgr,
  })   : _terms = terms,
        _results = results,
        _rawResults = rawResults,
        _cacheHits = cacheHits,
        _cacheMgr = cacheMgr;

  List<ISwarsTerm<dynamic, dynamic, dynamic>> _terms = [];

  Map<String, Map<String, ISwarsTermResult<dynamic>>> _results = {};

  Map<String, Map<String, dynamic>> _rawResults = {};

  Map<String, Map<String, int>> _cacheHits = {};

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  ISwarsTermResult<dynamic> _callTerm({
    required final ISwarsTerm<dynamic, dynamic, dynamic> term,
  }) {
    if (term.cacheGroup.isNotEmpty) {
      if (_results.containsKey(term.cacheGroup)) {
        if (_results[term.cacheGroup]!.containsKey(term.hashKey)) {
          _cacheHits[term.cacheGroup]![term.hashKey] =
              (_cacheHits[term.cacheGroup]![term.hashKey] ?? 0) + 1;
          return _results[term.cacheGroup]![term.hashKey]!;
        }
      } else {
        _moveRawCacheGroup(
          cacheGroup: term.cacheGroup,
          term: term,
        );

        if (_results.containsKey(term.cacheGroup)) {
          _cacheHits[term.cacheGroup] = {};

          return _callTerm(
            term: term,
          );
        } else {
          _results[term.cacheGroup] = {};
          _cacheHits[term.cacheGroup] = {};
        }
      }

      final res = term(
        pipeline: this,
      );

      _results[term.cacheGroup]![term.hashKey] = res;

      return res;
    }
    return term(
      pipeline: this,
    );
  }

  Map<String, int> getCacheHitsForCacheGroup(final String cacheGroup) =>
      Map.fromEntries(
        _cacheHits[cacheGroup]!
            .entries
            .map((x) => MapEntry(x.key, x.value))
            .toList(),
      );

  List<Tuple2<String, int>> cacheHitsByCacheGroup() => (_cacheHits.entries
      .map(
        (x) => Tuple2(
          x.key,
          x.value.entries.fold<int>(
            0,
            (previousValue, element) => previousValue + element.value,
          ),
        ),
      )
      .toList()
        ..sort(
          (a, b) => b.item2.compareTo(a.item2),
        ));

  List<Tuple2<String, int>> topCacheHitsByCacheGroup() =>
      cacheHitsByCacheGroup().take(10).toList();

  List<Tuple2<String, int>> emptyCacheHitsByCacheGroup() =>
      cacheHitsByCacheGroup().where((x) => x.item2 == 0).toList();

  @visibleForTesting
  bool cacheGroupExistsInCache(final String cacheGroup) =>
      _results.containsKey(cacheGroup);

  @visibleForTesting
  bool hashKeyExistsInCacheGroup({
    required final String cacheGroup,
    required final String hashKey,
  }) =>
      _results.containsKey(cacheGroup) &&
      _results[cacheGroup]!.containsKey(hashKey);

  Future<void> serialize() async => await Future.wait(
        _results.entries
            .map(
              (x) => _cacheMgr.serializeTermResultsByCacheGroup(
                cacheGroup: x.key,
                termResults: x.value.entries
                    .map(
                      (x) => Tuple2(x.key, x.value),
                    )
                    .toList(),
              ),
            )
            .toList(),
      );

  Future<Map<String, Map<String, dynamic>>> deserializeResults() async {
    _rawResults = await _cacheMgr.deserializeResults();

    return _rawResults;
  }

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  void _moveRawCacheGroup({
    required final String cacheGroup,
    required final ISwarsTerm<dynamic, dynamic, dynamic> term,
  }) {
    assert(cacheGroup == term.cacheGroup);
    if (_rawResults.containsKey(term.cacheGroup)) {
      if (term.cacheGroup.isNotEmpty) {
        if (!_results.containsKey(term.cacheGroup)) {
          _results[term.cacheGroup] = Map.fromEntries(
            _rawResults[term.cacheGroup]!.entries.map(
                  (x) => MapEntry(
                    x.key,
                    term.deserializeTermResult(x.value),
                  ),
                ),
          );
          _rawResults[term.cacheGroup]!.clear();
        }
      }
    }
  }

  @override
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  void add<V extends Object, U extends Object>({
    required covariant final ISwarsTerm<V, U, T> term,
  }) =>
      _terms.add(term);

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<T> reduce() => _terms
      .map(
        (x) => _callTerm(
          term: x,
        ).unwrap(),
      )
      .toList()
      .cast<T>();

  @override
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  ISwarsPipeline<V> fromTerms<V extends Object, U extends Object,
          K extends Object, L extends Object>({
    required covariant final List<ISwarsTerm<U, K, L>> terms,
  }) =>
      CachingPipeline._(
        terms: terms,
        results: _results,
        rawResults: _rawResults,
        cacheHits: _cacheHits,
        cacheMgr: _cacheMgr,
      );

  @override
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  V reduceFromTerm<V extends Object>(
    covariant final ISwarsTerm<Object, Object, V> term,
  ) =>
      fromTerms<V, Object, Object, V>(
        terms: [
          term,
        ],
      ).reduce().first;
}
