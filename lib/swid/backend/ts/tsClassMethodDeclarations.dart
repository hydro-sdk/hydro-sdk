import 'package:collection/collection.dart' show IterableExtension;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/analyses/tsClassMethodInjectionCandidates.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/covarianceTransformKind.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformTypeDeclarationToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/util/transformIllegalParameterNames.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassMethodInjectionFieldName.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferencesInFunction.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsClassMethodDeclarations.freezed.dart';

@freezed
class TsClassMethodDeclarations
    with
        _$TsClassMethodDeclarations,
        HashKeyMixin<TsClassMethodDeclarations>,
        HashComparableMixin<TsClassMethodDeclarations>,
        SwarsTransformMixin<
            TsClassMethodDeclarations,
            $TsClassMethodDeclarationsCopyWith<TsClassMethodDeclarations>,
            String>,
        SwarsTermStringResultMixin {
  TsClassMethodDeclarations._();

  factory TsClassMethodDeclarations({
    required final SwidClass swidClass,
  }) = _$TsClassMethodDeclarationsCtor;

  @override
  String get cacheGroup => "tsClassMethodDeclarations";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  TsClassMethodDeclarations clone({
    final SwidClass? swidClass,
  }) =>
      TsClassMethodDeclarations(
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
                      .map((x) => [
                            "public ${x.name}",
                            pipeline.reduceFromTerm(
                              TransformTypeDeclarationToTs(
                                parentClass: swidClass,
                                emitTrailingReturnType: true,
                                emitDefaultFormalsAsOptionalNamed: true,
                                emitTopLevelInitializersForOptionalPositionals:
                                    true,
                                topLevelTrailingReturnTypeKind:
                                    TrailingReturnTypeKind.colon,
                                swidType: SwidType.fromSwidFunctionType(
                                  swidFunctionType:
                                      rewriteClassReferencesToInterfaceReferencesInFunction(
                                    swidFunctionType: x,
                                  ),
                                ),
                                covarianceTransformKind:
                                    CovarianceTransformKind.kAny,
                              ),
                            ),
                            " {\n",
                            ...(x.declarationModifiers.overridenTransforms
                                        .firstWhereOrNull((k) =>
                                            k == "tsClassMethodDeclaration") ==
                                    null
                                ? [
                                    "    return ",
                                    pipeline.reduceFromTerm(
                                      TsFunctionSelfBindingInvocation(
                                        functionReference: "this." +
                                            pipeline.reduceFromTerm(
                                              TsClassMethodInjectionFieldName(
                                                swidFunctionType: x,
                                              ),
                                            ),
                                        swidFunctionType:
                                            transformIllegalParameterNames(
                                          swidFunctionType: x,
                                        ),
                                      ),
                                    ),
                                  ]
                                : [
                                    x.declarationModifiers.overridenTransforms
                                        .firstWhere((k) =>
                                            k == "tsClassMethodDeclaration")
                                        .item2
                                  ]),
                            "\n}",
                          ].join(""))
                ].join("\n") +
                "\n"
            : "",
      );
}
