// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidStaticConstFieldDeclaration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwidStaticConstFieldDeclaration _$SwidStaticConstFieldDeclarationFromJson(
    Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$SwidStaticConstFieldDeclarationTearOff {
  const _$SwidStaticConstFieldDeclarationTearOff();

  _$Data call({required String name, required SwidStaticConst value}) {
    return _$Data(
      name: name,
      value: value,
    );
  }

  SwidStaticConstFieldDeclaration fromJson(Map<String, Object> json) {
    return SwidStaticConstFieldDeclaration.fromJson(json);
  }
}

/// @nodoc
const $SwidStaticConstFieldDeclaration =
    _$SwidStaticConstFieldDeclarationTearOff();

/// @nodoc
mixin _$SwidStaticConstFieldDeclaration {
  String get name => throw _privateConstructorUsedError;
  SwidStaticConst get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwidStaticConstFieldDeclarationCopyWith<SwidStaticConstFieldDeclaration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidStaticConstFieldDeclarationCopyWith<$Res> {
  factory $SwidStaticConstFieldDeclarationCopyWith(
          SwidStaticConstFieldDeclaration value,
          $Res Function(SwidStaticConstFieldDeclaration) then) =
      _$SwidStaticConstFieldDeclarationCopyWithImpl<$Res>;
  $Res call({String name, SwidStaticConst value});

  $SwidStaticConstCopyWith<$Res> get value;
}

/// @nodoc
class _$SwidStaticConstFieldDeclarationCopyWithImpl<$Res>
    implements $SwidStaticConstFieldDeclarationCopyWith<$Res> {
  _$SwidStaticConstFieldDeclarationCopyWithImpl(this._value, this._then);

  final SwidStaticConstFieldDeclaration _value;
  // ignore: unused_field
  final $Res Function(SwidStaticConstFieldDeclaration) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as SwidStaticConst,
    ));
  }

  @override
  $SwidStaticConstCopyWith<$Res> get value {
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
  $Res call({String name, SwidStaticConst value});

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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as SwidStaticConst,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$Data extends _$Data {
  _$_$Data({required this.name, required this.value}) : super._();

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final String name;
  @override
  final SwidStaticConst value;

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

abstract class _$Data extends SwidStaticConstFieldDeclaration {
  factory _$Data({required String name, required SwidStaticConst value}) =
      _$_$Data;
  _$Data._() : super._();

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  SwidStaticConst get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith => throw _privateConstructorUsedError;
}
