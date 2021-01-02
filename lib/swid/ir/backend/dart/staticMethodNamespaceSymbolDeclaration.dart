import 'package:code_builder/code_builder.dart'
    show
        refer,
        literalString,
        literalList,
        Code,
        CodeExpression,
        Block,
        DartEmitter;

import 'package:dart_style/dart_style.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/backend/dart/codeKind.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxingProcedure.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/luaDartBinding.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/castAllTypeParametersInFunctionToDynamic.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';

class StaticMethodNamespaceSymbolDeclaration {
  final SwidClass swidClass;
  final SwidFunctionType swidFunctionType;

  StaticMethodNamespaceSymbolDeclaration(
      {@required this.swidClass, @required this.swidFunctionType});

  Code toCode() => refer("table")
      .index(literalString(transformToCamelCase(str: swidClass.name) +
          transformToPascalCase(str: swidFunctionType.name)))
      .assign(luaDartBinding(
          code: Block.of([
        literalList([
          Code(DartBoxObjectReference(
                  codeKind: CodeKind.expression,
                  boxLists: true,
                  type: swidFunctionType.returnType.when(
                    fromSwidInterface: (val) => val,
                    fromSwidClass: (_) => null,
                    fromSwidDefaultFormalParameter: (_) => null,
                    fromSwidFunctionType: (_) => null,
                  ),
                  objectReference: CodeExpression(Code(
                      DartFunctionSelfBindingInvocation(
                              argumentBoxingProcedure:
                                  DartBoxingProcedure.unbox,
                              returnValueBoxingProcedure:
                                  DartBoxingProcedure.none,
                              emitTableBindingPrefix: false,
                              swidFunctionType: SwidFunctionType.clone(
                                  swidFunctionType:
                                      castAllTypeParametersInFunctionToDynamic(
                                    swidFunctionType: swidFunctionType,
                                    preserveTypeParametersInLists: true,
                                  ),
                                  name: [swidClass.name, swidFunctionType.name]
                                      .join(".")))
                          .toDartSource())))
              .toDartSource())
        ]).returned.statement
      ])))
      .statement;

  String toDartSource() =>
      DartFormatter().format(toCode().accept(DartEmitter()).toString());
}
