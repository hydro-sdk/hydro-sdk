abstract class ITermResultStore {
  Future<void> upsertSingle({
    required final String hashKey,
    required final String cacheGroup,
    required final String result,
  });
}
