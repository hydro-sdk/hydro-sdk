class TsResolvedImport {
  final List<String> symbols;
  final String path;

  TsResolvedImport({
    required final this.symbols,
    required final this.path,
  });

  String toTsSource() => [
        "import { ",
        symbols.join(","),
        " }",
        " from ",
        "\"",
        path,
        "\";",
      ].join();
}
