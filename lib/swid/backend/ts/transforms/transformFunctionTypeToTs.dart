import 'package:collection/collection.dart' show IterableExtension;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/covarianceTransformKind.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformCovariantTypesInFunction.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformReturnTypeToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformTypeDeclarationToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformTypeFormalsToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/util/makeDefaultInexpressibleFunctionInvocationFallback.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/util/makeDefaultStaticConstFieldReferenceScopeResolver.dart';
import 'package:hydro_sdk/swid/ir/analyses/isInexpressibleStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/cloneSwidType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'transformFunctionTypeToTs.freezed.dart';

@freezed
class TransformFunctionTypeToTs
    with
        _$TransformFunctionTypeToTs,
        HashKeyMixin<TransformFunctionTypeToTs>,
        HashComparableMixin<TransformFunctionTypeToTs>,
        SwarsTransformMixin<
            TransformFunctionTypeToTs,
            $TransformFunctionTypeToTsCopyWith<TransformFunctionTypeToTs>,
            String>,
        SwarsTermStringResultMixin {
  TransformFunctionTypeToTs._();

  factory TransformFunctionTypeToTs({
    required final SwidFunctionType swidFunctionType,
    final SwidClass? parentClass,
    required final TrailingReturnTypeKind trailingReturnTypeKind,
    @Default(TrailingReturnTypeKind.fatArrow)
        final TrailingReturnTypeKind nestedTrailingReturnTypeKind,
    @Default(CovarianceTransformKind.kIgnore)
        final CovarianceTransformKind covarianceTransformKind,
    @Default(true) final bool emitTrailingReturnType,
    @Default(false) final bool emitDefaultFormalsAsOptionalNamed,
    @Default(false) final bool emitInitializersForOptionalPositionals,
  }) = _$TransformFunctionTypeToTsCtor;

  @override
  String get cacheGroup => "transformFunctionTypeToTs";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidFunctionType.hashKey.hashableParts;
    yield* parentClass?.hashKey.hashableParts ?? [];
    yield [
      trailingReturnTypeKind.index,
    ];
    yield [
      nestedTrailingReturnTypeKind.index,
    ];
    yield [
      covarianceTransformKind.index,
    ];
    yield [
      ...emitTrailingReturnType.hashableParts,
    ];
    yield [
      ...emitDefaultFormalsAsOptionalNamed.hashableParts,
    ];
    yield [
      ...emitInitializersForOptionalPositionals.hashableParts,
    ];
  }

  @override
  TransformFunctionTypeToTs clone({
    final SwidFunctionType? swidFunctionType,
    final SwidClass? parentClass,
    final TrailingReturnTypeKind? trailingReturnTypeKind,
    final TrailingReturnTypeKind? nestedTrailingReturnTypeKind,
    final CovarianceTransformKind? covarianceTransformKind,
    final bool? emitTrailingReturnType,
    final bool? emitDefaultFormalsAsOptionalNamed,
    final bool? emitInitializersForOptionalPositionals,
  }) =>
      TransformFunctionTypeToTs(
        swidFunctionType: swidFunctionType ?? this.swidFunctionType,
        parentClass: parentClass ?? this.parentClass,
        trailingReturnTypeKind:
            trailingReturnTypeKind ?? this.trailingReturnTypeKind,
        nestedTrailingReturnTypeKind:
            nestedTrailingReturnTypeKind ?? this.nestedTrailingReturnTypeKind,
        covarianceTransformKind:
            covarianceTransformKind ?? this.covarianceTransformKind,
        emitTrailingReturnType:
            emitTrailingReturnType ?? this.emitTrailingReturnType,
        emitDefaultFormalsAsOptionalNamed: emitDefaultFormalsAsOptionalNamed ??
            this.emitDefaultFormalsAsOptionalNamed,
        emitInitializersForOptionalPositionals:
            emitInitializersForOptionalPositionals ??
                this.emitInitializersForOptionalPositionals,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) {
    return (({
      required final SwidFunctionType swidFunctionType,
    }) {
      var res = pipeline.reduceFromTerm(
            TransformTypeFormalsToTs(
              swidTypeFormals: swidFunctionType.typeFormals,
            ),
          ) +
          "(";

      Map<String, SwidType?> normalTypes = {};
      for (var i = 0; i != swidFunctionType.normalParameterNames.length; ++i) {
        normalTypes[swidFunctionType.normalParameterNames[i]] =
            swidFunctionType.normalParameterTypes[i];
      }

      //Pretend that Dart optional params are just like regular positionals except also nullable
      for (var i = 0;
          i != swidFunctionType.optionalParameterNames.length;
          ++i) {
        normalTypes.addEntries([
          MapEntry(
              swidFunctionType.optionalParameterNames[i],
              cloneSwidType(
                  swidType: swidFunctionType.optionalParameterTypes[i]))
        ]);
      }

      var shouldEmitPositionalAsOptional = ({required final String argName}) =>
          normalTypes.entries
                  .takeWhile((x) =>
                      x.value!.nullabilitySuffix ==
                      SwidNullabilitySuffix.question)
                  .toList()
                  .length ==
              normalTypes.entries.length ||
          (normalTypes.entries
                  .toList()
                  .reversed
                  .toList()
                  .takeWhile((x) =>
                      x.value!.nullabilitySuffix ==
                      SwidNullabilitySuffix.question)
                  .toList()
                  .firstWhereOrNull((x) => x.key == argName) !=
              null);

      int normalAnonymousTypesSeen = 0;
      normalTypes.forEach((key, value) {
        value!.when(
          fromSwidClass: (_) => null,
          fromSwidFunctionType: (val) {
            if (key.trim().isNotEmpty) {
              res += "$key";
            } else {
              normalAnonymousTypesSeen++;
              res += "_";
              res += List.generate(normalAnonymousTypesSeen, (index) => "_")
                  .join("");
            }
            if (shouldEmitPositionalAsOptional(argName: key)) {
              res +=
                  "${val.nullabilitySuffix == SwidNullabilitySuffix.question ? "?" : ""}";
            }

            res += " : ";
            res += pipeline.reduceFromTerm(
              TransformFunctionTypeToTs(
                parentClass: parentClass,
                swidFunctionType: val,
                trailingReturnTypeKind: nestedTrailingReturnTypeKind,
                nestedTrailingReturnTypeKind: nestedTrailingReturnTypeKind,
              ),
            );

            return null;
          },
          fromSwidInterface: (val) {
            if (key.trim().isNotEmpty) {
              res += "$key";
            } else {
              normalAnonymousTypesSeen++;
              res += "_";
              res += List.generate(normalAnonymousTypesSeen, (index) => "_")
                  .join("");
            }
            if (shouldEmitPositionalAsOptional(argName: key)) {
              res +=
                  "${val.nullabilitySuffix == SwidNullabilitySuffix.question ? "?" : ""}";
            }

            res += ": " +
                pipeline.reduceFromTerm(
                  TransformTypeDeclarationToTs(
                    parentClass: parentClass,
                    swidType: SwidType.fromSwidInterface(
                      swidInterface: val,
                    ),
                    emitDefaultFormalsAsOptionalNamed:
                        emitDefaultFormalsAsOptionalNamed,
                    emitTopLevelInitializersForOptionalPositionals:
                        emitInitializersForOptionalPositionals,
                    emitTrailingReturnType: emitTrailingReturnType,
                    nestedTrailingReturnTypeKind: nestedTrailingReturnTypeKind,
                  ),
                );

            if (emitInitializersForOptionalPositionals) {
              var initializer = swidFunctionType
                  .positionalDefaultParameters.entries
                  .firstWhereOrNull((x) => x.key == key);
              if (initializer != null) {
                res += [
                  " = ",
                  pipeline.reduceFromTerm(
                    TransformLiteralToTs(
                      swidLiteral: initializer.value.value,
                      parentClass: parentClass,
                      inexpressibleFunctionInvocationFallback:
                          makeDefaultInexpressibleFunctionInvocationFallback(
                              parentClass: parentClass, name: initializer.key),
                      scopeResolver:
                          makeDefaultStaticConstFieldReferenceScopeResolver(
                        parentClass: parentClass,
                      ),
                    ),
                  )
                ].join("");
              }
            }

            return null;
          },
          fromSwidDefaultFormalParameter: (_) => null,
        );

        if (normalTypes.keys.toList().indexOf(key) !=
            normalTypes.keys.toList().length - 1) {
          res += ", ";
        }
      });

      if (swidFunctionType.normalParameterNames.isNotEmpty &&
          swidFunctionType.namedParameterTypes.isNotEmpty) {
        res += ",";
      }

      if (swidFunctionType.namedParameterTypes.isNotEmpty) {
        if (swidFunctionType.namedParameterTypes.entries.every((x) =>
            x.value.nullabilitySuffix == SwidNullabilitySuffix.question)) {
          res += " props? : { ";
        } else {
          res += " props : { ";
        }

        swidFunctionType.namedParameterTypes.entries.forEach((x) {
          res += [
            " ",
            x.key,
            x.value.nullabilitySuffix == SwidNullabilitySuffix.question ||
                    (emitDefaultFormalsAsOptionalNamed &&
                        swidFunctionType.namedDefaults[x.key] != null &&
                        !pipeline.reduceFromTerm(
                          IsInexpressibleStaticConst(
                            parentClass: parentClass,
                            swidStaticConst:
                                swidFunctionType.namedDefaults[x.key]!.value,
                          ),
                        ))
                ? "?"
                : "",
            " : ",
            pipeline.reduceFromTerm(
              TransformTypeDeclarationToTs(
                parentClass: parentClass,
                swidType: x.value,
              ),
            ),
            ",",
          ].join("");
        });
        res += "}";
      }

      res += ")";
      if (emitTrailingReturnType) {
        res += pipeline.reduceFromTerm(
          TransformReturnTypeToTs(
            swidFunctionType: swidFunctionType,
            trailingReturnTypeKind: trailingReturnTypeKind,
          ),
        );
      }
      return SwarsTermResult.fromString(
        res,
      );
    })(
      swidFunctionType: pipeline.reduceFromTerm(
        TransformCovariantTypesInFunction(
          swidFunctionType: swidFunctionType,
          covarianceTransformKind: covarianceTransformKind,
        ),
      ),
    );
  }
}
