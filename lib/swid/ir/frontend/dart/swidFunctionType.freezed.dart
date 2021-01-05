// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidFunctionType.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidFunctionType _$SwidFunctionTypeFromJson(Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$SwidFunctionTypeTearOff {
  const _$SwidFunctionTypeTearOff();

// ignore: unused_element
  _$Data call(
      {@required String name,
      @required SwidNullabilitySuffix nullabilitySuffix,
      @required String originalPackagePath,
      @required SwidDeclarationModifiers swidDeclarationModifiers,
      @required Map<String, SwidType> namedParameterTypes,
      @required Map<String, SwidDefaultFormalParameter> namedDefaults,
      @required List<String> normalParameterNames,
      @required List<SwidType> normalParameterTypes,
      @required List<String> optionalParameterNames,
      @required List<SwidType> optionalParameterTypes,
      @required SwidType returnType,
      @required bool isFactory,
      @required List<SwidTypeFormal> typeFormals}) {
    return _$Data(
      name: name,
      nullabilitySuffix: nullabilitySuffix,
      originalPackagePath: originalPackagePath,
      swidDeclarationModifiers: swidDeclarationModifiers,
      namedParameterTypes: namedParameterTypes,
      namedDefaults: namedDefaults,
      normalParameterNames: normalParameterNames,
      normalParameterTypes: normalParameterTypes,
      optionalParameterNames: optionalParameterNames,
      optionalParameterTypes: optionalParameterTypes,
      returnType: returnType,
      isFactory: isFactory,
      typeFormals: typeFormals,
    );
  }

