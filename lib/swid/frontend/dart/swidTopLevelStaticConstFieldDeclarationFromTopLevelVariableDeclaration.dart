import 'package:analyzer/dart/ast/ast.dart';

import 'package:hydro_sdk/swid/frontend/dart/mapCompilationUnitLibrarySourcePath.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStaticConstFieldDeclarationFromVariableDeclarationList.dart';
import 'package:hydro_sdk/swid/ir/swidTopLevelStaticConstFieldDeclaration.dart';

SwidTopLevelStaticConstFieldDeclaration
    swidTopLevelStaticConstFieldDeclarationFromTopLevelVariableDeclaration({
  required TopLevelVariableDeclaration topLevelVariableDeclaration,
  required final bool buildElements,
}) =>
        SwidTopLevelStaticConstFieldDeclaration(
          originalPackagePath:
              topLevelVariableDeclaration.root is CompilationUnit
                  ? mapCompilationUnitSourcePath(
                      compilationUnit:
                          topLevelVariableDeclaration.root as CompilationUnit,
                    )
                  : "",
          declaration:
              swidStaticConstFieldDeclarationFromVariableDeclarationList(
            variableDeclarationList: topLevelVariableDeclaration.childEntities
                .whereType<VariableDeclarationList>()
                .first,
            buildElements: buildElements,
          ),
        );
