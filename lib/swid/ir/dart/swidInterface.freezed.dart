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
      {@required String name,
      @required SwidNullabilitySuffix nullabilitySuffix,
      @required String originalPackagePath}) {
    return _$Data(
      name: name,
      nullabilitySuffix: nullabilitySuffix,
      originalPackagePath: originalPackagePath,
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

  Map<String, dynamic> toJson();
  $SwidInterfaceCopyWith<SwidInterface> get copyWith;
}

/// @nodoc
abstract class $SwidInterfaceCopyWith<$Res> {
  factory $SwidInterfaceCopyWith(
          SwidInterface value, $Res Function(SwidInterface) then) =
      _$SwidInterfaceCopyWithImpl<$Res>;
  $Res call(
      {String name,
      SwidNullabilitySuffix nullabilitySuffix,
      String originalPackagePath});
}

/// @nodoc
class _$SwidInterfaceCopyWithImpl<$Res>
    implements $SwidInterfaceCopyWith<$Res> {
  _$SwidInterfaceCopyWithImpl(this._value, this._then);

  final SwidInterface _value;
  // ignore: unused_field
  final $Res Function(SwidInterface) _then;

  @override
  $Res call({
    Object name = freezed,
    Object nullabilitySuffix = freezed,
    Object originalPackagePath = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      nullabilitySuffix: nullabilitySuffix == freezed
          ? _value.nullabilitySuffix
          : nullabilitySuffix as SwidNullabilitySuffix,
      originalPackagePath: originalPackagePath == freezed
          ? _value.originalPackagePath
          : originalPackagePath as String,
    ));
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res> implements $SwidInterfaceCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      SwidNullabilitySuffix nullabilitySuffix,
      String originalPackagePath});
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
    Object name = freezed,
    Object nullabilitySuffix = freezed,
    Object originalPackagePath = freezed,
  }) {
    return _then(_$Data(
      name: name == freezed ? _value.name : name as String,
      nullabilitySuffix: nullabilitySuffix == freezed
          ? _value.nullabilitySuffix
          : nullabilitySuffix as SwidNullabilitySuffix,
      originalPackagePath: originalPackagePath == freezed
          ? _value.originalPackagePath
          : originalPackagePath as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$Data implements _$Data {
  _$_$Data(
      {@required this.name,
      @required this.nullabilitySuffix,
      @required this.originalPackagePath})
      : assert(name != null),
        assert(nullabilitySuffix != null),
        assert(originalPackagePath != null);

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final String name;
  @override
  final SwidNullabilitySuffix nullabilitySuffix;
  @override
  final String originalPackagePath;

  @override
  String toString() {
    return 'SwidInterface(name: $name, nullabilitySuffix: $nullabilitySuffix, originalPackagePath: $originalPackagePath)';
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
                    .equals(other.originalPackagePath, originalPackagePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(nullabilitySuffix) ^
      const DeepCollectionEquality().hash(originalPackagePath);

  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data implements SwidInterface {
  factory _$Data(
      {@required String name,
      @required SwidNullabilitySuffix nullabilitySuffix,
      @required String originalPackagePath}) = _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get name;
  @override
  SwidNullabilitySuffix get nullabilitySuffix;
  @override
  String get originalPackagePath;
  @override
  _$$DataCopyWith<_$Data> get copyWith;
}
