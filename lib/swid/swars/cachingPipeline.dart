import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:meta/meta.dart';

class CachingPipeline<T extends Object> implements ISwarsPipeline<T> {
  CachingPipeline();

  CachingPipeline._({
    required final List<ISwarsTerm<dynamic, dynamic, dynamic>> terms,
    required final Map<String, Map<int, dynamic>> results,
  })   : _terms = terms,
        _results = results;

  List<ISwarsTerm<dynamic, dynamic, dynamic>> _terms = [];

  Map<String, Map<int, dynamic>> _results = {};

  Map<String, Map<int, int>> _cacheHits = {};

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

  Map<int, int> getCacheHitsForCacheGroup(final String cacheGroup) =>
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
    required final int hashKey,
  }) =>
      _results.containsKey(cacheGroup) &&
      _results[cacheGroup]!.containsKey(hashKey);

  @override
  void add<V extends Object, U extends Object>({
    required covariant final ISwarsTerm<V, U, T> term,
  }) =>
      _terms.add(term);

  List<T> reduce() => _terms
      .map((x) => _callTerm(
            term: x,
          ))
      .toList();

  @override
  ISwarsPipeline<V> fromTerms<V extends Object, U extends Object,
          K extends Object, L extends Object>({
    required covariant final List<ISwarsTerm<U, K, L>> terms,
  }) =>
      CachingPipeline._(
        terms: terms,
        results: _results,
      );
}
