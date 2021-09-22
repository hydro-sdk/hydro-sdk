import 'package:collection/collection.dart' show IterableExtension;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeMixin.dart';
import 'package:hydro_sdk/swid/ir/util/conflictingInstanceMembers.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';
import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';

part 'swidClass.freezed.dart';
part 'swidClass.g.dart';

@freezed
class SwidClass
    with
        _$SwidClass,
        SwidTypeMixin<SwidClass>,
        HashKeyMixin<SwidClass>,
        HashComparableMixin<SwidClass>
    implements
        ICopyable<SwidClass, $SwidClassCopyWith<SwidClass>>,
        IJsonTransformable {
  SwidClass._();

  factory SwidClass({
    required final String name,
    required final SwidNullabilitySuffix nullabilitySuffix,
    required final String originalPackagePath,
    required final SwidFunctionType? constructorType,
    required final List<SwidFunctionType> factoryConstructors,
    required final List<SwidFunctionType> staticMethods,
    required final List<SwidFunctionType> methods,
    required final List<SwidStaticConstFieldDeclaration>
        staticConstFieldDeclarations,
    required final Map<String, SwidType> instanceFieldDeclarations,
    required final SwidDeclarationModifiers declarationModifiers,
    required final List<SwidClass> mixedInClasses,
    required final List<SwidClass> implementedClasses,
    required final bool isMixin,
    required final List<SwidTypeFormal> typeFormals,
    SwidClass? extendedClass,
  }) = _$Data;

  @override
  List<int> get hashableParts => [
        ...name.hashableParts,
        nullabilitySuffix.index,
        ...originalPackagePath.hashableParts,
        ...constructorType?.hashKey.hashableParts ?? [],
        ...factoryConstructors.hashableParts,
        ...staticMethods.hashableParts,
        ...methods.hashableParts,
        ...staticConstFieldDeclarations.hashableParts,
        ...instanceFieldDeclarations.hashableParts,
        ...declarationModifiers.hashKey.hashableParts,
        ...mixedInClasses.hashableParts,
        ...implementedClasses.hashableParts,
        ...isMixin.hashableParts,
        ...typeFormals.hashableParts,
        ...extendedClass?.hashableParts ?? [],
      ];

  factory SwidClass.fromJson(Map<String, dynamic> json) =>
      _$SwidClassFromJson(json);

  @override
  SwidClass fromJson(Map<String, dynamic> json) => SwidClass.fromJson(json);

  factory SwidClass.clone({
    required final SwidClass swidClass,
    final String? name,
    final SwidNullabilitySuffix? nullabilitySuffix,
    final String? originalPackagePath,
    final SwidFunctionType? constructorType,
    final List<SwidFunctionType>? factoryConstructors,
    final List<SwidFunctionType>? staticMethods,
    final List<SwidFunctionType>? methods,
    final List<SwidStaticConstFieldDeclaration>? staticConstFieldDeclarations,
    final Map<String, SwidType>? instanceFieldDeclarations,
    final SwidDeclarationModifiers? declarationModifiers,
    final List<SwidClass>? mixedInClasses,
    final List<SwidClass>? implementedClasses,
    final bool? isMixin,
    final SwidClass? extendedClass,
    final List<SwidTypeFormal>? typeFormals,
  }) =>
      SwidClass(
        name: name ?? swidClass.name,
        nullabilitySuffix: nullabilitySuffix ?? swidClass.nullabilitySuffix,
        originalPackagePath:
            originalPackagePath ?? swidClass.originalPackagePath,
        constructorType: constructorType != null
            ? constructorType
            : swidClass.constructorType != null
                ? swidClass.constructorType
                : null,
        factoryConstructors:
            factoryConstructors ?? swidClass.factoryConstructors,
        staticMethods: staticMethods ?? swidClass.staticMethods,
        methods: methods ?? swidClass.methods,
        staticConstFieldDeclarations: staticConstFieldDeclarations ??
            swidClass.staticConstFieldDeclarations,
        instanceFieldDeclarations:
            instanceFieldDeclarations ?? swidClass.instanceFieldDeclarations,
        declarationModifiers:
            declarationModifiers ?? swidClass.declarationModifiers,
        mixedInClasses: mixedInClasses ?? swidClass.mixedInClasses,
        implementedClasses: implementedClasses ?? swidClass.implementedClasses,
        isMixin: isMixin ?? swidClass.isMixin,
        extendedClass: extendedClass ?? swidClass.extendedClass,
        typeFormals: typeFormals ?? swidClass.typeFormals,
      );

  factory SwidClass.empty() => SwidClass(
        name: "",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "",
        constructorType: null,
        factoryConstructors: [],
        staticMethods: [],
        methods: [],
        staticConstFieldDeclarations: [],
        instanceFieldDeclarations: {},
        declarationModifiers: SwidDeclarationModifiers.empty(),
        mixedInClasses: [],
        implementedClasses: [],
        extendedClass: null,
        isMixin: false,
        typeFormals: [],
      );

  factory SwidClass.mergeDeclarations({
    required final SwidClass swidClass,
    required final SwidClass? superClass,
  }) =>
      superClass != null
          ? SwidClass.clone(
              swidClass: swidClass,
              extendedClass:
                  swidClass.extendedClass ?? superClass.extendedClass,
              implementedClasses: [
                ...swidClass.implementedClasses
                    .map((x) => SwidClass.clone(
                          swidClass: x,
                        ))
                    .toList(),
                ...superClass.implementedClasses
                    .where((x) =>
                        <SwidClass?>[
                          ...swidClass.implementedClasses,
                        ].firstWhere(
                          (k) => k?.name == x.name,
                          orElse: () => null,
                        ) ==
                        null)
                    .map((x) => SwidClass.clone(
                          swidClass: x,
                        ))
                    .toList()
              ],
              mixedInClasses: [
                ...swidClass.mixedInClasses,
                ...superClass.mixedInClasses
                    .where((x) =>
                        <SwidClass?>[
                          ...swidClass.mixedInClasses,
                        ].firstWhere(
                          (k) => k?.name == x.name,
                          orElse: () => null,
                        ) ==
                        null)
                    .map((x) => SwidClass.clone(
                          swidClass: x,
                        ))
                    .toList()
              ],
              constructorType:
                  swidClass.constructorType ?? superClass.constructorType,
              factoryConstructors: [
                ...swidClass.factoryConstructors,
                ...superClass.factoryConstructors,
              ],
              staticMethods: [
                ...swidClass.staticMethods,
                ...superClass.staticMethods
              ],
              staticConstFieldDeclarations: [
                ...swidClass.staticConstFieldDeclarations,
                ...superClass.staticConstFieldDeclarations,
              ],
              instanceFieldDeclarations: Map.fromEntries([
                ...swidClass.instanceFieldDeclarations.entries
                    .map((x) => MapEntry(x.key, x.value))
                    .toList(),
                ...superClass.instanceFieldDeclarations.entries
                    .where((x) =>
                        swidClass.instanceFieldDeclarations.entries
                            .firstWhereOrNull((k) => k.key == x.key) ==
                        null)
                    .map((x) => MapEntry(x.key, x.value))
                    .toList()
              ]),
              methods: List.from([
                ...swidClass.methods,
                ...superClass.methods
                    .where((x) =>
                        <SwidFunctionType?>[...swidClass.methods].firstWhere(
                            (k) => k?.name == x.name,
                            orElse: () => null) ==
                        null)
                    .toList()
              ]))
          : SwidClass.clone(
              swidClass: swidClass,
            );

  factory SwidClass.mergeSuperClasses({
    required final SwidClass swidClass,
  }) =>
      (({
        required final SwidClass swidClassWithMergedInterfaces,
      }) =>
          (({
            required final SwidClass swidClassWithMixinApplications,
          }) =>
              swidClassWithMixinApplications.extendedClass != null
                  ? SwidClass.mergeDeclarations(
                      swidClass: swidClassWithMixinApplications,
                      superClass: SwidClass.mergeSuperClasses(
                        swidClass:
                            swidClassWithMixinApplications.extendedClass!,
                      ))
                  : SwidClass.clone(
                      swidClass: swidClassWithMixinApplications,
                    ))(
            swidClassWithMixinApplications:
                swidClassWithMergedInterfaces.mixedInClasses.isNotEmpty
                    ? swidClassWithMergedInterfaces.mixedInClasses.fold(
                        swidClassWithMergedInterfaces,
                        (previousValue, element) => SwidClass.mergeDeclarations(
                            swidClass: previousValue,
                            superClass: SwidClass.mergeSuperClasses(
                              swidClass: element,
                            )))
                    : SwidClass.clone(
                        swidClass: swidClassWithMergedInterfaces,
                      ),
          ))(
        swidClassWithMergedInterfaces: swidClass.implementedClasses.isNotEmpty
            ? swidClass.implementedClasses.fold(
                swidClass,
                (previousValue, element) => SwidClass.mergeDeclarations(
                    swidClass: previousValue,
                    superClass: SwidClass.mergeSuperClasses(
                      swidClass: element,
                    )))
            : SwidClass.clone(
                swidClass: swidClass,
              ),
      );

  bool isPureAbstract() =>
      declarationModifiers.isAbstract &&
      (methods.isNotEmpty
          ? methods.every((x) => x.declarationModifiers.isAbstract)
          : false) &&
      staticMethods.isEmpty &&
      factoryConstructors.isEmpty &&
      staticConstFieldDeclarations.isEmpty;

  bool isConstructible() => constructorType != null;

  String get displayName => SwidType.fromSwidClass(swidClass: this).displayName;

  bool hasSyntheticAccessors() =>
      methods.firstWhereOrNull(
        (x) => x.declarationModifiers.isSynthetic,
      ) !=
      null;

  List<SwidFunctionType> syntheticAccessors() => methods
      .where(
        (x) => x.declarationModifiers.isSynthetic,
      )
      .toList();

  bool hasMixinApplicationThatConflictsWithSuperClassOrInterface() =>
      implementedClasses.firstWhereOrNull((x) => mixedInClasses
              .map(
                (k) => (({
                  required final ConflictingInstanceMembersResult
                      conflictingInstanceMembersResult,
                }) =>
                    conflictingInstanceMembersResult
                        .instanceFields.isNotEmpty ||
                    conflictingInstanceMembersResult.methods.isNotEmpty)(
                  conflictingInstanceMembersResult: conflictingInstanceMembers(
                    first: SwidClass.mergeSuperClasses(
                      swidClass: x,
                    ),
                    second: SwidClass.mergeSuperClasses(
                      swidClass: k,
                    ),
                  ),
                ),
              )
              .any((e) => e)) !=
          null ||
      (extendedClass != null &&
          mixedInClasses
              .map(
                (k) => (({
                  required final ConflictingInstanceMembersResult
                      conflictingInstanceMembersResult,
                }) =>
                    conflictingInstanceMembersResult
                        .instanceFields.isNotEmpty ||
                    conflictingInstanceMembersResult.methods.isNotEmpty)(
                  conflictingInstanceMembersResult: conflictingInstanceMembers(
                    first: SwidClass.mergeSuperClasses(
                      swidClass: extendedClass!,
                    ),
                    second: SwidClass.mergeSuperClasses(
                      swidClass: k,
                    ),
                  ),
                ),
              )
              .any((e) => e));

  @override
  SwidClass clone({
    final String? name,
    final SwidNullabilitySuffix? nullabilitySuffix,
    final String? originalPackagePath,
    final SwidFunctionType? constructorType,
    final List<SwidFunctionType>? factoryConstructors,
    final List<SwidFunctionType>? staticMethods,
    final List<SwidFunctionType>? methods,
    final List<SwidStaticConstFieldDeclaration>? staticConstFieldDeclarations,
    final Map<String, SwidType>? instanceFieldDeclarations,
    final SwidDeclarationModifiers? declarationModifiers,
    final List<SwidClass>? mixedInClasses,
    final List<SwidClass>? implementedClasses,
    final bool? isMixin,
    final SwidClass? extendedClass,
    final List<SwidTypeFormal>? typeFormals,
  }) =>
      SwidClass.clone(
        swidClass: this,
        name: name,
        nullabilitySuffix: nullabilitySuffix,
        originalPackagePath: originalPackagePath,
        constructorType: constructorType,
        factoryConstructors: factoryConstructors,
        staticMethods: staticMethods,
        methods: methods,
        staticConstFieldDeclarations: staticConstFieldDeclarations,
        instanceFieldDeclarations: instanceFieldDeclarations,
        declarationModifiers: declarationModifiers,
        mixedInClasses: mixedInClasses,
        implementedClasses: implementedClasses,
        isMixin: isMixin,
        extendedClass: extendedClass,
        typeFormals: typeFormals,
      );
}
