// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidInterface.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidInterface _$SwidInterfaceFromJson(Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$SwidInterfaceTearOff {
  const _$SwidInterfaceTearOff();

// ignore: unused_element
  _$Data call(
      {required String name,
      required SwidNullabilitySuffix nullabilitySuffix,
      required String originalPackagePath,
      required List<SwidType> typeArguments,
      required SwidReferenceDeclarationKind referenceDeclarationKind}) {
    return _$Data(
      name: name,
      nullabilitySuffix: nullabilitySuffix,
      originalPackagePath: originalPackagePath,
      typeArguments: typeArguments,
      referenceDeclarationKind: referenceDeclarationKind,
    );
  }

// ignore: unused_element
  SwidInterface fromJson(Map<String, Object> json) {
    return SwidInterface.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidInterface = _$SwidInterfaceTearOff();

/// @nodoc
mixin _$SwidInterface {
  String get name;
  SwidNullabilitySuffix get nullabilitySuffix;
  String get originalPackagePath;
  List<SwidType?> get typeArguments;
  SwidReferenceDeclarationKind get referenceDeclarationKind;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SwidInterfaceCopyWith<SwidInterface> get copyWith;
}

/// @nodoc
abstract class $SwidInterfaceCopyWith<$Res> {
  factory $SwidInterfaceCopyWith(
          SwidInterface value, $Res Function(SwidInterface) then) =
      _$SwidInterfaceCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      SwidNullabilitySuffix? nullabilitySuffix,
      String? originalPackagePath,
      List<SwidType>? typeArguments,
      SwidReferenceDeclarationKind? referenceDeclarationKind});
}

/// @nodoc
class _$SwidInterfaceCopyWithImpl<$Res>
    implements $SwidInterfaceCopyWith<$Res> {
  _$SwidInterfaceCopyWithImpl(this._value, this._then);

  final SwidInterface _value;
  // ignore: unused_field
  final $Res Function(SwidInterface?) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? nullabilitySuffix = freezed,
    Object? originalPackagePath = freezed,
    Object? typeArguments = freezed,
    Object? referenceDeclarationKind = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String?,
      nullabilitySuffix: nullabilitySuffix == freezed
          ? _value.nullabilitySuffix
          : nullabilitySuffix as SwidNullabilitySuffix?,
      originalPackagePath: originalPackagePath == freezed
          ? _value.originalPackagePath
          : originalPackagePath as String?,
      typeArguments: typeArguments == freezed
          ? _value.typeArguments as List<SwidType>?
          : typeArguments as List<SwidType>?,
      referenceDeclarationKind: referenceDeclarationKind == freezed
          ? _value.referenceDeclarationKind
          : referenceDeclarationKind as SwidReferenceDeclarationKind?,
    ));
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res> implements $SwidInterfaceCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      SwidNullabilitySuffix? nullabilitySuffix,
      String? originalPackagePath,
      List<SwidType>? typeArguments,
      SwidReferenceDeclarationKind? referenceDeclarationKind});
}

/// @nodoc
class __$$DataCopyWithImpl<$Res> extends _$SwidInterfaceCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object? name = freezed,
    Object? nullabilitySuffix = freezed,
    Object? originalPackagePath = freezed,
    Object? typeArguments = freezed,
    Object? referenceDeclarationKind = freezed,
  }) {
    return _then(_$Data(
      name: name == freezed ? _value.name : (name as String?)!,
      nullabilitySuffix: nullabilitySuffix == freezed
          ? _value.nullabilitySuffix
          : (nullabilitySuffix as SwidNullabilitySuffix?)!,
      originalPackagePath: originalPackagePath == freezed
          ? _value.originalPackagePath
          : (originalPackagePath as String?)!,
      typeArguments: typeArguments == freezed
          ? _value.typeArguments
          : (typeArguments as List<SwidType>?)!,
      referenceDeclarationKind: referenceDeclarationKind == freezed
          ? _value.referenceDeclarationKind
          : (referenceDeclarationKind as SwidReferenceDeclarationKind?)!,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$Data implements _$Data {
  const _$_$Data(
      {required this.name,
      required this.nullabilitySuffix,
      required this.originalPackagePath,
      required this.typeArguments,
      required this.referenceDeclarationKind})
      : assert(name != null),
        assert(nullabilitySuffix != null),
        assert(originalPackagePath != null),
        assert(typeArguments != null),
        assert(referenceDeclarationKind != null);

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final String name;
  @override
  final SwidNullabilitySuffix nullabilitySuffix;
  @override
  final String originalPackagePath;
  @override
  final List<SwidType?> typeArguments;
  @override
  final SwidReferenceDeclarationKind referenceDeclarationKind;

  @override
  String toString() {
    return 'SwidInterface(name: $name, nullabilitySuffix: $nullabilitySuffix, originalPackagePath: $originalPackagePath, typeArguments: $typeArguments, referenceDeclarationKind: $referenceDeclarationKind)';
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
            (identical(other.typeArguments, typeArguments) ||
                const DeepCollectionEquality()
                    .equals(other.typeArguments, typeArguments)) &&
            (identical(
                    other.referenceDeclarationKind, referenceDeclarationKind) ||
                const DeepCollectionEquality().equals(
                    other.referenceDeclarationKind, referenceDeclarationKind)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(nullabilitySuffix) ^
      const DeepCollectionEquality().hash(originalPackagePath) ^
      const DeepCollectionEquality().hash(typeArguments) ^
      const DeepCollectionEquality().hash(referenceDeclarationKind);

  @JsonKey(ignore: true)
  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data implements SwidInterface {
  const factory _$Data(
          {required String name,
          required SwidNullabilitySuffix nullabilitySuffix,
          required String originalPackagePath,
          required List<SwidType?> typeArguments,
          required SwidReferenceDeclarationKind referenceDeclarationKind}) =
      _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get name;
  @override
  SwidNullabilitySuffix get nullabilitySuffix;
  @override
  String get originalPackagePath;
  @override
  List<SwidType?> get typeArguments;
  @override
  SwidReferenceDeclarationKind get referenceDeclarationKind;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith;
}
