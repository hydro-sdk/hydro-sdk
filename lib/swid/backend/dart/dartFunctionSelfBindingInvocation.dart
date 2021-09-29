import 'package:code_builder/code_builder.dart'
    show
        DartEmitter,
        refer,
        literalString,
        literalNum,
        Expression,
        Code,
        CodeExpression;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBoxingExpression.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBoxingProcedure.dart';
import 'package:hydro_sdk/swid/backend/dart/dartUnboxingExpression.dart';
import 'package:hydro_sdk/swid/backend/dart/util/guardedLuaCallerNamedArgumentsIndex.dart';
import 'package:hydro_sdk/swid/backend/dart/util/luaCallerArgumentsParameterName.dart';
import 'package:hydro_sdk/swid/backend/dart/util/unpackedClosureName.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

part 'dartFunctionSelfBindingInvocation.freezed.dart';

@freezed
class DartFunctionSelfBindingInvocation
    with
        _$DartFunctionSelfBindingInvocation,
        HashKeyMixin<DartFunctionSelfBindingInvocation>,
        HashComparableMixin<DartFunctionSelfBindingInvocation>,
        UnhashableMixin<DartFunctionSelfBindingInvocation>,
        SwarsNonUniqueTermMixin<
            DartFunctionSelfBindingInvocation,
            $DartFunctionSelfBindingInvocationCopyWith<
                DartFunctionSelfBindingInvocation>,
            String>,
        SwarsTransformMixin<
            DartFunctionSelfBindingInvocation,
            $DartFunctionSelfBindingInvocationCopyWith<
                DartFunctionSelfBindingInvocation>,
            String>,
        SwarsTermStringResultMixin {
  DartFunctionSelfBindingInvocation._();

  factory DartFunctionSelfBindingInvocation({
    required final SwidFunctionType swidFunctionType,
    required final DartBoxingProcedure argumentBoxingProcedure,
    required final DartBoxingProcedure returnValueBoxingProcedure,
    required final bool emitTableBindingPrefix,
    required final bool useClosureUnpackNameForUnboxingIdentifiers,
    required final Expression? returnValueBoxingTableExpression,
  }) = _$DartFunctionSelfBindingInvocationCtor;

  @override
  DartFunctionSelfBindingInvocation clone({
    final SwidFunctionType? swidFunctionType,
    final DartBoxingProcedure? argumentBoxingProcedure,
    final DartBoxingProcedure? returnValueBoxingProcedure,
    final bool? emitTableBindingPrefix,
    final bool? useClosureUnpackNameForUnboxingIdentifiers,
    final Expression? returnValueBoxingTableExpression,
  }) =>
      DartFunctionSelfBindingInvocation(
        swidFunctionType: swidFunctionType ?? this.swidFunctionType.clone(),
        argumentBoxingProcedure:
            argumentBoxingProcedure ?? this.argumentBoxingProcedure,
        returnValueBoxingProcedure:
            returnValueBoxingProcedure ?? this.returnValueBoxingProcedure,
        emitTableBindingPrefix:
            emitTableBindingPrefix ?? this.emitTableBindingPrefix,
        useClosureUnpackNameForUnboxingIdentifiers:
            useClosureUnpackNameForUnboxingIdentifiers ??
                this.useClosureUnpackNameForUnboxingIdentifiers,
        returnValueBoxingTableExpression: returnValueBoxingTableExpression ??
            this.returnValueBoxingTableExpression,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        ((
          Expression expression,
        ) =>
            returnValueBoxingProcedure == DartBoxingProcedure.unbox
                ? pipeline.reduceFromTerm(DartUnboxingExpression(
                    swidType: swidFunctionType.returnType,
                    expression: expression,
                    identifierName: null,
                  ))
                : returnValueBoxingProcedure == DartBoxingProcedure.box
                    ? pipeline.reduceFromTerm(DartBoxingExpression(
                        swidType: swidFunctionType.returnType,
                        expression: expression,
                        tableExpression: returnValueBoxingTableExpression,
                      ))
                    : expression
                        .accept(
                          DartEmitter(
                            useNullSafetySyntax: true,
                          ),
                        )
                        .toString())(
          !swidFunctionType.declarationModifiers.isGetter
              ? refer(swidFunctionType.name)
                  /*
              args[0] - caller
              args[1...n] - positional arguments
              args[n + 1] - named arguments
      */
                  .call(
                  ([
                    ...(swidFunctionType.normalParameterNames.isNotEmpty
                        ? swidFunctionType.normalParameterNames
                            .map(
                              (x) => ((
                                Expression expression,
                              ) =>
                                  argumentBoxingProcedure ==
                                          DartBoxingProcedure.unbox
                                      ? CodeExpression(
                                          Code(
                                            pipeline.reduceFromTerm(
                                              DartUnboxingExpression(
                                                swidType: swidFunctionType
                                                    .normalParameterTypes
                                                    .elementAt(
                                                  swidFunctionType
                                                      .normalParameterNames
                                                      .indexWhere(
                                                    (e) => e == x,
                                                  ),
                                                ),
                                                expression: expression,
                                                identifierName:
                                                    useClosureUnpackNameForUnboxingIdentifiers
                                                        ? unpackedClosureName(
                                                            str: x,
                                                          )
                                                        : x,
                                              ),
                                            ),
                                          ),
                                        )
                                      : CodeExpression(
                                          Code(""),
                                        ))(
                                refer("$luaCallerArgumentsParameterName").index(
                                  literalNum(
                                    swidFunctionType.normalParameterNames
                                            .indexWhere((e) => e == x) +
                                        1,
                                  ),
                                ),
                              ),
                            )
                            .toList()
                            .cast<Expression>()
                        : []),
                    ...(swidFunctionType.optionalParameterNames.isNotEmpty
                        ? swidFunctionType.optionalParameterNames
                            .map(
                              (x) => ((
                                Expression expression,
                              ) =>
                                  argumentBoxingProcedure ==
                                          DartBoxingProcedure.unbox
                                      ? CodeExpression(
                                          Code(
                                            pipeline.reduceFromTerm(
                                              DartUnboxingExpression(
                                                swidType: swidFunctionType
                                                    .optionalParameterTypes
                                                    .elementAt(
                                                  swidFunctionType
                                                      .optionalParameterNames
                                                      .indexWhere(
                                                    (e) => e == x,
                                                  ),
                                                ),
                                                expression: expression,
                                                identifierName:
                                                    useClosureUnpackNameForUnboxingIdentifiers
                                                        ? unpackedClosureName(
                                                            str: x,
                                                          )
                                                        : x,
                                              ),
                                            ),
                                          ),
                                        )
                                      : CodeExpression(
                                          Code(""),
                                        ))(
                                refer("$luaCallerArgumentsParameterName").index(
                                  literalNum(
                                    [
                                          ...swidFunctionType
                                              .normalParameterNames,
                                          ...swidFunctionType
                                              .optionalParameterNames,
                                        ].indexWhere(
                                          (e) => e == x,
                                        ) +
                                        1,
                                  ),
                                ),
                              ),
                            )
                            .toList()
                            .cast<Expression>()
                        : [])
                  ]),
                  Map.fromEntries(
                    [
                      ...(emitTableBindingPrefix
                          ? [
                              MapEntry(
                                "table",
                                refer("$luaCallerArgumentsParameterName").index(
                                  literalNum(0),
                                ),
                              ),
                              MapEntry(
                                "hydroState",
                                refer("hydroState"),
                              )
                            ]
                          : []),
                      ...(swidFunctionType.namedParameterTypes.entries.map(
                        (x) => MapEntry(
                          x.key,
                          CodeExpression(
                            Code(argumentBoxingProcedure ==
                                    DartBoxingProcedure.unbox
                                ? pipeline.reduceFromTerm(
                                    DartUnboxingExpression(
                                      swidType: x.value,
                                      identifierName:
                                          useClosureUnpackNameForUnboxingIdentifiers
                                              ? unpackedClosureName(
                                                  str: x.key,
                                                )
                                              : x.key,
                                      expression:
                                          guardedLuaCallerNamedArgumentsIndex(
                                        leadingIndex: swidFunctionType
                                                .normalParameterNames.length +
                                            1,
                                        nonNullIndexBuilder: ({
                                          required final Expression expression,
                                        }) =>
                                            expression
                                                .index(
                                                  literalString(x.key),
                                                )
                                                .code
                                                .accept(
                                                  DartEmitter(
                                                    useNullSafetySyntax: true,
                                                  ),
                                                )
                                                .toString(),
                                      ),
                                    ),
                                  )
                                : ""),
                          ),
                        ),
                      )),
                    ],
                  ),
                )
              : refer(swidFunctionType.name),
        ),
      );
}
