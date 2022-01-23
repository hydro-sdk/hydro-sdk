import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidClassResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'mergeClassDeclarations.freezed.dart';

@freezed
class MergeClassDeclarations
    with
        _$MergeClassDeclarations,
        HashKeyMixin<MergeClassDeclarations>,
        HashComparableMixin<MergeClassDeclarations>,
        SwarsTransformMixin<MergeClassDeclarations,
            $MergeClassDeclarationsCopyWith<MergeClassDeclarations>, SwidClass>,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidClassResultMixin {
  MergeClassDeclarations._();

  factory MergeClassDeclarations({
    required final SwidClass swidClass,
    required final SwidClass? superClass,
  }) = _$MergeClassDeclarationsCtor;

  @override
  String get cacheGroup => "mergeClassDeclarations";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
    yield* superClass?.hashKey.hashableParts ?? [];
  }

  @override
  MergeClassDeclarations clone({
    final SwidClass? swidClass,
    final SwidClass? superClass,
  }) =>
      MergeClassDeclarations(
        swidClass: swidClass ?? this.swidClass,
        superClass: superClass ?? this.superClass,
      );

  @override
  ISwarsTermResult<SwidClass> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        superClass != null
            ? SwidClass.clone(
                swidClass: swidClass,
                extendedClass:
                    swidClass.extendedClass ?? superClass!.extendedClass,
                implementedClasses: [
                  ...swidClass.implementedClasses
                      .map(
                        (x) => SwidClass.clone(
                          swidClass: x,
                        ),
                      )
                      .toList(),
                  ...superClass!.implementedClasses
                      .where(
                        (x) =>
                            <SwidClass?>[
                              ...swidClass.implementedClasses,
                            ].firstWhere(
                              (k) => k?.name == x.name,
                              orElse: () => null,
                            ) ==
                            null,
                      )
                      .map(
                        (x) => SwidClass.clone(
                          swidClass: x,
                        ),
                      )
                      .toList()
                ],
                mixedInClasses: [
                  ...swidClass.mixedInClasses,
                  ...superClass!.mixedInClasses
                      .where(
                        (x) =>
                            <SwidClass?>[
                              ...swidClass.mixedInClasses,
                            ].firstWhere(
                              (k) => k?.name == x.name,
                              orElse: () => null,
                            ) ==
                            null,
                      )
                      .map(
                        (x) => SwidClass.clone(
                          swidClass: x,
                        ),
                      )
                      .toList()
                ],
                constructorType:
                    swidClass.constructorType ?? superClass!.constructorType,
                factoryConstructors: [
                  ...swidClass.factoryConstructors,
                  ...superClass!.factoryConstructors,
                ],
                staticMethods: [
                  ...swidClass.staticMethods,
                  ...superClass!.staticMethods
                ],
                staticConstFieldDeclarations: [
                  ...swidClass.staticConstFieldDeclarations,
                  ...superClass!.staticConstFieldDeclarations,
                ],
                instanceFieldDeclarations: Map.fromEntries(
                  [
                    ...swidClass.instanceFieldDeclarations.entries
                        .map((x) => MapEntry(x.key, x.value))
                        .toList(),
                    ...superClass!.instanceFieldDeclarations.entries
                        .where(
                          (x) =>
                              swidClass.instanceFieldDeclarations.entries
                                  .firstWhereOrNull(
                                (k) => k.key == x.key,
                              ) ==
                              null,
                        )
                        .map(
                          (x) => MapEntry(
                            x.key,
                            x.value,
                          ),
                        )
                        .toList()
                  ],
                ),
                methods: List.from(
                  [
                    ...swidClass.methods.map(
                      (x) => (({
                        required final SwidFunctionType? superClassMethod,
                      }) =>
                          superClassMethod == null
                              ? x
                              : x.clone(
                                  declarationModifiers:
                                      x.declarationModifiers.clone(
                                    hasMustCallSuper: superClassMethod
                                        .declarationModifiers.hasMustCallSuper,
                                  ),
                                ))(
                        superClassMethod: superClass!.methods.firstWhereOrNull(
                          (k) => k.name == x.name,
                        ),
                      ),
                    ),
                    ...superClass!.methods
                        .where(
                          (x) =>
                              <SwidFunctionType?>[...swidClass.methods]
                                  .firstWhere(
                                (k) => k?.name == x.name,
                                orElse: () => null,
                              ) ==
                              null,
                        )
                        .toList()
                  ],
                ),
              )
            : SwidClass.clone(
                swidClass: swidClass,
              ),
      );
}
