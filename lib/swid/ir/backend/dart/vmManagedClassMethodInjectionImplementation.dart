import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, literalString, Block, Code, literalNum;

import 'package:dart_style/dart_style.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxingProcedure.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/luaDartBinding.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';

class VMManagedClassMethodInjectionImplementation {
  final SwidFunctionType swidFunctionType;
  final String tableKey;

  VMManagedClassMethodInjectionImplementation({
    @required this.swidFunctionType,
    @required this.tableKey,
  });

  String _methodInvocation() => DartFunctionSelfBindingInvocation(
          argumentBoxingProcedure: DartBoxingProcedure.unbox,
          returnValueBoxingProcedure: DartBoxingProcedure.box,
          swidFunctionType: swidFunctionType,
          emitTableBindingPrefix: false)
      .toDartSource();

  String _unpackClosures() => ([
        ...swidFunctionType.normalParameterNames
            .map(
              (x) => (({
                String parameterName,
                SwidType parameterType,
              }) =>
                  parameterType.when(
                    fromSwidInterface: (_) => "",
                    fromSwidClass: (_) => "",
                    fromSwidDefaultFormalParameter: (_) => "",
                    fromSwidFunctionType: (val) => ([
                      "Closure ",
                      parameterName,
                      "=",
                      refer("args")
                          .index(literalNum(swidFunctionType
                                  .normalParameterNames
                                  .indexWhere((e) => e == x) +
                              1))
                          .statement
                          .accept(DartEmitter())
                          .toString(),
                    ]..removeWhere((x) => x == null))
                        .join(""),
                  ))(
                parameterName: x,
                parameterType: swidFunctionType.normalParameterTypes.elementAt(
                  swidFunctionType.normalParameterNames
                      .indexWhere((e) => e == x),
                ),
              ),
            )
            .toList(),
        ...swidFunctionType.namedParameterTypes.entries
            .map(
              (x) => (({
                String parameterName,
                SwidType parameterType,
              }) =>
                  parameterType.when(
                    fromSwidInterface: (_) => "",
                    fromSwidClass: (_) => "",
                    fromSwidDefaultFormalParameter: (_) => "",
                    fromSwidFunctionType: (val) => ([
                      "Closure ",
                      parameterName,
                      "=",
                      refer("args")
                          .index(literalNum(
                              swidFunctionType.normalParameterNames.length + 1))
                          .index(literalString(parameterName))
                          .statement
                          .accept(DartEmitter())
                          .toString(),
                    ]..removeWhere((x) => x == null))
                        .join(""),
                  ))(
                parameterName: x.key,
                parameterType: x.value,
              ),
            )
            .toList()
      ]..removeWhere((x) => x == null))
          .join("\n");

  Block _nonVoidBody() => Block.of(
      [Code("${_unpackClosures()}  return [" + _methodInvocation() + "];")]);

  String toDartSource() => DartFormatter().formatStatement(refer("table")
      .index(literalString(tableKey))
      .assign(luaDartBinding(
          code: swidFunctionType.returnType.when<Block>(
        fromSwidInterface: (val) =>
            narrowSwidInterfaceByReferenceDeclaration<Block>(
          swidInterface: val,
          onPrimitive: (_) => _nonVoidBody(),
          onClass: (_) => _nonVoidBody(),
          onEnum: (_) => _nonVoidBody(),
          onTypeParameter: (_) => _nonVoidBody(),
          onVoid: (_) => Block.of([
            Code(_unpackClosures() +
                _methodInvocation() +
                ";" +
                "\n" +
                "return [];")
          ]),
        ),
        fromSwidClass: (_) => null,
        fromSwidDefaultFormalParameter: (_) => null,
        fromSwidFunctionType: (_) => Block.of([Code("bar")]),
      )))
      .statement
      .accept(DartEmitter())
      .toString());
}
