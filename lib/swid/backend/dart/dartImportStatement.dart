class DartImportStatement {
  final String path;

  DartImportStatement({required final this.path});

  String toDartSource() => ["import ", "'", path, "'", ";", "\n"].join();
}
