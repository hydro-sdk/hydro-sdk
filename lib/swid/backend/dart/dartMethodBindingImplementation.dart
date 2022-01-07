import 'package:code_builder/code_builder.dart' show DartEmitter, refer;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBoxingExpression.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBoxingProcedure.dart';
import 'package:hydro_sdk/swid/backend/dart/dartFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/backend/dart/dartUnpackClosures.dart';
import 'package:hydro_sdk/swid/backend/dart/util/unpackedReturnValueName.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateAllGenericsAsDynamic.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'dartMethodBindingImplementation.freezed.dart';

@freezed
class DartMethodBindingImplementation
    with
        _$DartMethodBindingImplementation,
        HashKeyMixin<DartMethodBindingImplementation>,
        HashComparableMixin<DartMethodBindingImplementation>,
        SwarsTransformMixin<
            DartMethodBindingImplementation,
            $DartMethodBindingImplementationCopyWith<
                DartMethodBindingImplementation>,
            String>,
        SwarsTermStringResultMixin {
  DartMethodBindingImplementation._();

  factory DartMethodBindingImplementation({
    required final SwidFunctionType swidFunctionType,
  }) = _$DartMethodBindingImplementationCtor;

  @override
  String get cacheGroup => "dartMethodBindingImplementation";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidFunctionType.hashKey.hashableParts;
  }

  @override
  DartMethodBindingImplementation clone({
    final SwidFunctionType? swidFunctionType,
  }) =>
      DartMethodBindingImplementation(
        swidFunctionType: swidFunctionType ?? this.swidFunctionType.clone(),
      );

  String _methodInvocation({
    required final ISwarsPipeline pipeline,
  }) =>
      pipeline.reduceFromTerm(
        DartFunctionSelfBindingInvocation(
          returnValueBoxingTableExpression: null,
          useClosureUnpackNameForUnboxingIdentifiers: true,
          argumentBoxingProcedure: DartBoxingProcedure.unbox,
          returnValueBoxingProcedure: DartBoxingProcedure.box,
          swidFunctionType: pipeline
              .reduceFromTerm(
                InstantiateAllGenericsAsDynamic(
                  swidType: SwidType.fromSwidFunctionType(
                    swidFunctionType: swidFunctionType,
                  ),
                ),
              )
              .when(
                fromSwidInterface: (_) => dartUnknownFunction,
                fromSwidClass: (_) => dartUnknownFunction,
                fromSwidDefaultFormalParameter: (_) => dartUnknownFunction,
                fromSwidFunctionType: (val) => val,
              ),
          emitTableBindingPrefix: false,
        ),
      );

  String _nonNullableBody({
    required final ISwarsPipeline pipeline,
  }) =>
      [
        pipeline.reduceFromTerm(
          DartUnpackClosures(
            swidFunctionType: swidFunctionType,
          ),
        ),
        "return [",
        pipeline.reduceFromTerm(
          DartFunctionSelfBindingInvocation(
            returnValueBoxingTableExpression: null,
            useClosureUnpackNameForUnboxingIdentifiers: true,
            argumentBoxingProcedure: DartBoxingProcedure.unbox,
            returnValueBoxingProcedure: DartBoxingProcedure.box,
            swidFunctionType: pipeline
                .reduceFromTerm(
                  InstantiateAllGenericsAsDynamic(
                    swidType: SwidType.fromSwidFunctionType(
                      swidFunctionType: swidFunctionType,
                    ),
                  ),
                )
                .when(
                  fromSwidInterface: (_) => dartUnknownFunction,
                  fromSwidClass: (_) => dartUnknownFunction,
                  fromSwidDefaultFormalParameter: (_) => dartUnknownFunction,
                  fromSwidFunctionType: (val) => val,
                ),
            emitTableBindingPrefix: false,
          ),
        ),
        ",];",
      ].join("");

  String _nullableBody({
    required final ISwarsPipeline pipeline,
  }) =>
      [
        pipeline.reduceFromTerm(
          DartUnpackClosures(
            swidFunctionType: swidFunctionType,
          ),
        ),
        refer(
          pipeline.reduceFromTerm(
            DartFunctionSelfBindingInvocation(
              returnValueBoxingTableExpression: null,
              useClosureUnpackNameForUnboxingIdentifiers: true,
              argumentBoxingProcedure: DartBoxingProcedure.unbox,
              returnValueBoxingProcedure: DartBoxingProcedure.none,
              swidFunctionType: pipeline
                  .reduceFromTerm(
                    InstantiateAllGenericsAsDynamic(
                      swidType: SwidType.fromSwidFunctionType(
                        swidFunctionType: swidFunctionType,
                      ),
                    ),
                  )
                  .when(
                    fromSwidInterface: (_) => dartUnknownFunction,
                    fromSwidClass: (_) => dartUnknownFunction,
                    fromSwidDefaultFormalParameter: (_) => dartUnknownFunction,
                    fromSwidFunctionType: (val) => val,
                  ),
              emitTableBindingPrefix: false,
            ),
          ),
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
        pipeline.reduceFromTerm(
          DartBoxingExpression(
            swidType: swidFunctionType.returnType,
            expression: refer(unpackedReturnValueName()),
          ),
        ),
        ",];",
        "}",
        "return [];"
      ].join("");

  String _nonVoidBody({
    required final SwidType swidType,
    required final ISwarsPipeline pipeline,
  }) =>
      swidType.nullabilitySuffix == SwidNullabilitySuffix.none
          ? _nonNullableBody(
              pipeline: pipeline,
            )
          : _nullableBody(
              pipeline: pipeline,
            );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        swidFunctionType.returnType.when<String?>(
              fromSwidInterface: (val) =>
                  narrowSwidInterfaceByReferenceDeclaration<String>(
                swidInterface: val,
                onPrimitive: (val) => _nonVoidBody(
                  pipeline: pipeline,
                  swidType: SwidType.fromSwidInterface(
                    swidInterface: val,
                  ),
                ),
                onClass: (val) => _nonVoidBody(
                  pipeline: pipeline,
                  swidType: SwidType.fromSwidInterface(
                    swidInterface: val,
                  ),
                ),
                onEnum: (val) => _nonVoidBody(
                  pipeline: pipeline,
                  swidType: SwidType.fromSwidInterface(
                    swidInterface: val,
                  ),
                ),
                onTypeParameter: (val) => _nonVoidBody(
                  pipeline: pipeline,
                  swidType: SwidType.fromSwidInterface(
                    swidInterface: val,
                  ),
                ),
                onDynamic: (val) => _nonVoidBody(
                  pipeline: pipeline,
                  swidType: SwidType.fromSwidInterface(
                    swidInterface: val,
                  ),
                ),
                onUnknown: (val) => _nonVoidBody(
                  pipeline: pipeline,
                  swidType: SwidType.fromSwidInterface(
                    swidInterface: val,
                  ),
                ),
                onVoid: (val) =>
                    pipeline.reduceFromTerm(
                      DartUnpackClosures(
                        swidFunctionType: pipeline
                            .reduceFromTerm(
                              InstantiateAllGenericsAsDynamic(
                                swidType: SwidType.fromSwidFunctionType(
                                  swidFunctionType: swidFunctionType,
                                ),
                              ),
                            )
                            .when(
                              fromSwidInterface: (_) => dartUnknownFunction,
                              fromSwidClass: (_) => dartUnknownFunction,
                              fromSwidDefaultFormalParameter: (_) =>
                                  dartUnknownFunction,
                              fromSwidFunctionType: (val) => val,
                            ),
                      ),
                    ) +
                    _methodInvocation(
                      pipeline: pipeline,
                    ) +
                    ";" +
                    "\n" +
                    "return [];",
              ),
              fromSwidClass: (_) => null,
              fromSwidDefaultFormalParameter: (_) => null,
              fromSwidFunctionType: (val) => _nonVoidBody(
                pipeline: pipeline,
                swidType: SwidType.fromSwidFunctionType(
                  swidFunctionType: val,
                ),
              ),
            ) ??
            "",
      );
}
