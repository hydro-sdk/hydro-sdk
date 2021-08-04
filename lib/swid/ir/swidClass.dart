import 'package:collection/collection.dart' show IterableExtension;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/iSwidType.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeMixin.dart';
import 'package:hydro_sdk/swid/util/iCloneable.dart';

part 'swidClass.freezed.dart';
part 'swidClass.g.dart';

@freezed
class SwidClass
    with _$SwidClass, SwidTypeMixin<SwidClass>
    implements ISwidType<SwidClass>, ICloneable<SwidClass> {
  const SwidClass._();

  const factory SwidClass({
    required String name,
    required SwidNullabilitySuffix nullabilitySuffix,
    required String originalPackagePath,
    required SwidFunctionType? constructorType,
    required List<SwidFunctionType> factoryConstructors,
    required List<SwidFunctionType> staticMethods,
    required List<SwidFunctionType> methods,
    required List<SwidStaticConstFieldDeclaration> staticConstFieldDeclarations,
    required Map<String, SwidType> instanceFieldDeclarations,
    required SwidDeclarationModifiers declarationModifiers,
    required List<SwidClass> mixedInClasses,
    required List<SwidClass> implementedClasses,
    required bool isMixin,
    required List<SwidTypeFormal> typeFormals,
    SwidClass? extendedClass,
  }) = _$Data;

  factory SwidClass.fromJson(Map<String, dynamic> json) =>
      _$SwidClassFromJson(json);

  factory SwidClass.clone({
    required SwidClass swidClass,
    String? name,
    SwidNullabilitySuffix? nullabilitySuffix,
    String? originalPackagePath,
    SwidFunctionType? constructorType,
    List<SwidFunctionType>? factoryConstructors,
    List<SwidFunctionType>? staticMethods,
    List<SwidFunctionType>? methods,
    List<SwidStaticConstFieldDeclaration>? staticConstFieldDeclarations,
    Map<String, SwidType>? instanceFieldDeclarations,
    SwidDeclarationModifiers? declarationModifiers,
    List<SwidClass>? mixedInClasses,
    List<SwidClass>? implementedClasses,
    bool? isMixin,
    SwidClass? extendedClass,
    List<SwidTypeFormal>? typeFormals,
  }) =>
      SwidClass(
        name: name ?? swidClass.name,
        nullabilitySuffix: nullabilitySuffix ?? swidClass.nullabilitySuffix,
        originalPackagePath:
            originalPackagePath ?? swidClass.originalPackagePath,
        constructorType: constructorType != null
            ? constructorType
            : swidClass.constructorType != null
                ? SwidFunctionType.clone(
                    swidFunctionType: swidClass.constructorType!,
                  )
                : null,
        factoryConstructors: factoryConstructors ??
            List.from(swidClass.factoryConstructors
                .map((x) => SwidFunctionType.clone(swidFunctionType: x))
                .toList()),
        staticMethods: staticMethods ??
            List.from(
              swidClass.staticMethods
                  .map(
                    (x) => SwidFunctionType.clone(
                      swidFunctionType: x,
                    ),
                  )
                  .toList(),
            ),
        methods: methods ??
            List.from(
              swidClass.methods
                  .map(
                    (x) => SwidFunctionType.clone(
                      swidFunctionType: x,
                    ),
                  )
                  .toList(),
            ),
        staticConstFieldDeclarations: staticConstFieldDeclarations ??
            List.from(swidClass.staticConstFieldDeclarations),
        instanceFieldDeclarations: instanceFieldDeclarations ??
            Map.from(swidClass.instanceFieldDeclarations),
        declarationModifiers:
            declarationModifiers ?? swidClass.declarationModifiers,
        mixedInClasses: mixedInClasses ??
            List.from(
              swidClass.mixedInClasses
                  .map(
                    (x) => SwidClass.clone(
                      swidClass: x,
                    ),
                  )
                  .toList(),
            ),
        implementedClasses: implementedClasses ??
            List.from(
              swidClass.implementedClasses
                  .map(
                    (x) => SwidClass.clone(
                      swidClass: x,
                    ),
                  )
                  .toList(),
            ),
        isMixin: isMixin ?? swidClass.isMixin,
        extendedClass: extendedClass ?? swidClass.extendedClass,
        typeFormals: typeFormals ?? List.from(swidClass.typeFormals),
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
    required SwidClass swidClass,
    required SwidClass? superClass,
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
    required SwidClass swidClass,
  }) =>
      (({
        required SwidClass swidClassWithMergedInterfaces,
      }) =>
          (({
            required SwidClass swidClassWithMixinApplications,
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

  @override
  SwidClass clone({
    String? name,
    SwidNullabilitySuffix? nullabilitySuffix,
    String? originalPackagePath,
    SwidFunctionType? constructorType,
    List<SwidFunctionType>? factoryConstructors,
    List<SwidFunctionType>? staticMethods,
    List<SwidFunctionType>? methods,
    List<SwidStaticConstFieldDeclaration>? staticConstFieldDeclarations,
    Map<String, SwidType>? instanceFieldDeclarations,
    SwidDeclarationModifiers? declarationModifiers,
    List<SwidClass>? mixedInClasses,
    List<SwidClass>? implementedClasses,
    bool? isMixin,
    SwidClass? extendedClass,
    List<SwidTypeFormal>? typeFormals,
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
