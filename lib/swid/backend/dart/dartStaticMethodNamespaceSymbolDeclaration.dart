import 'package:code_builder/code_builder.dart'
    show
        refer,
        literalString,
        literalList,
        Code,
        CodeExpression,
        Block,
        DartEmitter;



import 'package:hydro_sdk/swid/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBoxingProcedure.dart';
import 'package:hydro_sdk/swid/backend/dart/dartFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/backend/dart/dartUnpackClosures.dart';
import 'package:hydro_sdk/swid/backend/dart/util/codeKind.dart';
import 'package:hydro_sdk/swid/backend/dart/util/luaDartBinding.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';

class DartStaticMethodNamespaceSymbolDeclaration {
  final SwidClass swidClass;
  final SwidFunctionType swidFunctionType;

  const DartStaticMethodNamespaceSymbolDeclaration(
      {required this.swidClass, required this.swidFunctionType,});

  Code _body() => Code(DartBoxObjectReference(
          codeKind: CodeKind.expression,
          boxLists: true,
          type: swidFunctionType.returnType.when(
            fromSwidInterface: (val) => val,
            fromSwidClass: (_) => dartUnknownInterface,
            fromSwidDefaultFormalParameter: (_) => dartUnknownInterface,
            fromSwidFunctionType: (_) => dartUnknownInterface,
          ),
          objectReference: CodeExpression(Code(
              DartFunctionSelfBindingInvocation(
                      argumentBoxingProcedure: DartBoxingProcedure.unbox,
                      returnValueBoxingProcedure: DartBoxingProcedure.none,
                      emitTableBindingPrefix: false,
                      swidFunctionType: SwidFunctionType.clone(
                          swidFunctionType: swidFunctionType,
                          name: [swidClass.name, swidFunctionType.name,]
                              .join("."),),)
                  .toDartSource(),),),)
      .toDartSource());

  Code _nonVoidBody() => literalList([_body(),]).returned.statement;

  Code toCode() => refer("table")
      .index(literalString(transformToCamelCase(str: swidClass.name) +
          transformToPascalCase(str: swidFunctionType.name),),)
      .assign(luaDartBinding(
          code: Block.of([
        Code(DartUnpackClosures(swidFunctionType: swidFunctionType)
            .toDartSource()),
        swidFunctionType.returnType.when<Code>(
          fromSwidInterface: (val) =>
              narrowSwidInterfaceByReferenceDeclaration<Code>(
            swidInterface: val,
            onPrimitive: (_) => _nonVoidBody(),
            onClass: (_) => _nonVoidBody(),
            onEnum: (_) => _nonVoidBody(),
            onVoid: (_) =>
                Code(_body().accept(DartEmitter()).toString() + ";return[];"),
            onTypeParameter: (_) => _nonVoidBody(),
            onDynamic: (_) => _nonVoidBody(),
            onUnknown:  (_) => _nonVoidBody(),
          ),
          fromSwidClass: (_) => _nonVoidBody(),
          fromSwidDefaultFormalParameter: (_) => _nonVoidBody(),
          fromSwidFunctionType: (_) => _nonVoidBody(),
        ),
      ],),),)
      .statement;

  String toDartSource() => toCode().accept(DartEmitter()).toString();
}
