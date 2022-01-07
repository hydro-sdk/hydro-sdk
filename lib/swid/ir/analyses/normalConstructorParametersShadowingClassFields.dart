import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';
import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';

part 'normalConstructorParametersShadowingClassFields.freezed.dart';
part 'normalConstructorParametersShadowingClassFields.g.dart';

@freezed
class NormalConstructorParametersShadowingClassFields
    with
        _$NormalConstructorParametersShadowingClassFields,
        HashKeyMixin<NormalConstructorParametersShadowingClassFields>,
        HashComparableMixin<NormalConstructorParametersShadowingClassFields>,
        SwarsAnalysisMixin<
            NormalConstructorParametersShadowingClassFields,
            $NormalConstructorParametersShadowingClassFieldsCopyWith<
                NormalConstructorParametersShadowingClassFields>,
            ConstructorParameterShadowingResult>,
        SwarsTermJsonTransformableResultMixin {
  NormalConstructorParametersShadowingClassFields._();

  factory NormalConstructorParametersShadowingClassFields({
    required final SwidClass swidClass,
  }) = _$NormalConstructorParametersShadowingClassFieldsCtor;

  @override
  String get cacheGroup => "normalConstructorParametersShadowingClassFields";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  NormalConstructorParametersShadowingClassFields clone({
    final SwidClass? swidClass,
  }) =>
      NormalConstructorParametersShadowingClassFields(
        swidClass: swidClass ?? this.swidClass,
      );

  @override
  ConstructorParameterShadowingResult termResultDeserializer(
          final Map<String, dynamic> json) =>
      ConstructorParameterShadowingResult.fromJson(json);

  @override
  ISwarsTermResult<ConstructorParameterShadowingResult> analyze({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(ConstructorParameterShadowingResult(
          results: swidClass.constructorType != null
              ? [
                  ...swidClass.constructorType!.normalParameterNames,
                  ...swidClass.constructorType!.optionalParameterNames,
                ]
                  .map((x) => [
                            ...swidClass.methods.map(
                              (x) => SwidType.fromSwidFunctionType(
                                swidFunctionType: x,
                              ),
                            ),
                            ...swidClass.instanceFieldDeclarations.entries.map(
                              (x) => SwidType.fromSwidInterface(
                                swidInterface: SwidInterface(
                                  name: x.key,
                                  nullabilitySuffix: x.value.nullabilitySuffix,
                                  originalPackagePath:
                                      x.value.originalPackagePath,
                                  typeArguments: [],
                                  referenceDeclarationKind:
                                      SwidReferenceDeclarationKind.unknown,
                                  declarationModifiers:
                                      x.value.declarationModifiers,
                                ),
                              ),
                            )
                          ].firstWhereOrNull(
                            (k) => k.name == x,
                          ) !=
                          null
                      ? x
                      : null)
                  .whereNotNull()
                  .toList()
              : []));
}

@freezed
class ConstructorParameterShadowingResult
    with
        _$ConstructorParameterShadowingResult,
        HashKeyMixin<ConstructorParameterShadowingResult>,
        HashComparableMixin<ConstructorParameterShadowingResult>
    implements
        ICopyable<
            ConstructorParameterShadowingResult,
            $ConstructorParameterShadowingResultCopyWith<
                ConstructorParameterShadowingResult>>,
        IJsonTransformable {
  ConstructorParameterShadowingResult._();

  factory ConstructorParameterShadowingResult({
    required final List<String> results,
  }) = _$ConstructorParameterShadowingResultCtor;

  factory ConstructorParameterShadowingResult.fromJson(
          Map<String, dynamic> json) =>
      _$ConstructorParameterShadowingResultFromJson(json);

  @override
  late final hashableParts = [
    ...results.hashableParts,
  ];

  @override
  ConstructorParameterShadowingResult fromJson(
          final Map<String, dynamic> json) =>
      ConstructorParameterShadowingResult.fromJson(json);

  @override
  ConstructorParameterShadowingResult clone({
    final List<String>? results,
  }) =>
      ConstructorParameterShadowingResult(
        results: results ?? this.results,
      );
}