// ignore: unused_element
  SwidFunctionType fromJson(Map<String, Object> json) {
    return SwidFunctionType.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidFunctionType = _$SwidFunctionTypeTearOff();

/// @nodoc
mixin _$SwidFunctionType {
  String get name;
  SwidNullabilitySuffix get nullabilitySuffix;
  String get originalPackagePath;
  SwidDeclarationModifiers get swidDeclarationModifiers;
  Map<String, SwidType> get namedParameterTypes;
  Map<String, SwidDefaultFormalParameter> get namedDefaults;
  List<String> get normalParameterNames;
  List<SwidType> get normalParameterTypes;
  List<String> get optionalParameterNames;
  List<SwidType> get optionalParameterTypes;
  SwidType get returnType;
  bool get isFactory;
  List<SwidTypeFormal> get typeFormals;

  Map<String, dynamic> toJson();
  $SwidFunctionTypeCopyWith<SwidFunctionType> get copyWith;
}

/// @nodoc
abstract class $SwidFunctionTypeCopyWith<$Res> {
  factory $SwidFunctionTypeCopyWith(
          SwidFunctionType value, $Res Function(SwidFunctionType) then) =
      _$SwidFunctionTypeCopyWithImpl<$Res>;
  $Res call(
      {String name,
      SwidNullabilitySuffix nullabilitySuffix,
      String originalPackagePath,
      SwidDeclarationModifiers swidDeclarationModifiers,
      Map<String, SwidType> namedParameterTypes,
      Map<String, SwidDefaultFormalParameter> namedDefaults,
      List<String> normalParameterNames,
      List<SwidType> normalParameterTypes,
      List<String> optionalParameterNames,
      List<SwidType> optionalParameterTypes,
      SwidType returnType,
      bool isFactory,
      List<SwidTypeFormal> typeFormals});

  $SwidDeclarationModifiersCopyWith<$Res> get swidDeclarationModifiers;
  $SwidTypeCopyWith<$Res> get returnType;
}

/// @nodoc
class _$SwidFunctionTypeCopyWithImpl<$Res>
    implements $SwidFunctionTypeCopyWith<$Res> {
  _$SwidFunctionTypeCopyWithImpl(this._value, this._then);

  final SwidFunctionType _value;
  // ignore: unused_field
  final $Res Function(SwidFunctionType) _then;

  @override
  $Res call({
    Object name = freezed,
    Object nullabilitySuffix = freezed,
    Object originalPackagePath = freezed,
    Object swidDeclarationModifiers = freezed,
    Object namedParameterTypes = freezed,
    Object namedDefaults = freezed,
    Object normalParameterNames = freezed,
    Object normalParameterTypes = freezed,
    Object optionalParameterNames = freezed,
    Object optionalParameterTypes = freezed,
    Object returnType = freezed,
    Object isFactory = freezed,
    Object typeFormals = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      nullabilitySuffix: nullabilitySuffix == freezed
          ? _value.nullabilitySuffix
          : nullabilitySuffix as SwidNullabilitySuffix,
      originalPackagePath: originalPackagePath == freezed
          ? _value.originalPackagePath
          : originalPackagePath as String,
      swidDeclarationModifiers: swidDeclarationModifiers == freezed
          ? _value.swidDeclarationModifiers
          : swidDeclarationModifiers as SwidDeclarationModifiers,
      namedParameterTypes: namedParameterTypes == freezed
          ? _value.namedParameterTypes
          : namedParameterTypes as Map<String, SwidType>,
      namedDefaults: namedDefaults == freezed
          ? _value.namedDefaults
          : namedDefaults as Map<String, SwidDefaultFormalParameter>,
      normalParameterNames: normalParameterNames == freezed
          ? _value.normalParameterNames
          : normalParameterNames as List<String>,
      normalParameterTypes: normalParameterTypes == freezed
          ? _value.normalParameterTypes
          : normalParameterTypes as List<SwidType>,
      optionalParameterNames: optionalParameterNames == freezed
          ? _value.optionalParameterNames
          : optionalParameterNames as List<String>,
      optionalParameterTypes: optionalParameterTypes == freezed
          ? _value.optionalParameterTypes
          : optionalParameterTypes as List<SwidType>,
      returnType:
          returnType == freezed ? _value.returnType : returnType as SwidType,
      isFactory: isFactory == freezed ? _value.isFactory : isFactory as bool,
      typeFormals: typeFormals == freezed
          ? _value.typeFormals
          : typeFormals as List<SwidTypeFormal>,
    ));
  }

  @override
  $SwidDeclarationModifiersCopyWith<$Res> get swidDeclarationModifiers {
    if (_value.swidDeclarationModifiers == null) {
      return null;
    }
    return $SwidDeclarationModifiersCopyWith<$Res>(
        _value.swidDeclarationModifiers, (value) {
      return _then(_value.copyWith(swidDeclarationModifiers: value));
    });
  }

  @override
  $SwidTypeCopyWith<$Res> get returnType {
    if (_value.returnType == null) {
      return null;
    }
    return $SwidTypeCopyWith<$Res>(_value.returnType, (value) {
      return _then(_value.copyWith(returnType: value));
    });
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res>
    implements $SwidFunctionTypeCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      SwidNullabilitySuffix nullabilitySuffix,
      String originalPackagePath,
      SwidDeclarationModifiers swidDeclarationModifiers,
      Map<String, SwidType> namedParameterTypes,
      Map<String, SwidDefaultFormalParameter> namedDefaults,
      List<String> normalParameterNames,
      List<SwidType> normalParameterTypes,
      List<String> optionalParameterNames,
      List<SwidType> optionalParameterTypes,
      SwidType returnType,
      bool isFactory,
      List<SwidTypeFormal> typeFormals});

  @override
  $SwidDeclarationModifiersCopyWith<$Res> get swidDeclarationModifiers;
  @override
  $SwidTypeCopyWith<$Res> get returnType;
}

