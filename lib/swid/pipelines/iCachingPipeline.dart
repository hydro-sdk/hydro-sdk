import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipelineCacheMgr.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';

abstract class ICachingPipeline<T extends Object> implements ISwarsPipeline<T> {
  @protected
  ISwarsPipelineCacheMgr get cacheMgr;

  @protected
  List<ISwarsTerm<dynamic, dynamic, dynamic>> get terms;

  @protected
  Map<String, Map<String, ISwarsTermResult<dynamic>>> get results;

  @protected
  Map<String, Map<String, dynamic>> get rawResults;

  @protected
  set rawResults(Map<String, Map<String, dynamic>> rawResults);

  @protected
  Map<String, Map<String, int>> get cacheHits;

  void onNonEmptyCacheGroup({
    required final String cacheGroup,
    required final String hashKey,
  });

  void onCacheHit({
    required final String cacheGroup,
    required final String hashKey,
  });

  void onCacheMiss({
    required final String cacheGroup,
    required final String hashKey,
  });
}
