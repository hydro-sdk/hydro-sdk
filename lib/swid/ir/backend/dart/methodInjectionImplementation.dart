import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, literalString, Block, Code;
import 'package:dart_style/dart_style.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxingProcedure.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/luaDartBinding.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/transforms/methodInjectionFieldName.dart';
import 'package:meta/meta.dart';

class MethodInjectionImplementation {
  final SwidFunctionType swidFunctionType;

  MethodInjectionImplementation({@required this.swidFunctionType});

  String _methodInvocation() =>
      (swidFunctionType.swidDeclarationModifiers.isGetter
          ? (!swidFunctionType.swidDeclarationModifiers.isAbstract
                  ? "super."
                  : "") +
              swidFunctionType.name +
              (!swidFunctionType.swidDeclarationModifiers.isGetter ? "()" : "")
          : DartFunctionSelfBindingInvocation(
                  argumentBoxingProcedure: DartBoxingProcedure.unbox,
                  returnValueBoxingProcedure: DartBoxingProcedure.box,
                  swidFunctionType: SwidFunctionType.clone(
                    swidFunctionType: swidFunctionType,
                    name: !swidFunctionType.swidDeclarationModifiers.isAbstract
                        ? "super.${swidFunctionType.name}"
                        : null,
                  ),
                  emitTableBindingPrefix: false)
              .toDartSource());

  Block _nonVoidBody() =>
      Block.of([Code("return [" + _methodInvocation() + "];")]);

  String toDartSource() => DartFormatter().formatStatement(refer("table")
      .index(literalString(
          methodInjectionFieldName(swidFunctionType: swidFunctionType)))
      .assign(luaDartBinding(
          code: swidFunctionType.returnType.when<Block>(
        fromSwidInterface: (val) =>
            narrowSwidInterfaceByReferenceDeclaration<Block>(
          swidInterface: val,
          onPrimitive: (_) => _nonVoidBody(),
          onClass: (_) => _nonVoidBody(),
          onEnum: (_) => _nonVoidBody(),
          onVoid: (_) =>
              Block.of([Code(_methodInvocation() + ";" + "\n" + "return [];")]),
        ),
        fromSwidClass: (_) => null,
        fromSwidDefaultFormalParameter: (_) => null,
        fromSwidFunctionType: (_) => null,
      )))
      .statement
      .accept(DartEmitter())
      .toString());
}
