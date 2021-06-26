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

import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';

class DartUnboxingExpression {
  final SwidType swidType;
  final Expression expression;
  final String identifierName;

  const DartUnboxingExpression({
    required this.swidType,
    required this.expression,
    this.identifierName = "",
  });

  String toDartSource() => swidType.when(
      fromSwidInterface: (val) => narrowSwidInterfaceByReferenceDeclaration(
            swidInterface: val,
            onPrimitive: (val) => val.name == "double" || val.name == "double*"
                ? expression
                    .nullSafeProperty("toDouble")
                    .call([])
                    .accept(DartEmitter(
          useNullSafetySyntax: true,
        ))
                    .toString()
                : expression.accept(DartEmitter(
          useNullSafetySyntax: true,
        )).toString(),
            onClass: (val) => refer("maybeUnBoxAndBuildArgument")
                .call([
                  expression
                ], {
                  "parentState": refer("hydroState")
                }, [
                  TypeReference((t) => t..symbol = val.displayName),
                ])
                .accept(DartEmitter(
          useNullSafetySyntax: true,
        ))
                .toString(),
            onEnum: (val) => refer("maybeUnBoxEnum")
                .call([], {
                  "values": refer(val.name).property("values"),
                  "boxedEnum": expression
                })
                .accept(DartEmitter(
          useNullSafetySyntax: true,
        ))
                .toString(),
            onVoid: (_) => expression.accept(DartEmitter(
          useNullSafetySyntax: true,
        )).toString(),
            onTypeParameter: (_) => expression.accept(DartEmitter(
          useNullSafetySyntax: true,
        )).toString(),
            onDynamic: (_) => expression.accept(DartEmitter(
          useNullSafetySyntax: true,
        )).toString(),
            onUnknown: (_) => expression.accept(DartEmitter(
          useNullSafetySyntax: true,
        )).toString(),
          ),
      fromSwidClass: (_) => "",
      fromSwidDefaultFormalParameter: (_) => "",
      fromSwidFunctionType: (val) => [
            ...(val.nullabilitySuffix == SwidNullabilitySuffix.question
                ? [
                    identifierName,
                    " != null ? ",
                  ]
                : [""]),
            ...[
              val.typeFormals.isNotEmpty
                  ? ("<" +
                      val.typeFormals.map((x) => x.value.name).toList().join() +
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
                              onUnknown: (_) => "",
                            ),
                            fromSwidClass: (_) => "[0]",
                            fromSwidDefaultFormalParameter: (_) => "[0]",
                            fromSwidFunctionType: (_) => "[0]",
                          )
                        ]).join(""),
                      ),
                    ),
                  ).toDartSource()),
              ).closure.accept(DartEmitter(
          useNullSafetySyntax: true,
        )).toString(),
            ],
            ...(val.nullabilitySuffix == SwidNullabilitySuffix.question
                ? [
                    " : null ",
                  ]
                : [""])
          ].join());
}
