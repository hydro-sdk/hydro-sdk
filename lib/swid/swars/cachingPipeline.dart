import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';

class CachingPipeline<T extends Object> implements ISwarsPipeline<T> {
  CachingPipeline();

  CachingPipeline._({
    required final List<ISwarsTerm<dynamic, dynamic, dynamic>> terms,
    required final Map<String, Map<String, dynamic>> results,
    required final Map<String, Map<String, int>> cacheHits,
  })   : _terms = terms,
        _results = results,
        _cacheHits = cacheHits;

  List<ISwarsTerm<dynamic, dynamic, dynamic>> _terms = [];

  Map<String, Map<String, dynamic>> _results = {};

  Map<String, Map<String, int>> _cacheHits = {};

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  T _callTerm({
    required final ISwarsTerm<dynamic, dynamic, dynamic> term,
  }) {
    if (_results.containsKey(term.cacheGroup)) {
      if (_results[term.cacheGroup]!.containsKey(term.hashKey)) {
        _cacheHits[term.cacheGroup]![term.hashKey] =
            (_cacheHits[term.cacheGroup]![term.hashKey] ?? 0) + 1;
        return _results[term.cacheGroup]![term.hashKey];
      }
    } else {
      _results[term.cacheGroup] = {};
      _cacheHits[term.cacheGroup] = {};
    }

    final res = term(pipeline: this);

    _results[term.cacheGroup]![term.hashKey] = res;

    return res;
  }

  Map<String, int> getCacheHitsForCacheGroup(final String cacheGroup) =>
      Map.fromEntries(
        _cacheHits[cacheGroup]!
            .entries
            .map((x) => MapEntry(x.key, x.value))
            .toList(),
      );

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
      .map((x) => _callTerm(
            term: x,
          ))
      .toList();

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
        cacheHits: _cacheHits,
      );

  @override
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  V reduceFromTerm<V extends Object>(
      covariant ISwarsTerm<Object, Object, V> term) {
    final ISwarsPipeline<V> pipeline = fromTerms<V, Object, Object, V>(
      terms: [
        term,
      ],
    );

    final res = pipeline.reduce();

    return res.first;
  }
}
