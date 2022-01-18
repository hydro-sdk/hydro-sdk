import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';

abstract class ISwarsPipelineCacheMgr {
  const ISwarsPipelineCacheMgr();

  void onCacheMiss({
    required final String cacheGroup,
    required final String hashKey,
    required final ISwarsTermResult<dynamic> result,
  });
}
