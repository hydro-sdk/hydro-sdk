import 'package:code_builder/code_builder.dart'
    show
        DartEmitter,
        refer,
        literalString,
        literalNum,
        Expression,
        Code,
        CodeExpression;

import 'package:hydro_sdk/swid/backend/dart/dartBoxingExpression.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBoxingProcedure.dart';
import 'package:hydro_sdk/swid/backend/dart/dartUnboxingExpression.dart';
import 'package:hydro_sdk/swid/backend/dart/util/luaCallerArgumentsParameterName.dart';
import 'package:hydro_sdk/swid/backend/dart/util/unpackedClosureName.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';

class DartFunctionSelfBindingInvocation {
  final SwidFunctionType swidFunctionType;
  final DartBoxingProcedure argumentBoxingProcedure;
  final DartBoxingProcedure returnValueBoxingProcedure;
  final bool emitTableBindingPrefix;
  final bool useClosureUnpackNameForUnboxingIdentifiers;
  final Expression? returnValueBoxingTableExpression;

  const DartFunctionSelfBindingInvocation({
    required this.swidFunctionType,
    required this.argumentBoxingProcedure,
    required this.returnValueBoxingProcedure,
    required this.emitTableBindingPrefix,
    required this.useClosureUnpackNameForUnboxingIdentifiers,
    this.returnValueBoxingTableExpression,
  });

  String toDartSource() => ((Expression expression) =>
      returnValueBoxingProcedure == DartBoxingProcedure.unbox
          ? DartUnboxingExpression(
                  swidType: swidFunctionType.returnType, expression: expression)
              .toDartSource()
          : returnValueBoxingProcedure == DartBoxingProcedure.box
              ? DartBoxingExpression(
                  swidType: swidFunctionType.returnType,
                  expression: expression,
                  tableExpression: returnValueBoxingTableExpression,
                ).toDartSource()
              : expression
                  .accept(DartEmitter(
                    useNullSafetySyntax: true,
                  ))
                  .toString())(!swidFunctionType.declarationModifiers.isGetter
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
                        .map((x) => ((Expression expression) =>
                            argumentBoxingProcedure == DartBoxingProcedure.unbox
                                ? CodeExpression(Code(DartUnboxingExpression(
                                    swidType: swidFunctionType
                                        .normalParameterTypes
                                        .elementAt(swidFunctionType
                                            .normalParameterNames
                                            .indexWhere((e) => e == x)),
                                    expression: expression,
                                    identifierName:
                                        useClosureUnpackNameForUnboxingIdentifiers
                                            ? unpackedClosureName(
                                                str: x,
                                              )
                                            : x,
                                  ).toDartSource()))
                                : CodeExpression(
                                    Code("")))(refer(
                                "$luaCallerArgumentsParameterName")
                            .index(literalNum(swidFunctionType
                                    .normalParameterNames
                                    .indexWhere((e) => e == x) +
                                1))))
                        .toList()
                        .cast<Expression>()
                    : []),
                ...(swidFunctionType.optionalParameterNames.isNotEmpty
                    ? swidFunctionType.optionalParameterNames
                        .map((x) => ((Expression expression) =>
                            argumentBoxingProcedure == DartBoxingProcedure.unbox
                                ? CodeExpression(Code(DartUnboxingExpression(
                                    swidType: swidFunctionType
                                        .optionalParameterTypes
                                        .elementAt(swidFunctionType
                                            .optionalParameterNames
                                            .indexWhere((e) => e == x)),
                                    expression: expression,
                                    identifierName:
                                        useClosureUnpackNameForUnboxingIdentifiers
                                            ? unpackedClosureName(
                                                str: x,
                                              )
                                            : x,
                                  ).toDartSource()))
                                : CodeExpression(
                                    Code("")))(refer(
                                "$luaCallerArgumentsParameterName")
                            .index(literalNum([
                                  ...swidFunctionType.normalParameterNames,
                                  ...swidFunctionType.optionalParameterNames,
                                ].indexWhere((e) => e == x) +
                                1))))
                        .toList()
                        .cast<Expression>()
                    : [])
              ]),
              Map.fromEntries([
                ...(emitTableBindingPrefix
                    ? [
                        MapEntry(
                            "table",
                            refer("$luaCallerArgumentsParameterName")
                                .index(literalNum(0))),
                        MapEntry("hydroState", refer("hydroState"))
                      ]
                    : []),
                ...(swidFunctionType.namedParameterTypes.entries.map(
                  (x) => MapEntry(
                    x.key,
                    CodeExpression(
                      Code(argumentBoxingProcedure == DartBoxingProcedure.unbox
                          ? DartUnboxingExpression(
                                  swidType: x.value,
                                  identifierName:
                                      useClosureUnpackNameForUnboxingIdentifiers
                                          ? unpackedClosureName(
                                              str: x.key,
                                            )
                                          : x.key,
                                  expression:
                                      refer("$luaCallerArgumentsParameterName")
                                          .index(literalNum(swidFunctionType
                                                  .normalParameterNames.length +
                                              1))
                                          .index(literalString(x.key)))
                              .toDartSource()
                          : ""),
                    ),
                  ),
                )),
              ]))
      : refer(swidFunctionType.name));
}
