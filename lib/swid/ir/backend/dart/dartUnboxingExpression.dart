import 'package:code_builder/code_builder.dart'
    show
        DartEmitter,
        refer,
        Expression,
        TypeReference,
        Method,
        Parameter,
        CodeExpression,
        Code;

import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/narrowSwidInterfaceByReferenceDeclaration.dart';

class DartUnboxingExpression {
  final SwidType swidType;
  final Expression expression;
  final String identifierName;

  DartUnboxingExpression({
    @required this.swidType,
    @required this.expression,
    this.identifierName = "",
  });

  String toDartSource() => swidType.when(
      fromSwidInterface: (val) => narrowSwidInterfaceByReferenceDeclaration(
            swidInterface: val,
            onPrimitive: (val) => val.name == "double" || val.name == "double*"
                ? expression
                    .nullSafeProperty("toDouble")
                    .call([])
                    .accept(DartEmitter())
                    .toString()
                : expression.accept(DartEmitter()).toString(),
            onClass: (val) => refer("maybeUnBoxAndBuildArgument")
                .call([
                  expression
                ], {
                  "parentState": refer("hydroState")
                }, [
                  TypeReference((t) => t..symbol = val.name),
                ])
                .accept(DartEmitter())
                .toString(),
            onEnum: (val) => refer("maybeUnBoxEnum")
                .call([], {
                  "values": refer(val.name).property("values"),
                  "boxedEnum": expression
                })
                .accept(DartEmitter())
                .toString(),
            onVoid: (_) => expression.accept(DartEmitter()).toString(),
            onTypeParameter: (_) => expression.accept(DartEmitter()).toString(),
            onDynamic: (_) => expression.accept(DartEmitter()).toString(),
          ),
      fromSwidClass: (_) => "",
      fromSwidDefaultFormalParameter: (_) => "",
      fromSwidFunctionType: (val) => [
            identifierName,
            " != null ? ",
            ...[
              val.typeFormals.isNotEmpty
                  ? ("<" +
                      val.typeFormals.map((x) => x.name).toList().join() +
                      ">")
                  : "",
              Method(
                (m) => m
                  ..lambda = true
                  ..requiredParameters.addAll(
                    [
                      ...val.normalParameterNames
                          .map((x) => Parameter((p) => p..name = x))
                          .toList(),
                    ],
                  )
                  ..body = Code(DartUnboxingExpression(
                    swidType: val.returnType,
                    expression: CodeExpression(
                      Code(
                        ([
                          identifierName,
                          ".dispatch([args[0],",
                          val.normalParameterNames
                              .map((x) => x)
                              .toList()
                              .join(","),
                          "],parentState:hydroState,)",
                          val.returnType.when(
                            fromSwidInterface: (val) =>
                                narrowSwidInterfaceByReferenceDeclaration(
                              swidInterface: val,
                              onPrimitive: (_) => "[0]",
                              onClass: (_) => "[0]",
                              onEnum: (_) => "[0]",
                              onVoid: (_) => "",
                              onTypeParameter: (_) => "[0]",
                              onDynamic: (_) => "[0]",
                            ),
                            fromSwidClass: (_) => "[0]",
                            fromSwidDefaultFormalParameter: (_) => "[0]",
                            fromSwidFunctionType: (_) => "[0]",
                          )
                        ]..removeWhere((x) => x == null))
                            .join(""),
                      ),
                    ),
                  ).toDartSource()),
              ).closure.accept(DartEmitter()).toString(),
            ],
            " : null "
          ].join());
}
