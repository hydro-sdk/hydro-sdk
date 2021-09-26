abstract class TranslationUnit {
  final String path;
  final String fileName;

  TranslationUnit({required final this.path, required final this.fileName});

  String toSource();
}
