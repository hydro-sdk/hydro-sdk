import 'package:analyzer/src/generated/source.dart' show Source;

String mapLibrarySourcePath({
  required Source? librarySource,
}) =>
    librarySource?.uri.toString() ?? "";
