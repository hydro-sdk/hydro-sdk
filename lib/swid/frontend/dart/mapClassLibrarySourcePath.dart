import 'package:analyzer/dart/element/element.dart' show Element;

import 'package:hydro_sdk/swid/frontend/dart/mapLibrarySourcePath.dart';

String mapClassLibrarySourcePath({
  required final Element element,
}) =>
    mapLibrarySourcePath(librarySource: element.librarySource);
