import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipelineCacheMgr.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';

class PipelineNoopCacheMgr implements ISwarsPipelineCacheMgr {
  const PipelineNoopCacheMgr();

  @override
  Future<void> serializeTermResultsByCacheGroup({
    required final String cacheGroup,
    required final List<Tuple2<String, ISwarsTermResult<dynamic>>> termResults,
  }) async {}

  @override
  Future<Map<String, Map<String, dynamic>>> deserializeResults() async => {};
}
