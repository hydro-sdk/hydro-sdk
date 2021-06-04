// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidStaticConstFieldDeclaration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidStaticConstFieldDeclaration _$SwidStaticConstFieldDeclarationFromJson(
    Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$SwidStaticConstFieldDeclarationTearOff {
  const _$SwidStaticConstFieldDeclarationTearOff();

// ignore: unused_element
  _$Data call(
      {required String name, @nullable required SwidStaticConst value}) {
    return _$Data(
      name: name,
      value: value,
    );
  }

// ignore: unused_element
  SwidStaticConstFieldDeclaration fromJson(Map<String, Object> json) {
    return SwidStaticConstFieldDeclaration.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidStaticConstFieldDeclaration =
    _$SwidStaticConstFieldDeclarationTearOff();

/// @nodoc
mixin _$SwidStaticConstFieldDeclaration {
  String get name;
  @nullable
  SwidStaticConst? get value;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SwidStaticConstFieldDeclarationCopyWith<SwidStaticConstFieldDeclaration>
      get copyWith;
}

/// @nodoc
abstract class $SwidStaticConstFieldDeclarationCopyWith<$Res> {
  factory $SwidStaticConstFieldDeclarationCopyWith(
          SwidStaticConstFieldDeclaration value,
          $Res Function(SwidStaticConstFieldDeclaration) then) =
      _$SwidStaticConstFieldDeclarationCopyWithImpl<$Res>;
  $Res call({String? name, @nullable SwidStaticConst? value});

  $SwidStaticConstCopyWith<$Res>? get value;
}

/// @nodoc
class _$SwidStaticConstFieldDeclarationCopyWithImpl<$Res>
    implements $SwidStaticConstFieldDeclarationCopyWith<$Res> {
  _$SwidStaticConstFieldDeclarationCopyWithImpl(this._value, this._then);

  final SwidStaticConstFieldDeclaration _value;
  // ignore: unused_field
  final $Res Function(SwidStaticConstFieldDeclaration?) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String?,
      value: value == freezed ? _value.value : value as SwidStaticConst?,
    ));
  }

  @override
  $SwidStaticConstCopyWith<$Res>? get value {
    if (_value.value == null) {
      return null;
    }
    return $SwidStaticConstCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res>
    implements $SwidStaticConstFieldDeclarationCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call({String? name, @nullable SwidStaticConst? value});

  @override
  $SwidStaticConstCopyWith<$Res> get value;
}

/// @nodoc
class __$$DataCopyWithImpl<$Res>
    extends _$SwidStaticConstFieldDeclarationCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$Data(
      name: name == freezed ? _value.name : (name as String?)!,
      value: value == freezed ? _value.value : value as SwidStaticConst?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$Data implements _$Data {
  const _$_$Data({required this.name, @nullable required this.value})
      : assert(name != null);

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final String name;
  @override
  @nullable
  final SwidStaticConst? value;

  @override
  String toString() {
    return 'SwidStaticConstFieldDeclaration(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$Data &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data implements SwidStaticConstFieldDeclaration {
  const factory _$Data(
      {required String name,
      @nullable required SwidStaticConst? value}) = _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get name;
  @override
  @nullable
  SwidStaticConst? get value;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith;
}
