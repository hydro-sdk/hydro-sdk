import 'package:analyzer/src/generated/source.dart' show Source;
import 'package:meta/meta.dart';

String mapLibrarySourcePath({required Source? librarySource}) =>
    librarySource?.uri?.toString() ?? "";
