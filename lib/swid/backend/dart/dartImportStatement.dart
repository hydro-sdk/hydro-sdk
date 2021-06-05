

class DartImportStatement {
  final String path;

  DartImportStatement({required this.path});

  String toDartSource() => ["import ", "'", path, "'", ";", "\n"].join();
}
