import 'package:hydro_sdk/swid/pipelines/cachingPipelineMixin.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipelineCacheMgr.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';

class CachingPipeline<T extends Object>
    with CachingPipelineMixin<T>
    implements ISwarsPipeline<T> {
  @nonVirtual
  @protected
  final ISwarsPipelineCacheMgr cacheMgr;

  @nonVirtual
  @protected
  List<ISwarsTerm<dynamic, dynamic, dynamic>> terms = [];

  @nonVirtual
  @protected
  Map<String, Map<String, ISwarsTermResult<dynamic>>> results = {};

  @nonVirtual
  @protected
  Map<String, Map<String, dynamic>> rawResults = {};

  @nonVirtual
  @protected
  Map<String, Map<String, int>> cacheHits = {};

  CachingPipeline({
    required final ISwarsPipelineCacheMgr this.cacheMgr,
  });

  CachingPipeline._({
    required final List<ISwarsTerm<dynamic, dynamic, dynamic>> this.terms,
    required final Map<String, Map<String, ISwarsTermResult<dynamic>>>
        this.results,
    required final Map<String, Map<String, dynamic>> this.rawResults,
    required final Map<String, Map<String, int>> this.cacheHits,
    required final ISwarsPipelineCacheMgr this.cacheMgr,
  });

  @override
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  ISwarsPipeline<V> fromTerms<V extends Object, U extends Object,
          K extends Object, L extends Object>({
    required covariant final List<ISwarsTerm<U, K, L>> terms,
  }) =>
      CachingPipeline._(
        terms: terms,
        results: this.results,
        rawResults: this.rawResults,
        cacheHits: this.cacheHits,
        cacheMgr: this.cacheMgr,
      );
}
