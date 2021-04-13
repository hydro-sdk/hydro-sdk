// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidiConstNumber.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SwidiConstNumberTearOff {
  const _$SwidiConstNumberTearOff();

// ignore: unused_element
  _$SwidiConstNumberCtor call({@required String value}) {
    return _$SwidiConstNumberCtor(
      value: value,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SwidiConstNumber = _$SwidiConstNumberTearOff();

/// @nodoc
mixin _$SwidiConstNumber {
  String get value;

  @JsonKey(ignore: true)
  $SwidiConstNumberCopyWith<SwidiConstNumber> get copyWith;
}

/// @nodoc
abstract class $SwidiConstNumberCopyWith<$Res> {
  factory $SwidiConstNumberCopyWith(
          SwidiConstNumber value, $Res Function(SwidiConstNumber) then) =
      _$SwidiConstNumberCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SwidiConstNumberCopyWithImpl<$Res>
    implements $SwidiConstNumberCopyWith<$Res> {
  _$SwidiConstNumberCopyWithImpl(this._value, this._then);

  final SwidiConstNumber _value;
  // ignore: unused_field
  final $Res Function(SwidiConstNumber) _then;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
abstract class _$$SwidiConstNumberCtorCopyWith<$Res>
    implements $SwidiConstNumberCopyWith<$Res> {
  factory _$$SwidiConstNumberCtorCopyWith(_$SwidiConstNumberCtor value,
          $Res Function(_$SwidiConstNumberCtor) then) =
      __$$SwidiConstNumberCtorCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$SwidiConstNumberCtorCopyWithImpl<$Res>
    extends _$SwidiConstNumberCopyWithImpl<$Res>
    implements _$$SwidiConstNumberCtorCopyWith<$Res> {
  __$$SwidiConstNumberCtorCopyWithImpl(_$SwidiConstNumberCtor _value,
      $Res Function(_$SwidiConstNumberCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiConstNumberCtor));

  @override
  _$SwidiConstNumberCtor get _value => super._value as _$SwidiConstNumberCtor;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_$SwidiConstNumberCtor(
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
class _$_$SwidiConstNumberCtor implements _$SwidiConstNumberCtor {
  const _$_$SwidiConstNumberCtor({@required this.value})
      : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'SwidiConstNumber(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiConstNumberCtor &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$$SwidiConstNumberCtorCopyWith<_$SwidiConstNumberCtor> get copyWith =>
      __$$SwidiConstNumberCtorCopyWithImpl<_$SwidiConstNumberCtor>(
          this, _$identity);
}

abstract class _$SwidiConstNumberCtor implements SwidiConstNumber {
  const factory _$SwidiConstNumberCtor({@required String value}) =
      _$_$SwidiConstNumberCtor;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$SwidiConstNumberCtorCopyWith<_$SwidiConstNumberCtor> get copyWith;
}
