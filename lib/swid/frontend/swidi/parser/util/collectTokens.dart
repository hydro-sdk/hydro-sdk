List<T> collectTokens<T>(List<dynamic> list) {
  return [
    ...List.from(list).where((e) => e != null).whereType<T>().toList(),
    ...((({
      required final List<List<dynamic>> nested,
    }) =>
                nested.isNotEmpty
                    ? nested.reduce((value, element) => [...value, ...element])
                    : [])(
            nested: List.from(list)
                .where((e) => e != null)
                .whereType<List>()
                .toList()
                .map((e) => collectTokens(e))
                .toList())
        .where((e) => e != null)
        .whereType<T>()
        .toList())
  ];
}
