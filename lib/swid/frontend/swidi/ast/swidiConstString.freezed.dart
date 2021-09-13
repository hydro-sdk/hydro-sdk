// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidiConstString.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwidiConstStringTearOff {
  const _$SwidiConstStringTearOff();

  _$SwidiConstStringCtor call({required String value}) {
    return _$SwidiConstStringCtor(
      value: value,
    );
  }
}

/// @nodoc
const $SwidiConstString = _$SwidiConstStringTearOff();

/// @nodoc
mixin _$SwidiConstString {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwidiConstStringCopyWith<SwidiConstString> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidiConstStringCopyWith<$Res> {
  factory $SwidiConstStringCopyWith(
          SwidiConstString value, $Res Function(SwidiConstString) then) =
      _$SwidiConstStringCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SwidiConstStringCopyWithImpl<$Res>
    implements $SwidiConstStringCopyWith<$Res> {
  _$SwidiConstStringCopyWithImpl(this._value, this._then);

  final SwidiConstString _value;
  // ignore: unused_field
  final $Res Function(SwidiConstString) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$SwidiConstStringCtorCopyWith<$Res>
    implements $SwidiConstStringCopyWith<$Res> {
  factory _$$SwidiConstStringCtorCopyWith(_$SwidiConstStringCtor value,
          $Res Function(_$SwidiConstStringCtor) then) =
      __$$SwidiConstStringCtorCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$SwidiConstStringCtorCopyWithImpl<$Res>
    extends _$SwidiConstStringCopyWithImpl<$Res>
    implements _$$SwidiConstStringCtorCopyWith<$Res> {
  __$$SwidiConstStringCtorCopyWithImpl(_$SwidiConstStringCtor _value,
      $Res Function(_$SwidiConstStringCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiConstStringCtor));

  @override
  _$SwidiConstStringCtor get _value => super._value as _$SwidiConstStringCtor;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$SwidiConstStringCtor(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$SwidiConstStringCtor extends _$SwidiConstStringCtor {
  _$_$SwidiConstStringCtor({required this.value}) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'SwidiConstString(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiConstStringCtor &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$$SwidiConstStringCtorCopyWith<_$SwidiConstStringCtor> get copyWith =>
      __$$SwidiConstStringCtorCopyWithImpl<_$SwidiConstStringCtor>(
          this, _$identity);
}

abstract class _$SwidiConstStringCtor extends SwidiConstString {
  factory _$SwidiConstStringCtor({required String value}) =
      _$_$SwidiConstStringCtor;
  _$SwidiConstStringCtor._() : super._();

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidiConstStringCtorCopyWith<_$SwidiConstStringCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
