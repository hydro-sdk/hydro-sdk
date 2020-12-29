import 'package:code_builder/code_builder.dart'
    show
        DartEmitter,
        refer,
        literalString,
        literalNum,
        Expression,
        Code,
        CodeExpression;

import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/backend/dart/codeKind.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxEnumReference.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxingProcedure.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartUnboxingExpression.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';

class DartFunctionSelfBindingInvocation {
  final SwidFunctionType swidFunctionType;
  final DartBoxingProcedure argumentBoxingProcedure;
  final DartBoxingProcedure returnValueBoxingProcedure;
  final bool emitTableBindingPrefix;
  final Expression returnValueBoxingTableExpression;

  DartFunctionSelfBindingInvocation({
    @required this.swidFunctionType,
    @required this.argumentBoxingProcedure,
    @required this.returnValueBoxingProcedure,
    @required this.emitTableBindingPrefix,
    this.returnValueBoxingTableExpression,
  });

  String toDartSource() => ((Expression expression) => returnValueBoxingProcedure ==
          DartBoxingProcedure.unbox
      ? DartUnboxingExpression(
          swidType: swidFunctionType.returnType, expression: expression)
      : returnValueBoxingProcedure == DartBoxingProcedure.box
          ? swidFunctionType.returnType.when(
              fromSwidInterface: (val) =>
                  narrowSwidInterfaceByReferenceDeclaration(
                swidInterface: val,
                onPrimitive: (_) => expression.accept(DartEmitter()).toString(),
                onClass: (val) => DartBoxObjectReference(
                  type: val,
                  objectReference: expression,
                  boxLists: true,
                  codeKind: CodeKind.expression,
                  tableExpression: returnValueBoxingTableExpression,
                ).toDartSource(),
                onEnum: (val) => DartBoxEnumReference(
                        type: SwidType.fromSwidInterface(swidInterface: val),
                        codeKind: CodeKind.expression,
                        referenceName:
                            expression.accept(DartEmitter()).toString())
                    .toDartSource(),
                onVoid: (_) => expression.accept(DartEmitter()).toString(),
              ),
              fromSwidClass: (_) => "",
              fromSwidDefaultFormalParameter: (_) => "",
              fromSwidFunctionType: (_) => "",
            )
          : expression
              .accept(DartEmitter())
              .toString())(!swidFunctionType.swidDeclarationModifiers.isGetter
      ? refer(swidFunctionType.name)
          /*
              args[0] - caller
              args[1...n] - positional arguments
              args[n + 1] - named arguments
      */
          .call(
              swidFunctionType.normalParameterNames.isNotEmpty
                  ? swidFunctionType.normalParameterNames
                      .map((x) => ((Expression expression) => argumentBoxingProcedure == DartBoxingProcedure.unbox
                          ? CodeExpression(Code(DartUnboxingExpression(
                                  swidType: swidFunctionType.normalParameterTypes.elementAt(swidFunctionType.normalParameterNames.indexWhere((e) => e == x)),
                                  expression: expression)
                              .toDartSource()))
                          : CodeExpression(Code("")))(refer("args").index(literalNum(swidFunctionType.normalParameterNames.indexWhere((e) => e == x) + 1))))
                      .toList()
                      .cast<Expression>()
                  : [],
              Map.fromEntries([
                ...(emitTableBindingPrefix
                    ? [
                        MapEntry("table", refer("args").index(literalNum(0))),
                        MapEntry("hydroState", refer("hydroState"))
                      ]
                    : []),
                ...(swidFunctionType.namedParameterTypes.entries.map((x) =>
                    MapEntry(
                        x.key,
                        CodeExpression(Code(
                            argumentBoxingProcedure == DartBoxingProcedure.unbox
                                ? DartUnboxingExpression(
                                        swidType: x.value,
                                        expression: refer("args")
                                            .index(literalNum(swidFunctionType
                                                    .normalParameterNames
                                                    .length +
                                                1))
                                            .index(literalString(x.key)))
                                    .toDartSource()
                                : ""))))),
              ]..removeWhere((x) => x == null)))
      : refer(swidFunctionType.name));
}
