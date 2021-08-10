import 'package:analyzer/src/generated/source.dart' show Source;

String mapLibrarySourcePath({
  required final Source? librarySource,
}) =>
    librarySource?.uri.toString() ?? "";
