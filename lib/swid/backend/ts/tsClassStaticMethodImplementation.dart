import 'package:collection/collection.dart' show IterableExtension;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as path;

import 'package:hydro_sdk/swid/backend/ts/transforms/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformTypeDeclarationToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/util/transformIllegalParameterNames.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferencesInFunction.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsClassStaticMethodImplementation.freezed.dart';

@freezed
class TsClassStaticMethodImplementation
    with
        _$TsClassStaticMethodImplementation,
        HashKeyMixin<TsClassStaticMethodImplementation>,
        HashComparableMixin<TsClassStaticMethodImplementation>,
        SwarsTransformMixin<
            TsClassStaticMethodImplementation,
            $TsClassStaticMethodImplementationCopyWith<
                TsClassStaticMethodImplementation>,
            String>,
        SwarsTermStringResultMixin {
  TsClassStaticMethodImplementation._();

  factory TsClassStaticMethodImplementation({
    required final SwidClass swidClass,
    required final SwidFunctionType swidFunctionType,
  }) = _$TsClassStaticMethodImplementationCtor;

  @override
  String get cacheGroup => "tsClassStaticMethodImplementation";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
    yield* swidFunctionType.hashKey.hashableParts;
  }

  @override
  TsClassStaticMethodImplementation clone({
    final SwidClass? swidClass,
    final SwidFunctionType? swidFunctionType,
  }) =>
      TsClassStaticMethodImplementation(
        swidClass: swidClass ?? this.swidClass,
        swidFunctionType: swidFunctionType ?? this.swidFunctionType,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        [
          "public static ",
          swidFunctionType.name,
          pipeline.reduceFromTerm(
            TransformTypeDeclarationToTs(
              parentClass: swidClass,
              emitTrailingReturnType: true,
              emitDefaultFormalsAsOptionalNamed: true,
              emitTopLevelInitializersForOptionalPositionals: true,
              topLevelTrailingReturnTypeKind: TrailingReturnTypeKind.colon,
              swidType: SwidType.fromSwidFunctionType(
                swidFunctionType:
                    rewriteClassReferencesToInterfaceReferencesInFunction(
                  swidFunctionType: swidFunctionType,
                ),
              ),
            ),
          ),
          "{\n",
          ...(swidFunctionType.declarationModifiers.overridenTransforms
                      .firstWhereOrNull(
                    (x) => x.item1 == "tsClassStaticMethodImplementation",
                  ) ==
                  null
              ? [
                  "return ",
                  pipeline.reduceFromTerm(
                    TsFunctionSelfBindingInvocation(
                      functionReference: [
                        ...transformPackageUri(
                          packageUri: swidClass.originalPackagePath,
                        ).split(path.separator),
                        transformToCamelCase(
                              str: swidClass.name,
                            ) +
                            transformToPascalCase(
                              str: swidFunctionType.name,
                            )
                      ].join("."),
                      swidFunctionType: transformIllegalParameterNames(
                        swidFunctionType: swidFunctionType,
                      ),
                    ),
                  ),
                ]
              : [
                  swidFunctionType.declarationModifiers.overridenTransforms
                      .firstWhere(
                          (x) => x.item1 == "tsClassStaticMethodImplementation")
                      .item2
                ]),
          "\n}",
        ].join(""),
      );
}
