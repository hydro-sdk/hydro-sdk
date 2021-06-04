import 'package:analyzer/dart/ast/ast.dart'
    show
        ConstructorName,
        InstanceCreationExpression,
        NamedExpression,
        Label,
        SimpleStringLiteral,
        SimpleIdentifier,
        BooleanLiteral,
        ArgumentList;

import 'package:collection/collection.dart' show IterableExtension;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/frontend/dart/extractStaticConstFromSyntacticEntity.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromInterface.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

SwidStaticConstFunctionInvocation
    swidStaticConstFunctionInvocationFromInstanceCreationExpression(
        {required InstanceCreationExpression instanceCreationExpression}) {
  ConstructorName constructor = instanceCreationExpression.childEntities
      .firstWhere((x) => x is ConstructorName) as ConstructorName;
  return SwidStaticConstFunctionInvocation(
      staticType: SwidType.fromSwidInterface(
          swidInterface: swidInterfaceFromInterface(
              interfaceType: instanceCreationExpression.staticType as InterfaceType)),
      value: constructor.type.name.name +
          (constructor.name != null ? ".${constructor.name!.name}" : ""),
      normalParameters: (instanceCreationExpression.childEntities
                  ?.firstWhere((x) => x is ArgumentList) as ArgumentList)
              ?.childEntities
              ?.map((x) =>
                  extractStaticConstFromSyntacticEntity(syntacticEntity: x))
              ?.toList() ??
          []
        ..removeWhere((x) => x == null),
      namedParameters: Map.fromEntries((instanceCreationExpression.childEntities
                  .firstWhere((x) => x is ArgumentList) as ArgumentList)
              ?.childEntities
              ?.map((x) {
            if (x is NamedExpression) {
              var argument = x.childEntities.firstWhereOrNull(
                  (x) =>
                      x is SimpleStringLiteral ||
                      x is BooleanLiteral ||
                      x is SimpleIdentifier);
              return MapEntry(
                  (x.childEntities.firstWhere((x) => x is Label) as Label)
                      .label
                      .name,
                  extractStaticConstFromSyntacticEntity(
                      syntacticEntity: argument));
            }
            return MapEntry(null, null);
          })?.toList() ??
          {})
        ..remove(null),
      isConstructorInvocation: constructor.name == null);
}
