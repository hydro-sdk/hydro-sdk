// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidiAnnotation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwidiAnnotationTearOff {
  const _$SwidiAnnotationTearOff();

  _$SwidiAnnotationCtor call({required SwidiConst value}) {
    return _$SwidiAnnotationCtor(
      value: value,
    );
  }
}

/// @nodoc
const $SwidiAnnotation = _$SwidiAnnotationTearOff();

/// @nodoc
mixin _$SwidiAnnotation {
  SwidiConst get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwidiAnnotationCopyWith<SwidiAnnotation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidiAnnotationCopyWith<$Res> {
  factory $SwidiAnnotationCopyWith(
          SwidiAnnotation value, $Res Function(SwidiAnnotation) then) =
      _$SwidiAnnotationCopyWithImpl<$Res>;
  $Res call({SwidiConst value});

  $SwidiConstCopyWith<$Res> get value;
}

/// @nodoc
class _$SwidiAnnotationCopyWithImpl<$Res>
    implements $SwidiAnnotationCopyWith<$Res> {
  _$SwidiAnnotationCopyWithImpl(this._value, this._then);

  final SwidiAnnotation _value;
  // ignore: unused_field
  final $Res Function(SwidiAnnotation) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$SwidiAnnotationCtorCopyWith<$Res>
    implements $SwidiAnnotationCopyWith<$Res> {
  factory _$$SwidiAnnotationCtorCopyWith(_$SwidiAnnotationCtor value,
          $Res Function(_$SwidiAnnotationCtor) then) =
      __$$SwidiAnnotationCtorCopyWithImpl<$Res>;
  @override
  $Res call({SwidiConst value});

  @override
  $SwidiConstCopyWith<$Res> get value;
}

/// @nodoc
class __$$SwidiAnnotationCtorCopyWithImpl<$Res>
    extends _$SwidiAnnotationCopyWithImpl<$Res>
    implements _$$SwidiAnnotationCtorCopyWith<$Res> {
  __$$SwidiAnnotationCtorCopyWithImpl(
      _$SwidiAnnotationCtor _value, $Res Function(_$SwidiAnnotationCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiAnnotationCtor));

  @override
  _$SwidiAnnotationCtor get _value => super._value as _$SwidiAnnotationCtor;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$SwidiAnnotationCtor(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as SwidiConst,
    ));
  }
}

/// @nodoc

class _$_$SwidiAnnotationCtor extends _$SwidiAnnotationCtor {
  _$_$SwidiAnnotationCtor({required this.value}) : super._();

  @override
  final SwidiConst value;

  @override
  String toString() {
    return 'SwidiAnnotation(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiAnnotationCtor &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$$SwidiAnnotationCtorCopyWith<_$SwidiAnnotationCtor> get copyWith =>
      __$$SwidiAnnotationCtorCopyWithImpl<_$SwidiAnnotationCtor>(
          this, _$identity);
}

abstract class _$SwidiAnnotationCtor extends SwidiAnnotation {
  factory _$SwidiAnnotationCtor({required SwidiConst value}) =
      _$_$SwidiAnnotationCtor;
  _$SwidiAnnotationCtor._() : super._();

  @override
  SwidiConst get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidiAnnotationCtorCopyWith<_$SwidiAnnotationCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
