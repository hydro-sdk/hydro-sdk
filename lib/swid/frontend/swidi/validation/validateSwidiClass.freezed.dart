// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'validateSwidiClass.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwidiClassValidationState _$SwidiClassValidationStateFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'valid':
      return _$SwidiClassValidationStateValid.fromJson(json);
    case 'invalid':
      return _$SwidiClassValidationStateInvalid.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$SwidiClassValidationStateTearOff {
  const _$SwidiClassValidationStateTearOff();

  _$SwidiClassValidationStateValid valid() {
    return const _$SwidiClassValidationStateValid();
  }

  _$SwidiClassValidationStateInvalid invalid(
      {required SwidiValidationError swidiValidationError}) {
    return _$SwidiClassValidationStateInvalid(
      swidiValidationError: swidiValidationError,
    );
  }

  SwidiClassValidationState fromJson(Map<String, Object> json) {
    return SwidiClassValidationState.fromJson(json);
  }
}

/// @nodoc
const $SwidiClassValidationState = _$SwidiClassValidationStateTearOff();

/// @nodoc
mixin _$SwidiClassValidationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() valid,
    required TResult Function(SwidiValidationError swidiValidationError)
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? valid,
    TResult Function(SwidiValidationError swidiValidationError)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SwidiClassValidationStateValid value) valid,
    required TResult Function(_$SwidiClassValidationStateInvalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SwidiClassValidationStateValid value)? valid,
    TResult Function(_$SwidiClassValidationStateInvalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidiClassValidationStateCopyWith<$Res> {
  factory $SwidiClassValidationStateCopyWith(SwidiClassValidationState value,
          $Res Function(SwidiClassValidationState) then) =
      _$SwidiClassValidationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwidiClassValidationStateCopyWithImpl<$Res>
    implements $SwidiClassValidationStateCopyWith<$Res> {
  _$SwidiClassValidationStateCopyWithImpl(this._value, this._then);

  final SwidiClassValidationState _value;
  // ignore: unused_field
  final $Res Function(SwidiClassValidationState) _then;
}

/// @nodoc
abstract class _$$SwidiClassValidationStateValidCopyWith<$Res> {
  factory _$$SwidiClassValidationStateValidCopyWith(
          _$SwidiClassValidationStateValid value,
          $Res Function(_$SwidiClassValidationStateValid) then) =
      __$$SwidiClassValidationStateValidCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwidiClassValidationStateValidCopyWithImpl<$Res>
    extends _$SwidiClassValidationStateCopyWithImpl<$Res>
    implements _$$SwidiClassValidationStateValidCopyWith<$Res> {
  __$$SwidiClassValidationStateValidCopyWithImpl(
      _$SwidiClassValidationStateValid _value,
      $Res Function(_$SwidiClassValidationStateValid) _then)
      : super(_value, (v) => _then(v as _$SwidiClassValidationStateValid));

  @override
  _$SwidiClassValidationStateValid get _value =>
      super._value as _$SwidiClassValidationStateValid;
}

/// @nodoc
@JsonSerializable()
class _$_$SwidiClassValidationStateValid
    extends _$SwidiClassValidationStateValid {
  const _$_$SwidiClassValidationStateValid() : super._();

  factory _$_$SwidiClassValidationStateValid.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$SwidiClassValidationStateValidFromJson(json);

  @override
  String toString() {
    return 'SwidiClassValidationState.valid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiClassValidationStateValid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() valid,
    required TResult Function(SwidiValidationError swidiValidationError)
        invalid,
  }) {
    return valid();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? valid,
    TResult Function(SwidiValidationError swidiValidationError)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SwidiClassValidationStateValid value) valid,
    required TResult Function(_$SwidiClassValidationStateInvalid value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SwidiClassValidationStateValid value)? valid,
    TResult Function(_$SwidiClassValidationStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidiClassValidationStateValidToJson(this)
      ..['runtimeType'] = 'valid';
  }
}

abstract class _$SwidiClassValidationStateValid
    extends SwidiClassValidationState {
  const factory _$SwidiClassValidationStateValid() =
      _$_$SwidiClassValidationStateValid;
  const _$SwidiClassValidationStateValid._() : super._();

  factory _$SwidiClassValidationStateValid.fromJson(Map<String, dynamic> json) =
      _$_$SwidiClassValidationStateValid.fromJson;
}

/// @nodoc
abstract class _$$SwidiClassValidationStateInvalidCopyWith<$Res> {
  factory _$$SwidiClassValidationStateInvalidCopyWith(
          _$SwidiClassValidationStateInvalid value,
          $Res Function(_$SwidiClassValidationStateInvalid) then) =
      __$$SwidiClassValidationStateInvalidCopyWithImpl<$Res>;
  $Res call({SwidiValidationError swidiValidationError});

  $SwidiValidationErrorCopyWith<$Res> get swidiValidationError;
}

/// @nodoc
class __$$SwidiClassValidationStateInvalidCopyWithImpl<$Res>
    extends _$SwidiClassValidationStateCopyWithImpl<$Res>
    implements _$$SwidiClassValidationStateInvalidCopyWith<$Res> {
  __$$SwidiClassValidationStateInvalidCopyWithImpl(
      _$SwidiClassValidationStateInvalid _value,
      $Res Function(_$SwidiClassValidationStateInvalid) _then)
      : super(_value, (v) => _then(v as _$SwidiClassValidationStateInvalid));

  @override
  _$SwidiClassValidationStateInvalid get _value =>
      super._value as _$SwidiClassValidationStateInvalid;

  @override
  $Res call({
    Object? swidiValidationError = freezed,
  }) {
    return _then(_$SwidiClassValidationStateInvalid(
      swidiValidationError: swidiValidationError == freezed
          ? _value.swidiValidationError
          : swidiValidationError // ignore: cast_nullable_to_non_nullable
              as SwidiValidationError,
    ));
  }

  @override
  $SwidiValidationErrorCopyWith<$Res> get swidiValidationError {
    return $SwidiValidationErrorCopyWith<$Res>(_value.swidiValidationError,
        (value) {
      return _then(_value.copyWith(swidiValidationError: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SwidiClassValidationStateInvalid
    extends _$SwidiClassValidationStateInvalid {
  const _$_$SwidiClassValidationStateInvalid(
      {required this.swidiValidationError})
      : super._();

  factory _$_$SwidiClassValidationStateInvalid.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$SwidiClassValidationStateInvalidFromJson(json);

  @override
  final SwidiValidationError swidiValidationError;

  @override
  String toString() {
    return 'SwidiClassValidationState.invalid(swidiValidationError: $swidiValidationError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiClassValidationStateInvalid &&
            (identical(other.swidiValidationError, swidiValidationError) ||
                const DeepCollectionEquality()
                    .equals(other.swidiValidationError, swidiValidationError)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(swidiValidationError);

  @JsonKey(ignore: true)
  @override
  _$$SwidiClassValidationStateInvalidCopyWith<
          _$SwidiClassValidationStateInvalid>
      get copyWith => __$$SwidiClassValidationStateInvalidCopyWithImpl<
          _$SwidiClassValidationStateInvalid>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() valid,
    required TResult Function(SwidiValidationError swidiValidationError)
        invalid,
  }) {
    return invalid(swidiValidationError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? valid,
    TResult Function(SwidiValidationError swidiValidationError)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(swidiValidationError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SwidiClassValidationStateValid value) valid,
    required TResult Function(_$SwidiClassValidationStateInvalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SwidiClassValidationStateValid value)? valid,
    TResult Function(_$SwidiClassValidationStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidiClassValidationStateInvalidToJson(this)
      ..['runtimeType'] = 'invalid';
  }
}

abstract class _$SwidiClassValidationStateInvalid
    extends SwidiClassValidationState {
  const factory _$SwidiClassValidationStateInvalid(
          {required SwidiValidationError swidiValidationError}) =
      _$_$SwidiClassValidationStateInvalid;
  const _$SwidiClassValidationStateInvalid._() : super._();

  factory _$SwidiClassValidationStateInvalid.fromJson(
          Map<String, dynamic> json) =
      _$_$SwidiClassValidationStateInvalid.fromJson;

  SwidiValidationError get swidiValidationError =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SwidiClassValidationStateInvalidCopyWith<
          _$SwidiClassValidationStateInvalid>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ValidateSwidiClassTearOff {
  const _$ValidateSwidiClassTearOff();

  _$ValidateSwidiClassCtor call({required SwidiClass swidiClass}) {
    return _$ValidateSwidiClassCtor(
      swidiClass: swidiClass,
    );
  }
}

/// @nodoc
const $ValidateSwidiClass = _$ValidateSwidiClassTearOff();

/// @nodoc
mixin _$ValidateSwidiClass {
  SwidiClass get swidiClass => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValidateSwidiClassCopyWith<ValidateSwidiClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateSwidiClassCopyWith<$Res> {
  factory $ValidateSwidiClassCopyWith(
          ValidateSwidiClass value, $Res Function(ValidateSwidiClass) then) =
      _$ValidateSwidiClassCopyWithImpl<$Res>;
  $Res call({SwidiClass swidiClass});

  $SwidiClassCopyWith<$Res> get swidiClass;
}

/// @nodoc
class _$ValidateSwidiClassCopyWithImpl<$Res>
    implements $ValidateSwidiClassCopyWith<$Res> {
  _$ValidateSwidiClassCopyWithImpl(this._value, this._then);

  final ValidateSwidiClass _value;
  // ignore: unused_field
  final $Res Function(ValidateSwidiClass) _then;

  @override
  $Res call({
    Object? swidiClass = freezed,
  }) {
    return _then(_value.copyWith(
      swidiClass: swidiClass == freezed
          ? _value.swidiClass
          : swidiClass // ignore: cast_nullable_to_non_nullable
              as SwidiClass,
    ));
  }

  @override
  $SwidiClassCopyWith<$Res> get swidiClass {
    return $SwidiClassCopyWith<$Res>(_value.swidiClass, (value) {
      return _then(_value.copyWith(swidiClass: value));
    });
  }
}

/// @nodoc
abstract class _$$ValidateSwidiClassCtorCopyWith<$Res>
    implements $ValidateSwidiClassCopyWith<$Res> {
  factory _$$ValidateSwidiClassCtorCopyWith(_$ValidateSwidiClassCtor value,
          $Res Function(_$ValidateSwidiClassCtor) then) =
      __$$ValidateSwidiClassCtorCopyWithImpl<$Res>;
  @override
  $Res call({SwidiClass swidiClass});

  @override
  $SwidiClassCopyWith<$Res> get swidiClass;
}

/// @nodoc
class __$$ValidateSwidiClassCtorCopyWithImpl<$Res>
    extends _$ValidateSwidiClassCopyWithImpl<$Res>
    implements _$$ValidateSwidiClassCtorCopyWith<$Res> {
  __$$ValidateSwidiClassCtorCopyWithImpl(_$ValidateSwidiClassCtor _value,
      $Res Function(_$ValidateSwidiClassCtor) _then)
      : super(_value, (v) => _then(v as _$ValidateSwidiClassCtor));

  @override
  _$ValidateSwidiClassCtor get _value =>
      super._value as _$ValidateSwidiClassCtor;

  @override
  $Res call({
    Object? swidiClass = freezed,
  }) {
    return _then(_$ValidateSwidiClassCtor(
      swidiClass: swidiClass == freezed
          ? _value.swidiClass
          : swidiClass // ignore: cast_nullable_to_non_nullable
              as SwidiClass,
    ));
  }
}

/// @nodoc

class _$_$ValidateSwidiClassCtor extends _$ValidateSwidiClassCtor {
  _$_$ValidateSwidiClassCtor({required this.swidiClass}) : super._();

  @override
  final SwidiClass swidiClass;

  @override
  String toString() {
    return 'ValidateSwidiClass(swidiClass: $swidiClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ValidateSwidiClassCtor &&
            (identical(other.swidiClass, swidiClass) ||
                const DeepCollectionEquality()
                    .equals(other.swidiClass, swidiClass)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(swidiClass);

  @JsonKey(ignore: true)
  @override
  _$$ValidateSwidiClassCtorCopyWith<_$ValidateSwidiClassCtor> get copyWith =>
      __$$ValidateSwidiClassCtorCopyWithImpl<_$ValidateSwidiClassCtor>(
          this, _$identity);
}

abstract class _$ValidateSwidiClassCtor extends ValidateSwidiClass {
  factory _$ValidateSwidiClassCtor({required SwidiClass swidiClass}) =
      _$_$ValidateSwidiClassCtor;
  _$ValidateSwidiClassCtor._() : super._();

  @override
  SwidiClass get swidiClass => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ValidateSwidiClassCtorCopyWith<_$ValidateSwidiClassCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
