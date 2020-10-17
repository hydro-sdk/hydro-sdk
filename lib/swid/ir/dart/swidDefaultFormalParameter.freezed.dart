// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidDefaultFormalParameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidDefaultFormalParameter _$SwidDefaultFormalParameterFromJson(
    Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$SwidDefaultFormalParameterTearOff {
  const _$SwidDefaultFormalParameterTearOff();

// ignore: unused_element
  _$Data call(
      {@required String name,
      @required SwidNullabilitySuffix nullabilitySuffix,
      @required String originalPackagePath,
      @required SwidType value}) {
    return _$Data(
      name: name,
      nullabilitySuffix: nullabilitySuffix,
      originalPackagePath: originalPackagePath,
      value: value,
    );
  }

// ignore: unused_element
  SwidDefaultFormalParameter fromJson(Map<String, Object> json) {
    return SwidDefaultFormalParameter.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidDefaultFormalParameter = _$SwidDefaultFormalParameterTearOff();

/// @nodoc
mixin _$SwidDefaultFormalParameter {
  String get name;
  SwidNullabilitySuffix get nullabilitySuffix;
  String get originalPackagePath;
  SwidType get value;

  Map<String, dynamic> toJson();
  $SwidDefaultFormalParameterCopyWith<SwidDefaultFormalParameter> get copyWith;
}

/// @nodoc
abstract class $SwidDefaultFormalParameterCopyWith<$Res> {
  factory $SwidDefaultFormalParameterCopyWith(SwidDefaultFormalParameter value,
          $Res Function(SwidDefaultFormalParameter) then) =
      _$SwidDefaultFormalParameterCopyWithImpl<$Res>;
  $Res call(
      {String name,
      SwidNullabilitySuffix nullabilitySuffix,
      String originalPackagePath,
      SwidType value});

  $SwidTypeCopyWith<$Res> get value;
}

/// @nodoc
class _$SwidDefaultFormalParameterCopyWithImpl<$Res>
    implements $SwidDefaultFormalParameterCopyWith<$Res> {
  _$SwidDefaultFormalParameterCopyWithImpl(this._value, this._then);

  final SwidDefaultFormalParameter _value;
  // ignore: unused_field
  final $Res Function(SwidDefaultFormalParameter) _then;

  @override
  $Res call({
    Object name = freezed,
    Object nullabilitySuffix = freezed,
    Object originalPackagePath = freezed,
    Object value = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      nullabilitySuffix: nullabilitySuffix == freezed
          ? _value.nullabilitySuffix
          : nullabilitySuffix as SwidNullabilitySuffix,
      originalPackagePath: originalPackagePath == freezed
          ? _value.originalPackagePath
          : originalPackagePath as String,
      value: value == freezed ? _value.value : value as SwidType,
    ));
  }

  @override
  $SwidTypeCopyWith<$Res> get value {
    if (_value.value == null) {
      return null;
    }
    return $SwidTypeCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res>
    implements $SwidDefaultFormalParameterCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      SwidNullabilitySuffix nullabilitySuffix,
      String originalPackagePath,
      SwidType value});

  @override
  $SwidTypeCopyWith<$Res> get value;
}

/// @nodoc
class __$$DataCopyWithImpl<$Res>
    extends _$SwidDefaultFormalParameterCopyWithImpl<$Res>
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
    Object value = freezed,
  }) {
    return _then(_$Data(
      name: name == freezed ? _value.name : name as String,
      nullabilitySuffix: nullabilitySuffix == freezed
          ? _value.nullabilitySuffix
          : nullabilitySuffix as SwidNullabilitySuffix,
      originalPackagePath: originalPackagePath == freezed
          ? _value.originalPackagePath
          : originalPackagePath as String,
      value: value == freezed ? _value.value : value as SwidType,
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
      @required this.value})
      : assert(name != null),
        assert(nullabilitySuffix != null),
        assert(originalPackagePath != null),
        assert(value != null);

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final String name;
  @override
  final SwidNullabilitySuffix nullabilitySuffix;
  @override
  final String originalPackagePath;
  @override
  final SwidType value;

  @override
  String toString() {
    return 'SwidDefaultFormalParameter(name: $name, nullabilitySuffix: $nullabilitySuffix, originalPackagePath: $originalPackagePath, value: $value)';
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
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(nullabilitySuffix) ^
      const DeepCollectionEquality().hash(originalPackagePath) ^
      const DeepCollectionEquality().hash(value);

  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data implements SwidDefaultFormalParameter {
  factory _$Data(
      {@required String name,
      @required SwidNullabilitySuffix nullabilitySuffix,
      @required String originalPackagePath,
      @required SwidType value}) = _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get name;
  @override
  SwidNullabilitySuffix get nullabilitySuffix;
  @override
  String get originalPackagePath;
  @override
  SwidType get value;
  @override
  _$$DataCopyWith<_$Data> get copyWith;
}
