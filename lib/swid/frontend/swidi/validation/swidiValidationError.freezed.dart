// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidiValidationError.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwidiValidationError _$SwidiValidationErrorFromJson(Map<String, dynamic> json) {
  return _$SwidiValidationErrorCtor.fromJson(json);
}

/// @nodoc
class _$SwidiValidationErrorTearOff {
  const _$SwidiValidationErrorTearOff();

  _$SwidiValidationErrorCtor call({required String message}) {
    return _$SwidiValidationErrorCtor(
      message: message,
    );
  }

  SwidiValidationError fromJson(Map<String, Object> json) {
    return SwidiValidationError.fromJson(json);
  }
}

/// @nodoc
const $SwidiValidationError = _$SwidiValidationErrorTearOff();

/// @nodoc
mixin _$SwidiValidationError {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwidiValidationErrorCopyWith<SwidiValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidiValidationErrorCopyWith<$Res> {
  factory $SwidiValidationErrorCopyWith(SwidiValidationError value,
          $Res Function(SwidiValidationError) then) =
      _$SwidiValidationErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$SwidiValidationErrorCopyWithImpl<$Res>
    implements $SwidiValidationErrorCopyWith<$Res> {
  _$SwidiValidationErrorCopyWithImpl(this._value, this._then);

  final SwidiValidationError _value;
  // ignore: unused_field
  final $Res Function(SwidiValidationError) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$SwidiValidationErrorCtorCopyWith<$Res>
    implements $SwidiValidationErrorCopyWith<$Res> {
  factory _$$SwidiValidationErrorCtorCopyWith(_$SwidiValidationErrorCtor value,
          $Res Function(_$SwidiValidationErrorCtor) then) =
      __$$SwidiValidationErrorCtorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$SwidiValidationErrorCtorCopyWithImpl<$Res>
    extends _$SwidiValidationErrorCopyWithImpl<$Res>
    implements _$$SwidiValidationErrorCtorCopyWith<$Res> {
  __$$SwidiValidationErrorCtorCopyWithImpl(_$SwidiValidationErrorCtor _value,
      $Res Function(_$SwidiValidationErrorCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiValidationErrorCtor));

  @override
  _$SwidiValidationErrorCtor get _value =>
      super._value as _$SwidiValidationErrorCtor;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SwidiValidationErrorCtor(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SwidiValidationErrorCtor extends _$SwidiValidationErrorCtor {
  const _$_$SwidiValidationErrorCtor({required this.message}) : super._();

  factory _$_$SwidiValidationErrorCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$SwidiValidationErrorCtorFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'SwidiValidationError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiValidationErrorCtor &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$$SwidiValidationErrorCtorCopyWith<_$SwidiValidationErrorCtor>
      get copyWith =>
          __$$SwidiValidationErrorCtorCopyWithImpl<_$SwidiValidationErrorCtor>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidiValidationErrorCtorToJson(this);
  }
}

abstract class _$SwidiValidationErrorCtor extends SwidiValidationError {
  const factory _$SwidiValidationErrorCtor({required String message}) =
      _$_$SwidiValidationErrorCtor;
  const _$SwidiValidationErrorCtor._() : super._();

  factory _$SwidiValidationErrorCtor.fromJson(Map<String, dynamic> json) =
      _$_$SwidiValidationErrorCtor.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidiValidationErrorCtorCopyWith<_$SwidiValidationErrorCtor>
      get copyWith => throw _privateConstructorUsedError;
}
