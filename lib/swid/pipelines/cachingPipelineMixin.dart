import 'package:meta/meta.dart';
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/pipelines/iCachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResultPersistenceKind.dart';

mixin CachingPipelineMixin<T extends Object>
    implements ICachingPipeline<T>, ISwarsPipeline<T> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  ISwarsTermResult<dynamic> _callTerm({
    required final ISwarsTerm<dynamic, dynamic, dynamic> term,
  }) {
    if (term.cacheGroup.isNotEmpty) {
      onNonEmptyCacheGroup(
        cacheGroup: term.cacheGroup,
        hashKey: term.hashKey,
      );

      if (results.containsKey(term.cacheGroup)) {
        if (results[term.cacheGroup]!.containsKey(term.hashKey)) {
          cacheHits[term.cacheGroup]![term.hashKey] =
              (cacheHits[term.cacheGroup]![term.hashKey] ?? 0) + 1;

          onCacheHit(
            cacheGroup: term.cacheGroup,
            hashKey: term.hashKey,
          );

          return results[term.cacheGroup]![term.hashKey]!;
        }
      } else {
        _moveRawCacheGroup(
          cacheGroup: term.cacheGroup,
          term: term,
        );

        if (results.containsKey(term.cacheGroup)) {
          cacheHits[term.cacheGroup] = {};

          return _callTerm(
            term: term,
          );
        } else {
          results[term.cacheGroup] = {};
          cacheHits[term.cacheGroup] = {};
        }
      }

      final res = term(
        pipeline: this,
      );

      results[term.cacheGroup]![term.hashKey] = res;

      onCacheMiss(
        cacheGroup: term.cacheGroup,
        hashKey: term.hashKey,
      );

      if (term.termResultPersistenceKind ==
          SwarsTermResultPersistenceKind.kDurable) {
        cacheMgr.onCacheMiss(
          cacheGroup: term.cacheGroup,
          hashKey: term.hashKey,
          result: res,
        );
      }

      return res;
    }

    return term(
      pipeline: this,
    );
  }

  Map<String, int> getCacheHitsForCacheGroup(final String cacheGroup) =>
      Map.fromEntries(
        cacheHits[cacheGroup]!
            .entries
            .map((x) => MapEntry(x.key, x.value))
            .toList(),
      );

  List<Tuple2<String, int>> cacheHitsByCacheGroup() => (cacheHits.entries
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
      results.containsKey(cacheGroup);

  @visibleForTesting
  bool hashKeyExistsInCacheGroup({
    required final String cacheGroup,
    required final String hashKey,
  }) =>
      results.containsKey(cacheGroup) &&
      results[cacheGroup]!.containsKey(hashKey);

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  void _moveRawCacheGroup({
    required final String cacheGroup,
    required final ISwarsTerm<dynamic, dynamic, dynamic> term,
  }) {
    assert(cacheGroup == term.cacheGroup);
    if (rawResults.containsKey(term.cacheGroup)) {
      if (term.cacheGroup.isNotEmpty) {
        if (!results.containsKey(term.cacheGroup)) {
          results[term.cacheGroup] = Map.fromEntries(
            rawResults[term.cacheGroup]!.entries.map(
                  (x) => MapEntry(
                    x.key,
                    term.deserializeTermResult(x.value),
                  ),
                ),
          );
          rawResults[term.cacheGroup]!.clear();
        }
      }
    }
  }

  @override
  @nonVirtual
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  void add<V extends Object, U extends Object>({
    required covariant final ISwarsTerm<V, U, T> term,
  }) =>
      terms.add(term);

  @override
  @nonVirtual
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<T> reduce() => terms
      .map(
        (x) => _callTerm(
          term: x,
        ).unwrap(),
      )
      .toList()
      .cast<T>();

  @override
  @nonVirtual
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
