import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/util/luaCallerArgumentsParameterName.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/nameAnonymousNormalParametersInFunction.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

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

part 'dartUnboxingExpression.freezed.dart';

@freezed
class DartUnboxingExpression
    with
        _$DartUnboxingExpression,
        HashKeyMixin<DartUnboxingExpression>,
        HashComparableMixin<DartUnboxingExpression>,
        UnhashableMixin<DartUnboxingExpression>,
        SwarsNonUniqueTermMixin<DartUnboxingExpression,
            $DartUnboxingExpressionCopyWith<DartUnboxingExpression>, String>,
        SwarsTransformMixin<DartUnboxingExpression,
            $DartUnboxingExpressionCopyWith<DartUnboxingExpression>, String>,
        SwarsTermStringResultMixin {
  DartUnboxingExpression._();

  factory DartUnboxingExpression({
    required final SwidType swidType,
    required final Expression expression,
    @Default("") final String? identifierName,
  }) = _$DartUnboxingExpressionCtor;

  @override
  DartUnboxingExpression clone({
    final SwidType? swidType,
    final Expression? expression,
    final String? identifierName,
  }) =>
      DartUnboxingExpression(
        swidType: swidType ?? this.swidType.clone(),
        expression: expression ?? this.expression,
        identifierName: identifierName ?? this.identifierName,
      );

  String _destructureReturnType({
    required final SwidFunctionType swidFunctionType,
  }) =>
      swidFunctionType.returnType.when(
        fromSwidInterface: (val) => narrowSwidInterfaceByReferenceDeclaration(
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
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        swidType.when(
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
                : expression
                    .accept(DartEmitter(
                      useNullSafetySyntax: true,
                    ))
                    .toString(),
            onClass: (val) => refer("maybeUnBoxAndBuildArgument")
                .call([
                  expression
                ], {
                  "parentState": refer("hydroState")
                }, [
                  TypeReference((t) => t..symbol = val.displayName),
                  TypeReference(
                    (t) => t
                      ..symbol = val.typeArguments.isNotEmpty
                          ? val.typeArguments.first.type.displayName
                          : "dynamic",
                  ),
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
            onVoid: (_) => expression
                .accept(DartEmitter(
                  useNullSafetySyntax: true,
                ))
                .toString(),
            onTypeParameter: (_) => expression
                .accept(DartEmitter(
                  useNullSafetySyntax: true,
                ))
                .toString(),
            onDynamic: (_) => expression
                .accept(DartEmitter(
                  useNullSafetySyntax: true,
                ))
                .toString(),
            onUnknown: (_) => expression
                .accept(DartEmitter(
                  useNullSafetySyntax: true,
                ))
                .toString(),
          ),
          fromSwidClass: (_) => "",
          fromSwidDefaultFormalParameter: (_) => "",
          fromSwidFunctionType: (val) => (({
            required final SwidFunctionType val,
          }) =>
              [
                ...(val.nullabilitySuffix == SwidNullabilitySuffix.question
                    ? [
                        identifierName,
                        " != null ? ",
                      ]
                    : [""]),
                ...[
                  val.typeFormals.isNotEmpty
                      ? ("<" +
                          val.typeFormals
                              .map((x) => x.value.name)
                              .toList()
                              .join(",") +
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
                      ..body = Code(
                        pipeline.reduceFromTerm(
                          DartUnboxingExpression(
                            identifierName: identifierName,
                            swidType: val.returnType,
                            expression: CodeExpression(
                              Code(
                                ([
                                  ...(val.returnType.nullabilitySuffix ==
                                          SwidNullabilitySuffix.question
                                      ? [
                                          "((final List<dynamic>? val,) => val != null && val.length >= 1 ?",
                                          "val",
                                          _destructureReturnType(
                                            swidFunctionType: val,
                                          ),
                                          " : null)(",
                                        ]
                                      : []),
                                  identifierName,
                                  ".dispatch([$luaCallerArgumentsParameterName[0],",
                                  val.normalParameterNames
                                      .map((x) => x)
                                      .toList()
                                      .join(","),
                                  "],parentState:hydroState,)",
                                  ...(val.returnType.nullabilitySuffix !=
                                          SwidNullabilitySuffix.question
                                      ? [
                                          _destructureReturnType(
                                            swidFunctionType: val,
                                          ),
                                        ]
                                      : []),
                                  ...(val.returnType.nullabilitySuffix ==
                                          SwidNullabilitySuffix.question
                                      ? [
                                          ",)",
                                        ]
                                      : []),
                                ]).join(""),
                              ),
                            ),
                          ),
                        ),
                      ),
                  )
                      .closure
                      .accept(DartEmitter(
                        useNullSafetySyntax: true,
                      ))
                      .toString(),
                ],
                ...(val.nullabilitySuffix == SwidNullabilitySuffix.question
                    ? [
                        " : null ",
                      ]
                    : [""])
              ].join())(
            val: pipeline.reduceFromTerm(
              NameAnonymousNormalParametersInFunction(
                swidFunctionType: val,
              ),
            ),
          ),
        ),
      );
}
