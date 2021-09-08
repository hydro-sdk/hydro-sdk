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

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/util/luaCallerArgumentsParameterName.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'dartUnboxingExpression.freezed.dart';

@freezed
class DartUnboxingExpression
    with
        _$DartUnboxingExpression,
        HashKeyMixin<DartUnboxingExpression>,
        HashComparableMixin<DartUnboxingExpression>,
        SwarsTransformMixin<DartUnboxingExpression,
            $DartUnboxingExpressionCopyWith<DartUnboxingExpression>, String> {
  DartUnboxingExpression._();

  factory DartUnboxingExpression({
    required final SwidType swidType,
    required final Expression expression,
    @Default("") final String? identifierName,
  }) = _$DartUnboxingExpressionCtor;

  @override
  String get cacheGroup => "dartUnboxingExpression";

  @override
  List<int> get hashableParts => [
        ...swidType.hashableParts,
        expression.hashCode,
        ...identifierName?.hashableParts ?? [],
      ];

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
                          ? val.typeArguments.first.displayName
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
                  ..body = Code(
                    pipeline.reduceFromTerm(
                      DartUnboxingExpression(
                        identifierName: null,
                        swidType: val.returnType,
                        expression: CodeExpression(
                          Code(
                            ([
                              identifierName,
                              ".dispatch([$luaCallerArgumentsParameterName[0],",
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
          ].join(),
        ),
      );
}
