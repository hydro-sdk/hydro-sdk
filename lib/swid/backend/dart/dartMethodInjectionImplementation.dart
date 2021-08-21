import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, literalString, Block, Code;

import 'package:dart_style/dart_style.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBoxingProcedure.dart';
import 'package:hydro_sdk/swid/backend/dart/dartFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/backend/dart/dartUnpackClosures.dart';
import 'package:hydro_sdk/swid/backend/dart/util/luaDartBinding.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/transforms/methodInjectionFieldName.dart';
import 'package:hydro_sdk/swid/transforms/transformAccessorName.dart';

class DartMethodInjectionImplementation {
  final SwidFunctionType swidFunctionType;

  const DartMethodInjectionImplementation({
    required final this.swidFunctionType,
  });

  String? _methodInvocation() => (swidFunctionType.declarationModifiers.isGetter
      ? (!swidFunctionType.declarationModifiers.isAbstract ? "super." : "") +
          swidFunctionType.name +
          (!swidFunctionType.declarationModifiers.isGetter ? "()" : "")
      : DartFunctionSelfBindingInvocation(
              argumentBoxingProcedure: DartBoxingProcedure.unbox,
              returnValueBoxingProcedure: DartBoxingProcedure.box,
              useClosureUnpackNameForUnboxingIdentifiers: true,
              swidFunctionType: SwidFunctionType.clone(
                swidFunctionType: swidFunctionType,
                name: !swidFunctionType.declarationModifiers.isAbstract
                    ? "super.${swidFunctionType.name}"
                    : null,
              ),
              emitTableBindingPrefix: false)
          .toDartSource());

  Block _nonVoidBody() => Block.of([
        Code(
            "${DartUnpackClosures(swidFunctionType: swidFunctionType).toDartSource()} return [" +
                _methodInvocation()! +
                "];")
      ]);

  String toDartSource() => DartFormatter().formatStatement(refer("table")
      .index(literalString(methodInjectionFieldName(
          swidFunctionType:
              transformAccessorName(swidFunctionType: swidFunctionType))))
      .assign(luaDartBinding(
          code: swidFunctionType.returnType.when<Block?>(
        fromSwidInterface: (val) =>
            narrowSwidInterfaceByReferenceDeclaration<Block>(
          swidInterface: val,
          onPrimitive: (_) => _nonVoidBody(),
          onClass: (_) => _nonVoidBody(),
          onEnum: (_) => _nonVoidBody(),
          onTypeParameter: (_) => _nonVoidBody(),
          onDynamic: (_) => _nonVoidBody(),
          onUnknown: (_) => _nonVoidBody(),
          onVoid: (_) => Block.of([
            Code(DartUnpackClosures(swidFunctionType: swidFunctionType)
                    .toDartSource() +
                _methodInvocation()! +
                ";" +
                "\n" +
                "return [];")
          ]),
        ),
        fromSwidClass: (_) => null,
        fromSwidDefaultFormalParameter: (_) => null,
        fromSwidFunctionType: (_) => null,
      )))
      .statement
      .accept(DartEmitter(
        useNullSafetySyntax: true,
      ))
      .toString());
}
