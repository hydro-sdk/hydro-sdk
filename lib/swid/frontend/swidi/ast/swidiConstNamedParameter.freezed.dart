// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidiConstNamedParameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwidiConstNamedParameterTearOff {
  const _$SwidiConstNamedParameterTearOff();

  _$SwidiConstNamedParameterCtor call(
      {required String name, required SwidiConst value}) {
    return _$SwidiConstNamedParameterCtor(
      name: name,
      value: value,
    );
  }
}

/// @nodoc
const $SwidiConstNamedParameter = _$SwidiConstNamedParameterTearOff();

/// @nodoc
mixin _$SwidiConstNamedParameter {
  String get name => throw _privateConstructorUsedError;
  SwidiConst get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwidiConstNamedParameterCopyWith<SwidiConstNamedParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidiConstNamedParameterCopyWith<$Res> {
  factory $SwidiConstNamedParameterCopyWith(SwidiConstNamedParameter value,
          $Res Function(SwidiConstNamedParameter) then) =
      _$SwidiConstNamedParameterCopyWithImpl<$Res>;
  $Res call({String name, SwidiConst value});

  $SwidiConstCopyWith<$Res> get value;
}

/// @nodoc
class _$SwidiConstNamedParameterCopyWithImpl<$Res>
    implements $SwidiConstNamedParameterCopyWith<$Res> {
  _$SwidiConstNamedParameterCopyWithImpl(this._value, this._then);

  final SwidiConstNamedParameter _value;
  // ignore: unused_field
  final $Res Function(SwidiConstNamedParameter) _then;

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
              as SwidiConst,
    ));
  }

  @override
  $SwidiConstCopyWith<$Res> get value {
    return $SwidiConstCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
abstract class _$$SwidiConstNamedParameterCtorCopyWith<$Res>
    implements $SwidiConstNamedParameterCopyWith<$Res> {
  factory _$$SwidiConstNamedParameterCtorCopyWith(
          _$SwidiConstNamedParameterCtor value,
          $Res Function(_$SwidiConstNamedParameterCtor) then) =
      __$$SwidiConstNamedParameterCtorCopyWithImpl<$Res>;
  @override
  $Res call({String name, SwidiConst value});

  @override
  $SwidiConstCopyWith<$Res> get value;
}

/// @nodoc
class __$$SwidiConstNamedParameterCtorCopyWithImpl<$Res>
    extends _$SwidiConstNamedParameterCopyWithImpl<$Res>
    implements _$$SwidiConstNamedParameterCtorCopyWith<$Res> {
  __$$SwidiConstNamedParameterCtorCopyWithImpl(
      _$SwidiConstNamedParameterCtor _value,
      $Res Function(_$SwidiConstNamedParameterCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiConstNamedParameterCtor));

  @override
  _$SwidiConstNamedParameterCtor get _value =>
      super._value as _$SwidiConstNamedParameterCtor;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$SwidiConstNamedParameterCtor(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as SwidiConst,
    ));
  }
}

/// @nodoc

class _$_$SwidiConstNamedParameterCtor extends _$SwidiConstNamedParameterCtor {
  _$_$SwidiConstNamedParameterCtor({required this.name, required this.value})
      : super._();

  @override
  final String name;
  @override
  final SwidiConst value;

  @override
  String toString() {
    return 'SwidiConstNamedParameter(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiConstNamedParameterCtor &&
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
  _$$SwidiConstNamedParameterCtorCopyWith<_$SwidiConstNamedParameterCtor>
      get copyWith => __$$SwidiConstNamedParameterCtorCopyWithImpl<
          _$SwidiConstNamedParameterCtor>(this, _$identity);
}

abstract class _$SwidiConstNamedParameterCtor extends SwidiConstNamedParameter {
  factory _$SwidiConstNamedParameterCtor(
      {required String name,
      required SwidiConst value}) = _$_$SwidiConstNamedParameterCtor;
  _$SwidiConstNamedParameterCtor._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  SwidiConst get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidiConstNamedParameterCtorCopyWith<_$SwidiConstNamedParameterCtor>
      get copyWith => throw _privateConstructorUsedError;
}
