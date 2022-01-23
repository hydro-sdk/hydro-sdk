import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/analyses/tsClassMethodInjectionCandidates.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/covarianceTransformKind.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformFunctionTypeToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassMethodInjectionFieldName.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferencesInFunction.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsClassMethodInjectionFieldDeclarations.freezed.dart';

@freezed
class TsClassMethodInjectionFieldDeclarations
    with
        _$TsClassMethodInjectionFieldDeclarations,
        HashKeyMixin<TsClassMethodInjectionFieldDeclarations>,
        HashComparableMixin<TsClassMethodInjectionFieldDeclarations>,
        SwarsTransformMixin<
            TsClassMethodInjectionFieldDeclarations,
            $TsClassMethodInjectionFieldDeclarationsCopyWith<
                TsClassMethodInjectionFieldDeclarations>,
            String>,
        SwarsTermStringResultMixin {
  TsClassMethodInjectionFieldDeclarations._();

  factory TsClassMethodInjectionFieldDeclarations({
    required final SwidClass swidClass,
  }) = _$TsClassMethodInjectionFieldDeclarationsCtor;

  @override
  String get cacheGroup => "tsClassMethodInjectionFieldDeclarations";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  TsClassMethodInjectionFieldDeclarations clone({
    final SwidClass? swidClass,
  }) =>
      TsClassMethodInjectionFieldDeclarations(
        swidClass: swidClass ?? this.swidClass,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        (swidClass.methods.isNotEmpty)
            ? [
                  ...pipeline
                      .reduceFromTerm(
                        TsClassMethodInjectionCandidates(
                          swidFunctionTypes: swidClass.methods,
                        ),
                      )
                      .map((x) =>
                          "    private readonly " +
                          pipeline.reduceFromTerm(
                            TsClassMethodInjectionFieldName(
                              swidFunctionType:
                                  rewriteClassReferencesToInterfaceReferencesInFunction(
                                swidFunctionType: x,
                              ),
                            ),
                          ) +
                          ": " +
                          pipeline.reduceFromTerm(
                            TransformFunctionTypeToTs(
                              parentClass: swidClass,
                              swidFunctionType:
                                  rewriteClassReferencesToInterfaceReferencesInFunction(
                                swidFunctionType: x,
                              ),
                              trailingReturnTypeKind:
                                  TrailingReturnTypeKind.fatArrow,
                              covarianceTransformKind:
                                  CovarianceTransformKind.kAny,
                            ),
                          ) +
                          " = undefined as any;")
                      .toList()
                ].join("\n") +
                "\n"
            : "",
      );
}
