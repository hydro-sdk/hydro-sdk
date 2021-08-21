import 'package:analyzer/dart/ast/ast.dart' show ClassDeclaration;

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';

SwidDeclarationModifiers swidDeclarationModifiersFromClassDeclaration(
        {required ClassDeclaration classDeclaration}) =>
    SwidDeclarationModifiers.clone(
      declarationModifiers: SwidDeclarationModifiers.empty(),
      isAbstract: classDeclaration.isAbstract,
      isSynthetic: classDeclaration.isSynthetic,
    );
