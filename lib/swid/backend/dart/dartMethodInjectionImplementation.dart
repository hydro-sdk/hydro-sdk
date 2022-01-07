import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, literalString, Block, Code;

import 'package:dart_style/dart_style.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBoxingProcedure.dart';
import 'package:hydro_sdk/swid/backend/dart/dartFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/backend/dart/dartUnpackClosures.dart';
import 'package:hydro_sdk/swid/backend/dart/util/luaDartBinding.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/methodInjectionFieldName.dart';
import 'package:hydro_sdk/swid/transforms/transformAccessorName.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'dartMethodInjectionImplementation.freezed.dart';

@freezed
class DartMethodInjectionImplementation
    with
        _$DartMethodInjectionImplementation,
        HashKeyMixin<DartMethodInjectionImplementation>,
        HashComparableMixin<DartMethodInjectionImplementation>,
        SwarsTransformMixin<
            DartMethodInjectionImplementation,
            $DartMethodInjectionImplementationCopyWith<
                DartMethodInjectionImplementation>,
            String>,
        SwarsTermStringResultMixin {
  DartMethodInjectionImplementation._();

  factory DartMethodInjectionImplementation({
    required final SwidFunctionType swidFunctionType,
  }) = _$DartMethodInjectionImplementationCtor;

  @override
  String get cacheGroup => "dartMethodInjectionImplementation";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidFunctionType.hashKey.hashableParts;
  }

  @override
  DartMethodInjectionImplementation clone({
    final SwidFunctionType? swidFunctionType,
  }) =>
      DartMethodInjectionImplementation(
        swidFunctionType: swidFunctionType ?? this.swidFunctionType.clone(),
      );

  String? _methodInvocation({
    required final ISwarsPipeline pipeline,
  }) =>
      (swidFunctionType.declarationModifiers.isGetter
          ? (!swidFunctionType.declarationModifiers.isAbstract
                  ? "super."
                  : "") +
              swidFunctionType.name +
              (!swidFunctionType.declarationModifiers.isGetter ? "()" : "")
          : pipeline.reduceFromTerm(
              DartFunctionSelfBindingInvocation(
                returnValueBoxingTableExpression: null,
                argumentBoxingProcedure: DartBoxingProcedure.unbox,
                returnValueBoxingProcedure: DartBoxingProcedure.box,
                useClosureUnpackNameForUnboxingIdentifiers: true,
                swidFunctionType: SwidFunctionType.clone(
                  swidFunctionType: swidFunctionType,
                  name: !swidFunctionType.declarationModifiers.isAbstract
                      ? "super.${swidFunctionType.name}"
                      : null,
                ),
                emitTableBindingPrefix: false,
              ),
            ));

  Block _nonVoidBody({
    required final ISwarsPipeline pipeline,
  }) =>
      Block.of([
        Code("${pipeline.reduceFromTerm(
              DartUnpackClosures(
                swidFunctionType: swidFunctionType,
              ),
            )} return [" +
            _methodInvocation(
              pipeline: pipeline,
            )! +
            "];")
      ]);

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        DartFormatter().formatStatement(
          refer("table")
              .index(literalString(methodInjectionFieldName(
                  swidFunctionType: transformAccessorName(
                      swidFunctionType: swidFunctionType))))
              .assign(luaDartBinding(
                  code: swidFunctionType.returnType.when<Block?>(
                fromSwidInterface: (val) =>
                    narrowSwidInterfaceByReferenceDeclaration<Block>(
                  swidInterface: val,
                  onPrimitive: (_) => _nonVoidBody(
                    pipeline: pipeline,
                  ),
                  onClass: (_) => _nonVoidBody(
                    pipeline: pipeline,
                  ),
                  onEnum: (_) => _nonVoidBody(
                    pipeline: pipeline,
                  ),
                  onTypeParameter: (_) => _nonVoidBody(
                    pipeline: pipeline,
                  ),
                  onDynamic: (_) => _nonVoidBody(
                    pipeline: pipeline,
                  ),
                  onUnknown: (_) => _nonVoidBody(
                    pipeline: pipeline,
                  ),
                  onVoid: (_) => Block.of([
                    Code(pipeline.reduceFromTerm(
                          DartUnpackClosures(
                            swidFunctionType: swidFunctionType,
                          ),
                        ) +
                        _methodInvocation(
                          pipeline: pipeline,
                        )! +
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
              .toString(),
        ),
      );
}
