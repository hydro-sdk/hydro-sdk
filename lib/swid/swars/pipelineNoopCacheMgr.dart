import 'package:hydro_sdk/swid/swars/iSwarsPipelineCacheMgr.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';

class PipelineNoopCacheMgr implements ISwarsPipelineCacheMgr {
  const PipelineNoopCacheMgr();

  @override
  void onCacheMiss({
    required final String cacheGroup,
    required final String hashKey,
    required final ISwarsTermResult<dynamic> result,
  }) {}
}
