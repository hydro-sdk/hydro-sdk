import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/covarianceTransformKind.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformFunctionTypeToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformPrimitiveNamesToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/util/makeDefaultInexpressibleFunctionInvocationFallback.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/util/makeDefaultStaticConstFieldReferenceScopeResolver.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/util/transformIllegalParameterNames.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/isPrimitiveMap.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/dart/removeNullabilitySuffixFromTypeNames.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'transformTypeDeclarationToTs.freezed.dart';

@freezed
class TransformTypeDeclarationToTs
    with
        _$TransformTypeDeclarationToTs,
        HashKeyMixin<TransformTypeDeclarationToTs>,
        HashComparableMixin<TransformTypeDeclarationToTs>,
        SwarsTransformMixin<
            TransformTypeDeclarationToTs,
            $TransformTypeDeclarationToTsCopyWith<TransformTypeDeclarationToTs>,
            String>,
        SwarsTermStringResultMixin {
  TransformTypeDeclarationToTs._();

  factory TransformTypeDeclarationToTs({
    required final SwidType swidType,
    required final SwidClass? parentClass,
    @Default(true) final bool emitTrailingReturnType,
    @Default(false) final bool emitDefaultFormalsAsOptionalNamed,
    @Default(false) final bool emitTopLevelInitializersForOptionalPositionals,
    @Default(TrailingReturnTypeKind.fatArrow)
        final TrailingReturnTypeKind topLevelTrailingReturnTypeKind,
    @Default(TrailingReturnTypeKind.fatArrow)
        final TrailingReturnTypeKind nestedTrailingReturnTypeKind,
    @Default(CovarianceTransformKind.kIgnore)
        final CovarianceTransformKind covarianceTransformKind,
  }) = _$TransformTypeDeclarationToTsCtor;

  @override
  String get cacheGroup => "transformTypeDeclarationToTs";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidType.hashKey.hashableParts;
    yield* parentClass?.hashKey.hashableParts ?? [];
    yield [
      ...emitTrailingReturnType.hashableParts,
    ];
    yield [
      ...emitDefaultFormalsAsOptionalNamed.hashableParts,
    ];
    yield [
      ...emitTopLevelInitializersForOptionalPositionals.hashableParts,
    ];
    yield [
      topLevelTrailingReturnTypeKind.index,
    ];
    yield [
      nestedTrailingReturnTypeKind.index,
    ];
    yield [
      covarianceTransformKind.index,
    ];
  }

  @override
  TransformTypeDeclarationToTs clone({
    final SwidType? swidType,
    final SwidClass? parentClass,
    final bool? emitTrailingReturnType,
    final bool? emitDefaultFormalsAsOptionalNamed,
    final bool? emitTopLevelInitializersForOptionalPositionals,
    final TrailingReturnTypeKind? topLevelTrailingReturnTypeKind,
    final TrailingReturnTypeKind? nestedTrailingReturnTypeKind,
    final CovarianceTransformKind? covarianceTransformKind,
  }) =>
      TransformTypeDeclarationToTs(
        swidType: swidType ?? this.swidType,
        parentClass: parentClass ?? this.parentClass,
        emitTrailingReturnType:
            emitTrailingReturnType ?? this.emitTrailingReturnType,
        emitDefaultFormalsAsOptionalNamed: emitDefaultFormalsAsOptionalNamed ??
            this.emitDefaultFormalsAsOptionalNamed,
        emitTopLevelInitializersForOptionalPositionals:
            emitTopLevelInitializersForOptionalPositionals ??
                this.emitTopLevelInitializersForOptionalPositionals,
        topLevelTrailingReturnTypeKind: topLevelTrailingReturnTypeKind ??
            this.topLevelTrailingReturnTypeKind,
        nestedTrailingReturnTypeKind:
            nestedTrailingReturnTypeKind ?? this.nestedTrailingReturnTypeKind,
        covarianceTransformKind:
            covarianceTransformKind ?? this.covarianceTransformKind,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        ((String transformedType) =>
            transformedType +
            (swidType.nullabilitySuffix == SwidNullabilitySuffix.question
                ? " | undefined"
                : ""))(
          !isPrimitiveMap(swidType: swidType)
              ? removeNullabilitySuffixFromTypeNames(
                  swidType: pipeline.reduceFromTerm(
                    TransformPrimitiveNamesToTs(
                      swidType: swidType,
                    ),
                  ),
                ).when(
                  fromSwidInterface: ((val) =>
                      narrowSwidInterfaceByReferenceDeclaration(
                        swidInterface: val,
                        onPrimitive: (val) => val.name,
                        onClass: (val) =>
                            removeTypeArguments(str: val.name) +
                            (val.typeArguments.isNotEmpty
                                ? "<" +
                                    val.typeArguments
                                        .map(
                                          (x) => pipeline.reduceFromTerm(
                                            TransformTypeDeclarationToTs(
                                              swidType: x.type,
                                              parentClass: parentClass,
                                              emitTrailingReturnType:
                                                  emitTrailingReturnType,
                                              emitDefaultFormalsAsOptionalNamed:
                                                  emitDefaultFormalsAsOptionalNamed,
                                              topLevelTrailingReturnTypeKind:
                                                  nestedTrailingReturnTypeKind,
                                              nestedTrailingReturnTypeKind:
                                                  nestedTrailingReturnTypeKind,
                                              covarianceTransformKind:
                                                  covarianceTransformKind,
                                            ),
                                          ),
                                        )
                                        .toList()
                                        .join(", ") +
                                    ">"
                                : ""),
                        onEnum: (val) => val.name,
                        onVoid: (val) => val.name,
                        onTypeParameter: (val) =>
                            removeTypeArguments(str: val.name) +
                            (val.typeArguments.isNotEmpty
                                ? "<" +
                                    val.typeArguments
                                        .map(
                                          (x) => pipeline.reduceFromTerm(
                                            TransformTypeDeclarationToTs(
                                              swidType: x.type,
                                              parentClass: parentClass,
                                              emitTrailingReturnType:
                                                  emitTrailingReturnType,
                                              emitDefaultFormalsAsOptionalNamed:
                                                  emitDefaultFormalsAsOptionalNamed,
                                              topLevelTrailingReturnTypeKind:
                                                  nestedTrailingReturnTypeKind,
                                              nestedTrailingReturnTypeKind:
                                                  nestedTrailingReturnTypeKind,
                                              covarianceTransformKind:
                                                  covarianceTransformKind,
                                            ),
                                          ),
                                        )
                                        .toList()
                                        .join(", ") +
                                    ">"
                                : ""),
                        onDynamic: (val) => "any",
                        onUnknown: (_) => "unknown",
                      )),
                  fromSwidClass: (_) => "",
                  fromSwidDefaultFormalParameter: (val) =>
                      !emitTopLevelInitializersForOptionalPositionals
                          ? val.staticType.name
                          : pipeline.reduceFromTerm(
                              TransformLiteralToTs(
                                swidLiteral: val.value,
                                parentClass: parentClass,
                                inexpressibleFunctionInvocationFallback:
                                    makeDefaultInexpressibleFunctionInvocationFallback(
                                  parentClass: parentClass,
                                  name: "",
                                ),
                                scopeResolver:
                                    makeDefaultStaticConstFieldReferenceScopeResolver(
                                  parentClass: parentClass,
                                ),
                              ),
                            ),
                  fromSwidFunctionType: (val) => pipeline.reduceFromTerm(
                    TransformFunctionTypeToTs(
                      swidFunctionType: transformIllegalParameterNames(
                        swidFunctionType: val,
                      ),
                      parentClass: parentClass,
                      emitInitializersForOptionalPositionals:
                          emitTopLevelInitializersForOptionalPositionals,
                      emitTrailingReturnType: emitTrailingReturnType,
                      emitDefaultFormalsAsOptionalNamed:
                          emitDefaultFormalsAsOptionalNamed,
                      trailingReturnTypeKind: topLevelTrailingReturnTypeKind,
                      covarianceTransformKind: covarianceTransformKind,
                    ),
                  ),
                )
              : (swidType.when(
                  fromSwidInterface: (val) =>
                      "{[index: " +
                      pipeline.reduceFromTerm(
                        TransformTypeDeclarationToTs(
                          parentClass: parentClass,
                          swidType: pipeline.reduceFromTerm(
                            TransformPrimitiveNamesToTs(
                              swidType: val.typeArguments.first.type,
                            ),
                          ),
                        ),
                      ) +
                      "]: " +
                      pipeline.reduceFromTerm(
                        TransformTypeDeclarationToTs(
                          parentClass: parentClass,
                          swidType: val.typeArguments.last.type,
                        ),
                      ) +
                      "}",
                  fromSwidClass: (_) => "",
                  fromSwidDefaultFormalParameter: (_) => "",
                  fromSwidFunctionType: (_) => "",
                )),
        ),
      );
}
