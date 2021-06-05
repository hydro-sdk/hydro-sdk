import 'package:analyzer/dart/ast/ast.dart' show CompilationUnit;


import 'package:hydro_sdk/swid/frontend/dart/mapLibrarySourcePath.dart';

String mapCompilationUnitSourcePath(
        {required CompilationUnit compilationUnit}) =>
    mapLibrarySourcePath(
        librarySource: compilationUnit?.declaredElement?.librarySource);