/// @nodoc
class __$$DataCopyWithImpl<$Res> extends _$SwidFunctionTypeCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object name = freezed,
    Object nullabilitySuffix = freezed,
    Object originalPackagePath = freezed,
    Object swidDeclarationModifiers = freezed,
    Object namedParameterTypes = freezed,
    Object namedDefaults = freezed,
    Object normalParameterNames = freezed,
    Object normalParameterTypes = freezed,
    Object optionalParameterNames = freezed,
    Object optionalParameterTypes = freezed,
    Object returnType = freezed,
    Object isFactory = freezed,
    Object typeFormals = freezed,
  }) {
    return _then(_$Data(
      name: name == freezed ? _value.name : name as String,
      nullabilitySuffix: nullabilitySuffix == freezed
          ? _value.nullabilitySuffix
          : nullabilitySuffix as SwidNullabilitySuffix,
      originalPackagePath: originalPackagePath == freezed
          ? _value.originalPackagePath
          : originalPackagePath as String,
      swidDeclarationModifiers: swidDeclarationModifiers == freezed
          ? _value.swidDeclarationModifiers
          : swidDeclarationModifiers as SwidDeclarationModifiers,
      namedParameterTypes: namedParameterTypes == freezed
          ? _value.namedParameterTypes
          : namedParameterTypes as Map<String, SwidType>,
      namedDefaults: namedDefaults == freezed
          ? _value.namedDefaults
          : namedDefaults as Map<String, SwidDefaultFormalParameter>,
      normalParameterNames: normalParameterNames == freezed
          ? _value.normalParameterNames
          : normalParameterNames as List<String>,
      normalParameterTypes: normalParameterTypes == freezed
          ? _value.normalParameterTypes
          : normalParameterTypes as List<SwidType>,
      optionalParameterNames: optionalParameterNames == freezed
          ? _value.optionalParameterNames
          : optionalParameterNames as List<String>,
      optionalParameterTypes: optionalParameterTypes == freezed
          ? _value.optionalParameterTypes
          : optionalParameterTypes as List<SwidType>,
      returnType:
          returnType == freezed ? _value.returnType : returnType as SwidType,
      isFactory: isFactory == freezed ? _value.isFactory : isFactory as bool,
      typeFormals: typeFormals == freezed
          ? _value.typeFormals
          : typeFormals as List<SwidTypeFormal>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$Data implements _$Data {
  _$_$Data(
      {@required this.name,
      @required this.nullabilitySuffix,
      @required this.originalPackagePath,
      @required this.swidDeclarationModifiers,
      @required this.namedParameterTypes,
      @required this.namedDefaults,
      @required this.normalParameterNames,
      @required this.normalParameterTypes,
      @required this.optionalParameterNames,
      @required this.optionalParameterTypes,
      @required this.returnType,
      @required this.isFactory,
      @required this.typeFormals})
      : assert(name != null),
        assert(nullabilitySuffix != null),
        assert(originalPackagePath != null),
        assert(swidDeclarationModifiers != null),
        assert(namedParameterTypes != null),
        assert(namedDefaults != null),
        assert(normalParameterNames != null),
        assert(normalParameterTypes != null),
        assert(optionalParameterNames != null),
        assert(optionalParameterTypes != null),
        assert(returnType != null),
        assert(isFactory != null),
        assert(typeFormals != null);

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final String name;
  @override
  final SwidNullabilitySuffix nullabilitySuffix;
  @override
  final String originalPackagePath;
  @override
  final SwidDeclarationModifiers swidDeclarationModifiers;
  @override
  final Map<String, SwidType> namedParameterTypes;
  @override
  final Map<String, SwidDefaultFormalParameter> namedDefaults;
  @override
  final List<String> normalParameterNames;
  @override
  final List<SwidType> normalParameterTypes;
  @override
  final List<String> optionalParameterNames;
  @override
  final List<SwidType> optionalParameterTypes;
  @override
  final SwidType returnType;
  @override
  final bool isFactory;
  @override
  final List<SwidTypeFormal> typeFormals;

  @override
  String toString() {
    return 'SwidFunctionType(name: $name, nullabilitySuffix: $nullabilitySuffix, originalPackagePath: $originalPackagePath, swidDeclarationModifiers: $swidDeclarationModifiers, namedParameterTypes: $namedParameterTypes, namedDefaults: $namedDefaults, normalParameterNames: $normalParameterNames, normalParameterTypes: $normalParameterTypes, optionalParameterNames: $optionalParameterNames, optionalParameterTypes: $optionalParameterTypes, returnType: $returnType, isFactory: $isFactory, typeFormals: $typeFormals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$Data &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.nullabilitySuffix, nullabilitySuffix) ||
                const DeepCollectionEquality()
                    .equals(other.nullabilitySuffix, nullabilitySuffix)) &&
            (identical(other.originalPackagePath, originalPackagePath) ||
                const DeepCollectionEquality()
                    .equals(other.originalPackagePath, originalPackagePath)) &&
            (identical(
                    other.swidDeclarationModifiers, swidDeclarationModifiers) ||
                const DeepCollectionEquality().equals(
                    other.swidDeclarationModifiers,
                    swidDeclarationModifiers)) &&
            (identical(other.namedParameterTypes, namedParameterTypes) ||
                const DeepCollectionEquality()
                    .equals(other.namedParameterTypes, namedParameterTypes)) &&
            (identical(other.namedDefaults, namedDefaults) ||
                const DeepCollectionEquality()
                    .equals(other.namedDefaults, namedDefaults)) &&
            (identical(other.normalParameterNames, normalParameterNames) ||
                const DeepCollectionEquality().equals(
                    other.normalParameterNames, normalParameterNames)) &&
            (identical(other.normalParameterTypes, normalParameterTypes) ||
                const DeepCollectionEquality().equals(
                    other.normalParameterTypes, normalParameterTypes)) &&
            (identical(other.optionalParameterNames, optionalParameterNames) ||
                const DeepCollectionEquality().equals(
                    other.optionalParameterNames, optionalParameterNames)) &&
            (identical(other.optionalParameterTypes, optionalParameterTypes) ||
                const DeepCollectionEquality().equals(
                    other.optionalParameterTypes, optionalParameterTypes)) &&
            (identical(other.returnType, returnType) ||
                const DeepCollectionEquality()
                    .equals(other.returnType, returnType)) &&
            (identical(other.isFactory, isFactory) ||
                const DeepCollectionEquality()
                    .equals(other.isFactory, isFactory)) &&
            (identical(other.typeFormals, typeFormals) ||
                const DeepCollectionEquality()
                    .equals(other.typeFormals, typeFormals)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(nullabilitySuffix) ^
      const DeepCollectionEquality().hash(originalPackagePath) ^
      const DeepCollectionEquality().hash(swidDeclarationModifiers) ^
      const DeepCollectionEquality().hash(namedParameterTypes) ^
      const DeepCollectionEquality().hash(namedDefaults) ^
      const DeepCollectionEquality().hash(normalParameterNames) ^
      const DeepCollectionEquality().hash(normalParameterTypes) ^
      const DeepCollectionEquality().hash(optionalParameterNames) ^
      const DeepCollectionEquality().hash(optionalParameterTypes) ^
      const DeepCollectionEquality().hash(returnType) ^
      const DeepCollectionEquality().hash(isFactory) ^
      const DeepCollectionEquality().hash(typeFormals);

  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data implements SwidFunctionType {
  factory _$Data(
      {@required String name,
      @required SwidNullabilitySuffix nullabilitySuffix,
      @required String originalPackagePath,
      @required SwidDeclarationModifiers swidDeclarationModifiers,
      @required Map<String, SwidType> namedParameterTypes,
      @required Map<String, SwidDefaultFormalParameter> namedDefaults,
      @required List<String> normalParameterNames,
      @required List<SwidType> normalParameterTypes,
      @required List<String> optionalParameterNames,
      @required List<SwidType> optionalParameterTypes,
      @required SwidType returnType,
      @required bool isFactory,
      @required List<SwidTypeFormal> typeFormals}) = _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get name;
  @override
  SwidNullabilitySuffix get nullabilitySuffix;
  @override
  String get originalPackagePath;
  @override
  SwidDeclarationModifiers get swidDeclarationModifiers;
  @override
  Map<String, SwidType> get namedParameterTypes;
  @override
  Map<String, SwidDefaultFormalParameter> get namedDefaults;
  @override
  List<String> get normalParameterNames;
  @override
  List<SwidType> get normalParameterTypes;
  @override
  List<String> get optionalParameterNames;
  @override
  List<SwidType> get optionalParameterTypes;
  @override
  SwidType get returnType;
  @override
  bool get isFactory;
  @override
  List<SwidTypeFormal> get typeFormals;
  @override
  _$$DataCopyWith<_$Data> get copyWith;
}
