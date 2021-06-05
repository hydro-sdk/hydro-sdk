

class TsResolvedImport {
  final List<String> symbols;
  final String path;

  TsResolvedImport({
    required this.symbols,
    required this.path,
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
