import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';

abstract class ISwarsPipelineCacheMgr {
  const ISwarsPipelineCacheMgr();

  Future<void> serializeTermResultsByCacheGroup({
    required final String cacheGroup,
    required covariant final List<Tuple2<String, ISwarsTermResult<dynamic>>>
        termResults,
  });

  Future<Map<String, Map<String, dynamic>>> deserializeResults();
}
