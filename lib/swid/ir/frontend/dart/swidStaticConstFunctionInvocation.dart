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

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/extractStaticConstFromSyntacticEntity.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConst.dart';

part 'swidStaticConstFunctionInvocation.freezed.dart';
part 'swidStaticConstFunctionInvocation.g.dart';

@freezed
abstract class SwidStaticConstFunctionInvocation
    with _$SwidStaticConstFunctionInvocation {
  factory SwidStaticConstFunctionInvocation({
    @required String value,
    @required List<SwidStaticConst> normalParameters,
    @required Map<String, SwidStaticConst> namedParameters,
    @required bool isConstructorInvocation,
  }) = _$Data;

  factory SwidStaticConstFunctionInvocation.fromJson(
          Map<String, dynamic> json) =>
      _$SwidStaticConstFunctionInvocationFromJson(json);

  factory SwidStaticConstFunctionInvocation.fromInstanceCreationExpression(
      {@required InstanceCreationExpression instanceCreationExpression}) {
    ConstructorName constructor = instanceCreationExpression.childEntities
        .firstWhere((x) => x is ConstructorName);
    return SwidStaticConstFunctionInvocation(
        value: constructor.type.name.name +
            (constructor.name != null ? ".${constructor.name.name}" : ""),
        normalParameters: (instanceCreationExpression.childEntities
                    ?.firstWhere((x) => x is ArgumentList) as ArgumentList)
                ?.childEntities
                ?.map((x) =>
                    extractStaticConstFromSyntacticEntity(syntacticEntity: x))
                ?.toList() ??
            []
          ..removeWhere((x) => x == null),
        namedParameters: Map.fromEntries((instanceCreationExpression
                    .childEntities
                    .firstWhere((x) => x is ArgumentList) as ArgumentList)
                ?.childEntities
                ?.map((x) {
              if (x is NamedExpression) {
                var argument = x.childEntities.firstWhere(
                    (x) =>
                        x is SimpleStringLiteral ||
                        x is BooleanLiteral ||
                        x is SimpleIdentifier,
                    orElse: () => null);
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
}
