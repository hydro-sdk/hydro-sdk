import 'package:analyzer/dart/ast/ast.dart'
    show
        ConstructorName,
        InstanceCreationExpression,
        NamedExpression,
        Label,
        SimpleStringLiteral,
        SimpleIdentifier,
        BooleanLiteral,
        PrefixExpression,
        ArgumentList;

import 'package:analyzer/dart/element/type.dart' show InterfaceType;
import 'package:collection/collection.dart' show IterableExtension;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/dart/extractStaticConstFromSyntacticEntity.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromInterface.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

SwidStaticConstFunctionInvocation
    swidStaticConstFunctionInvocationFromInstanceCreationExpression({
  required final InstanceCreationExpression instanceCreationExpression,
  required final bool buildElements,
}) {
  ConstructorName constructor = instanceCreationExpression.childEntities
      .firstWhere((x) => x is ConstructorName) as ConstructorName;
  return SwidStaticConstFunctionInvocation(
    staticType: instanceCreationExpression.staticType != null
        ? SwidType.fromSwidInterface(
            swidInterface: swidInterfaceFromInterface(
              interfaceType:
                  instanceCreationExpression.staticType as InterfaceType,
              buildElements: buildElements,
            ),
          )
        : constructor.type.type != null &&
                constructor.type.type is InterfaceType
            ? SwidType.fromSwidInterface(
                swidInterface: swidInterfaceFromInterface(
                  interfaceType: constructor.type.type as InterfaceType,
                  buildElements: buildElements,
                ),
              )
            : dartUnknownType,
    value: constructor.type.name.name +
        (constructor.name != null ? ".${constructor.name!.name}" : ""),
    normalParameters: (instanceCreationExpression.childEntities.firstWhere(
      (x) => x is ArgumentList,
    ) as ArgumentList)
        .childEntities
        .map(
          (x) => extractStaticConstFromSyntacticEntity(
            syntacticEntity: x,
            buildElements: buildElements,
          ),
        )
        .where(
          (x) => x != dartUnknownConst,
        )
        .toList()
        .cast<SwidStaticConst>(),
    namedParameters: Map.fromEntries(
      (instanceCreationExpression.childEntities.firstWhere(
        (x) => x is ArgumentList,
      ) as ArgumentList)
          .childEntities
          .map((x) {
            if (x is NamedExpression) {
              var argument = x.childEntities.firstWhereOrNull(
                (x) =>
                    x is SimpleStringLiteral ||
                    x is BooleanLiteral ||
                    x is SimpleIdentifier ||
                    x is PrefixExpression,
              );
              if (argument != null) {
                return MapEntry(
                  (x.childEntities.firstWhere(
                    (x) => x is Label,
                  ) as Label)
                      .label
                      .name,
                  extractStaticConstFromSyntacticEntity(
                    syntacticEntity: argument,
                    buildElements: buildElements,
                  ),
                );
              }
            }
            return const MapEntry(
              null,
              null,
            );
          })
          .where(
            (x) => x.key != null && x.value != null,
          )
          .where(
            (x) => x.value != dartUnknownConst,
          )
          .toList()
          .cast<MapEntry<String, SwidStaticConst>>(),
    ),
    isConstructorInvocation: constructor.name == null,
  );
}
