import 'package:collection/collection.dart' show IterableExtension;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeMixin.dart';
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
    required final List<SwidFunctionType> generativeConstructors,
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
    final SwidType? element,
    final SwidClass? extendedClass,
  }) = _$Data;

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* name.hashableParts;
    yield [
      nullabilitySuffix.index,
    ];
    yield* originalPackagePath.hashableParts;
    yield* constructorType?.hashKey.hashableParts ?? [];
    yield* generativeConstructors.hashableParts;
    yield* factoryConstructors.hashableParts;
    yield* staticMethods.hashableParts;
    yield* methods.hashableParts;
    yield* staticConstFieldDeclarations.hashableParts;
    yield* instanceFieldDeclarations.hashableParts;
    yield* declarationModifiers.hashKey.hashableParts;
    yield* mixedInClasses.hashableParts;
    yield* implementedClasses.hashableParts;
    yield [
      ...isMixin.hashableParts,
    ];
    yield* typeFormals.hashableParts;
    yield* element?.hashKey.hashableParts ?? [];
    yield* extendedClass?.hashKey.hashableParts ?? [];
  })();

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
    final List<SwidFunctionType>? generativeConstructors,
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
    final SwidType? element,
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
        generativeConstructors:
            generativeConstructors ?? swidClass.generativeConstructors,
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
        element: element ?? swidClass.element,
      );

  factory SwidClass.empty() => SwidClass(
        name: "",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "",
        constructorType: null,
        generativeConstructors: [],
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
    final String? name,
    final SwidNullabilitySuffix? nullabilitySuffix,
    final String? originalPackagePath,
    final SwidFunctionType? constructorType,
    final List<SwidFunctionType>? generativeConstructors,
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
    final SwidType? element,
  }) =>
      SwidClass.clone(
        swidClass: this,
        name: name,
        nullabilitySuffix: nullabilitySuffix,
        originalPackagePath: originalPackagePath,
        constructorType: constructorType,
        generativeConstructors: generativeConstructors,
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
        element: element,
      );
}
