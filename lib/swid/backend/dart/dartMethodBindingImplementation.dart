import 'package:code_builder/code_builder.dart' show DartEmitter, refer;

import 'package:hydro_sdk/swid/backend/dart/dartBoxingExpression.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBoxingProcedure.dart';
import 'package:hydro_sdk/swid/backend/dart/dartFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/backend/dart/dartUnpackClosures.dart';
import 'package:hydro_sdk/swid/backend/dart/util/unpackedReturnValueName.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/instantiateAllGenericsAsDynamic.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';

class DartMethodBindingImplementation {
  final SwidFunctionType swidFunctionType;

  const DartMethodBindingImplementation({
    required this.swidFunctionType,
  });

  String _methodInvocation() => DartFunctionSelfBindingInvocation(
        useClosureUnpackNameForUnboxingIdentifiers: true,
        argumentBoxingProcedure: DartBoxingProcedure.unbox,
        returnValueBoxingProcedure: DartBoxingProcedure.box,
        swidFunctionType: instantiateAllGenericsAsDynamic(
          swidType: SwidType.fromSwidFunctionType(
            swidFunctionType: swidFunctionType,
          ),
        ).when(
          fromSwidInterface: (_) => dartUnknownFunction,
          fromSwidClass: (_) => dartUnknownFunction,
          fromSwidDefaultFormalParameter: (_) => dartUnknownFunction,
          fromSwidFunctionType: (val) => val,
        ),
        emitTableBindingPrefix: false,
      ).toDartSource();

  String _nonNullableBody() => [
        DartUnpackClosures(swidFunctionType: swidFunctionType).toDartSource(),
        "return [",
        DartFunctionSelfBindingInvocation(
          useClosureUnpackNameForUnboxingIdentifiers: true,
          argumentBoxingProcedure: DartBoxingProcedure.unbox,
          returnValueBoxingProcedure: DartBoxingProcedure.box,
          swidFunctionType: instantiateAllGenericsAsDynamic(
            swidType: SwidType.fromSwidFunctionType(
              swidFunctionType: swidFunctionType,
            ),
          ).when(
            fromSwidInterface: (_) => dartUnknownFunction,
            fromSwidClass: (_) => dartUnknownFunction,
            fromSwidDefaultFormalParameter: (_) => dartUnknownFunction,
            fromSwidFunctionType: (val) => val,
          ),
          emitTableBindingPrefix: false,
        ).toDartSource(),
        ",];",
      ].join("");

  String _nullableBody() => [
        DartUnpackClosures(swidFunctionType: swidFunctionType).toDartSource(),
        refer(
          DartFunctionSelfBindingInvocation(
            useClosureUnpackNameForUnboxingIdentifiers: true,
            argumentBoxingProcedure: DartBoxingProcedure.unbox,
            returnValueBoxingProcedure: DartBoxingProcedure.none,
            swidFunctionType: instantiateAllGenericsAsDynamic(
              swidType: SwidType.fromSwidFunctionType(
                swidFunctionType: swidFunctionType,
              ),
            ).when(
              fromSwidInterface: (_) => dartUnknownFunction,
              fromSwidClass: (_) => dartUnknownFunction,
              fromSwidDefaultFormalParameter: (_) => dartUnknownFunction,
              fromSwidFunctionType: (val) => val,
            ),
            emitTableBindingPrefix: false,
          ).toDartSource(),
        )
            .assignFinal(
              unpackedReturnValueName(),
            )
            .statement
            .accept(
              DartEmitter(
                useNullSafetySyntax: true,
              ),
            ),
        "if(",
        unpackedReturnValueName(),
        "!= null){",
        "return [",
        DartBoxingExpression(
          swidType: swidFunctionType.returnType,
          expression: refer(unpackedReturnValueName()),
        ).toDartSource(),
        ",];",
        "}",
        "return [];"
      ].join("");

  String _nonVoidBody({
    required SwidType swidType,
  }) =>
      swidType.nullabilitySuffix == SwidNullabilitySuffix.none
          ? _nonNullableBody()
          : _nullableBody();

  String toDartSource() =>
      swidFunctionType.returnType.when<String?>(
        fromSwidInterface: (val) =>
            narrowSwidInterfaceByReferenceDeclaration<String>(
          swidInterface: val,
          onPrimitive: (val) => _nonVoidBody(
            swidType: SwidType.fromSwidInterface(
              swidInterface: val,
            ),
          ),
          onClass: (val) => _nonVoidBody(
            swidType: SwidType.fromSwidInterface(
              swidInterface: val,
            ),
          ),
          onEnum: (val) => _nonVoidBody(
            swidType: SwidType.fromSwidInterface(
              swidInterface: val,
            ),
          ),
          onTypeParameter: (val) => _nonVoidBody(
            swidType: SwidType.fromSwidInterface(
              swidInterface: val,
            ),
          ),
          onDynamic: (val) => _nonVoidBody(
            swidType: SwidType.fromSwidInterface(
              swidInterface: val,
            ),
          ),
          onUnknown: (val) => _nonVoidBody(
            swidType: SwidType.fromSwidInterface(
              swidInterface: val,
            ),
          ),
          onVoid: (val) =>
              DartUnpackClosures(
                swidFunctionType: instantiateAllGenericsAsDynamic(
                  swidType: SwidType.fromSwidFunctionType(
                      swidFunctionType: swidFunctionType),
                ).when(
                  fromSwidInterface: (_) => dartUnknownFunction,
                  fromSwidClass: (_) => dartUnknownFunction,
                  fromSwidDefaultFormalParameter: (_) => dartUnknownFunction,
                  fromSwidFunctionType: (val) => val,
                ),
              ).toDartSource() +
              _methodInvocation() +
              ";" +
              "\n" +
              "return [];",
        ),
        fromSwidClass: (_) => null,
        fromSwidDefaultFormalParameter: (_) => null,
        fromSwidFunctionType: (val) => _nonVoidBody(
          swidType: SwidType.fromSwidFunctionType(
            swidFunctionType: val,
          ),
        ),
      ) ??
      "";
}
