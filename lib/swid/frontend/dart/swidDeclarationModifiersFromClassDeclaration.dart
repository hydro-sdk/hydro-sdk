import 'package:analyzer/dart/ast/ast.dart' show ClassDeclaration;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';

SwidDeclarationModifiers swidDeclarationModifiersFromClassDeclaration(
        {@required ClassDeclaration classDeclaration}) =>
    SwidDeclarationModifiers.clone(
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      isAbstract: classDeclaration.isAbstract,
      isSynthetic: classDeclaration.isSynthetic,
    );
