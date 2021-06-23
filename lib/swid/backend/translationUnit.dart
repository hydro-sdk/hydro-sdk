abstract class TranslationUnit {
  final String path;
  final String fileName;

  TranslationUnit({required this.path, required this.fileName});

  String toSource();
}
