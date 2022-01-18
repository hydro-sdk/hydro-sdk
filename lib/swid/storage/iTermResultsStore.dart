import 'package:tuple/tuple.dart';

abstract class ITermResultStore {
  Future<void> upsertSingle({
    required final String hashKey,
    required final String cacheGroup,
    required final String result,
  });

  Future<List<Tuple3<String, String, String>>> getAllByCacheGroup({
    required final String cacheGroup,
  });
}
