import 'package:meta/meta.dart';
import 'package:analyzer/dart/element/element.dart' show Element;
import 'package:hydro_sdk/swid/ir/dart/mapLibrarySourcePath.dart';

String mapClassLibrarySourcePath({@required Element element}) =>
    mapLibrarySourcePath(librarySource: element?.librarySource);
