import 'package:analyzer/dart/ast/ast.dart'
    show
        ConstructorName,
        InstanceCreationExpression,
        IntegerLiteral,
        StringLiteral,
        NamedExpression,
        Label,
        SimpleStringLiteral,
        BooleanLiteral,
        ArgumentList;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/dart/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStringLiteral.dart';
import 'package:meta/meta.dart';
import 'package:hydro_sdk/swid/ir/dart/swidLiteral.dart';

part 'swidStaticConstFunctionInvocation.freezed.dart';
part 'swidStaticConstFunctionInvocation.g.dart';

@freezed
abstract class SwidStaticConstFunctionInvocation
    with _$SwidStaticConstFunctionInvocation {
  factory SwidStaticConstFunctionInvocation({
    @required String value,
    @required List<SwidLiteral> normalParameters,
    @required Map<String, SwidLiteral> namedParameters,
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
        value: constructor.type.name.name,
        normalParameters: (instanceCreationExpression.childEntities
                    ?.firstWhere((x) => x is ArgumentList) as ArgumentList)
                ?.childEntities
                ?.map((x) {
              if (x is IntegerLiteral) {
                return SwidIntegerLiteral.fromIntegerLiteral(integerLiteral: x);
              } else if (x is StringLiteral) {
                return SwidStringLiteral(value: x.stringValue);
              }
            })?.toList() ??
            []
          ..removeWhere((x) => x == null),
        namedParameters: Map.fromEntries((instanceCreationExpression
                    .childEntities
                    .firstWhere((x) => x is ArgumentList) as ArgumentList)
                ?.childEntities
                ?.map((x) {
              if (x is NamedExpression) {
                var argument = x.childEntities.firstWhere(
                    (x) => x is SimpleStringLiteral || x is BooleanLiteral,
                    orElse: () => null);
                return MapEntry(
                    (x.childEntities.firstWhere((x) => x is Label) as Label)
                        .label
                        .name,
                    argument is SimpleStringLiteral
                        ? SwidStringLiteral(value: argument.value)
                        : argument is BooleanLiteral
                            ? SwidBooleanLiteral(
                                value: argument.value.toString())
                            : null);
              }
              return MapEntry(null, null);
            })?.toList() ??
            {})
          ..remove(null),
        isConstructorInvocation: true);
  }
}
