import 'package:freezed_annotation/freezed_annotation.dart';

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
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveNamesToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/util/makeDefaultInexpressibleFunctionInvocationFallback.dart';
import 'package:hydro_sdk/swid/transforms/ts/util/makeDefaultStaticConstFieldReferenceScopeResolver.dart';
import 'package:hydro_sdk/swid/transforms/ts/util/transformIllegalParameterNames.dart';
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
  }) = _$TransformTypeDeclarationToTsCtor;

  @override
  String get cacheGroup => "transformTypeDeclarationToTs";

  @override
  List<int> get hashableParts => [
        ...swidType.hashableParts,
        ...?parentClass?.hashableParts,
        ...emitTrailingReturnType.hashableParts,
        ...emitDefaultFormalsAsOptionalNamed.hashableParts,
        ...emitTopLevelInitializersForOptionalPositionals.hashableParts,
        topLevelTrailingReturnTypeKind.index,
        nestedTrailingReturnTypeKind.index,
      ];

  @override
  TransformTypeDeclarationToTs clone({
    final SwidType? swidType,
    final SwidClass? parentClass,
    final bool? emitTrailingReturnType,
    final bool? emitDefaultFormalsAsOptionalNamed,
    final bool? emitTopLevelInitializersForOptionalPositionals,
    final TrailingReturnTypeKind? topLevelTrailingReturnTypeKind,
    final TrailingReturnTypeKind? nestedTrailingReturnTypeKind,
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
                                              swidType: x,
                                              parentClass: parentClass,
                                              emitTrailingReturnType:
                                                  emitTrailingReturnType,
                                              emitDefaultFormalsAsOptionalNamed:
                                                  emitDefaultFormalsAsOptionalNamed,
                                              topLevelTrailingReturnTypeKind:
                                                  nestedTrailingReturnTypeKind,
                                              nestedTrailingReturnTypeKind:
                                                  nestedTrailingReturnTypeKind,
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
                                              swidType: x,
                                              parentClass: parentClass,
                                              emitTrailingReturnType:
                                                  emitTrailingReturnType,
                                              emitDefaultFormalsAsOptionalNamed:
                                                  emitDefaultFormalsAsOptionalNamed,
                                              topLevelTrailingReturnTypeKind:
                                                  nestedTrailingReturnTypeKind,
                                              nestedTrailingReturnTypeKind:
                                                  nestedTrailingReturnTypeKind,
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
                              swidType: val.typeArguments.first,
                            ),
                          ),
                        ),
                      ) +
                      "]: " +
                      pipeline.reduceFromTerm(
                        TransformTypeDeclarationToTs(
                          parentClass: parentClass,
                          swidType: val.typeArguments.last,
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
