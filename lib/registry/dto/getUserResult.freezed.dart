// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'getUserResult.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetUserResult _$GetUserResultFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'success':
      return _$GetUserResultSuccess.fromJson(json);
    case 'failure':
      return _$GetUserResultFailure.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$GetUserResultTearOff {
  const _$GetUserResultTearOff();

  _$GetUserResultSuccess success(
      {required GetUserSuccessResult getUserSuccessResult}) {
    return _$GetUserResultSuccess(
      getUserSuccessResult: getUserSuccessResult,
    );
  }

  _$GetUserResultFailure failure(
      {required GetUserFailureResult getUserFailureResult}) {
    return _$GetUserResultFailure(
      getUserFailureResult: getUserFailureResult,
    );
  }

  GetUserResult fromJson(Map<String, Object> json) {
    return GetUserResult.fromJson(json);
  }
}

/// @nodoc
const $GetUserResult = _$GetUserResultTearOff();

/// @nodoc
mixin _$GetUserResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetUserSuccessResult getUserSuccessResult)
        success,
    required TResult Function(GetUserFailureResult getUserFailureResult)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetUserSuccessResult getUserSuccessResult)? success,
    TResult Function(GetUserFailureResult getUserFailureResult)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetUserResultSuccess value) success,
    required TResult Function(_$GetUserResultFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetUserResultSuccess value)? success,
    TResult Function(_$GetUserResultFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserResultCopyWith<$Res> {
  factory $GetUserResultCopyWith(
          GetUserResult value, $Res Function(GetUserResult) then) =
      _$GetUserResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserResultCopyWithImpl<$Res>
    implements $GetUserResultCopyWith<$Res> {
  _$GetUserResultCopyWithImpl(this._value, this._then);

  final GetUserResult _value;
  // ignore: unused_field
  final $Res Function(GetUserResult) _then;
}

/// @nodoc
abstract class _$$GetUserResultSuccessCopyWith<$Res> {
  factory _$$GetUserResultSuccessCopyWith(_$GetUserResultSuccess value,
          $Res Function(_$GetUserResultSuccess) then) =
      __$$GetUserResultSuccessCopyWithImpl<$Res>;
  $Res call({GetUserSuccessResult getUserSuccessResult});

  $GetUserSuccessResultCopyWith<$Res> get getUserSuccessResult;
}

/// @nodoc
class __$$GetUserResultSuccessCopyWithImpl<$Res>
    extends _$GetUserResultCopyWithImpl<$Res>
    implements _$$GetUserResultSuccessCopyWith<$Res> {
  __$$GetUserResultSuccessCopyWithImpl(_$GetUserResultSuccess _value,
      $Res Function(_$GetUserResultSuccess) _then)
      : super(_value, (v) => _then(v as _$GetUserResultSuccess));

  @override
  _$GetUserResultSuccess get _value => super._value as _$GetUserResultSuccess;

  @override
  $Res call({
    Object? getUserSuccessResult = freezed,
  }) {
    return _then(_$GetUserResultSuccess(
      getUserSuccessResult: getUserSuccessResult == freezed
          ? _value.getUserSuccessResult
          : getUserSuccessResult // ignore: cast_nullable_to_non_nullable
              as GetUserSuccessResult,
    ));
  }

  @override
  $GetUserSuccessResultCopyWith<$Res> get getUserSuccessResult {
    return $GetUserSuccessResultCopyWith<$Res>(_value.getUserSuccessResult,
        (value) {
      return _then(_value.copyWith(getUserSuccessResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetUserResultSuccess extends _$GetUserResultSuccess {
  const _$_$GetUserResultSuccess({required this.getUserSuccessResult})
      : super._();

  factory _$_$GetUserResultSuccess.fromJson(Map<String, dynamic> json) =>
      _$_$_$GetUserResultSuccessFromJson(json);

  @override
  final GetUserSuccessResult getUserSuccessResult;

  @override
  String toString() {
    return 'GetUserResult.success(getUserSuccessResult: $getUserSuccessResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetUserResultSuccess &&
            (identical(other.getUserSuccessResult, getUserSuccessResult) ||
                const DeepCollectionEquality()
                    .equals(other.getUserSuccessResult, getUserSuccessResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(getUserSuccessResult);

  @JsonKey(ignore: true)
  @override
  _$$GetUserResultSuccessCopyWith<_$GetUserResultSuccess> get copyWith =>
      __$$GetUserResultSuccessCopyWithImpl<_$GetUserResultSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetUserSuccessResult getUserSuccessResult)
        success,
    required TResult Function(GetUserFailureResult getUserFailureResult)
        failure,
  }) {
    return success(getUserSuccessResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetUserSuccessResult getUserSuccessResult)? success,
    TResult Function(GetUserFailureResult getUserFailureResult)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(getUserSuccessResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetUserResultSuccess value) success,
    required TResult Function(_$GetUserResultFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetUserResultSuccess value)? success,
    TResult Function(_$GetUserResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetUserResultSuccessToJson(this)..['runtimeType'] = 'success';
  }
}

abstract class _$GetUserResultSuccess extends GetUserResult {
  const factory _$GetUserResultSuccess(
          {required GetUserSuccessResult getUserSuccessResult}) =
      _$_$GetUserResultSuccess;
  const _$GetUserResultSuccess._() : super._();

  factory _$GetUserResultSuccess.fromJson(Map<String, dynamic> json) =
      _$_$GetUserResultSuccess.fromJson;

  GetUserSuccessResult get getUserSuccessResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetUserResultSuccessCopyWith<_$GetUserResultSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserResultFailureCopyWith<$Res> {
  factory _$$GetUserResultFailureCopyWith(_$GetUserResultFailure value,
          $Res Function(_$GetUserResultFailure) then) =
      __$$GetUserResultFailureCopyWithImpl<$Res>;
  $Res call({GetUserFailureResult getUserFailureResult});

  $GetUserFailureResultCopyWith<$Res> get getUserFailureResult;
}

/// @nodoc
class __$$GetUserResultFailureCopyWithImpl<$Res>
    extends _$GetUserResultCopyWithImpl<$Res>
    implements _$$GetUserResultFailureCopyWith<$Res> {
  __$$GetUserResultFailureCopyWithImpl(_$GetUserResultFailure _value,
      $Res Function(_$GetUserResultFailure) _then)
      : super(_value, (v) => _then(v as _$GetUserResultFailure));

  @override
  _$GetUserResultFailure get _value => super._value as _$GetUserResultFailure;

  @override
  $Res call({
    Object? getUserFailureResult = freezed,
  }) {
    return _then(_$GetUserResultFailure(
      getUserFailureResult: getUserFailureResult == freezed
          ? _value.getUserFailureResult
          : getUserFailureResult // ignore: cast_nullable_to_non_nullable
              as GetUserFailureResult,
    ));
  }

  @override
  $GetUserFailureResultCopyWith<$Res> get getUserFailureResult {
    return $GetUserFailureResultCopyWith<$Res>(_value.getUserFailureResult,
        (value) {
      return _then(_value.copyWith(getUserFailureResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetUserResultFailure extends _$GetUserResultFailure {
  const _$_$GetUserResultFailure({required this.getUserFailureResult})
      : super._();

  factory _$_$GetUserResultFailure.fromJson(Map<String, dynamic> json) =>
      _$_$_$GetUserResultFailureFromJson(json);

  @override
  final GetUserFailureResult getUserFailureResult;

  @override
  String toString() {
    return 'GetUserResult.failure(getUserFailureResult: $getUserFailureResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetUserResultFailure &&
            (identical(other.getUserFailureResult, getUserFailureResult) ||
                const DeepCollectionEquality()
                    .equals(other.getUserFailureResult, getUserFailureResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(getUserFailureResult);

  @JsonKey(ignore: true)
  @override
  _$$GetUserResultFailureCopyWith<_$GetUserResultFailure> get copyWith =>
      __$$GetUserResultFailureCopyWithImpl<_$GetUserResultFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetUserSuccessResult getUserSuccessResult)
        success,
    required TResult Function(GetUserFailureResult getUserFailureResult)
        failure,
  }) {
    return failure(getUserFailureResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetUserSuccessResult getUserSuccessResult)? success,
    TResult Function(GetUserFailureResult getUserFailureResult)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(getUserFailureResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetUserResultSuccess value) success,
    required TResult Function(_$GetUserResultFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetUserResultSuccess value)? success,
    TResult Function(_$GetUserResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetUserResultFailureToJson(this)..['runtimeType'] = 'failure';
  }
}

abstract class _$GetUserResultFailure extends GetUserResult {
  const factory _$GetUserResultFailure(
          {required GetUserFailureResult getUserFailureResult}) =
      _$_$GetUserResultFailure;
  const _$GetUserResultFailure._() : super._();

  factory _$GetUserResultFailure.fromJson(Map<String, dynamic> json) =
      _$_$GetUserResultFailure.fromJson;

  GetUserFailureResult get getUserFailureResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetUserResultFailureCopyWith<_$GetUserResultFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

GetUserSuccessResult _$GetUserSuccessResultFromJson(Map<String, dynamic> json) {
  return _$GetUserSuccessResultCtor.fromJson(json);
}

/// @nodoc
class _$GetUserSuccessResultTearOff {
  const _$GetUserSuccessResultTearOff();

  _$GetUserSuccessResultCtor call(
      {required int statusCode, required UserReadDto result}) {
    return _$GetUserSuccessResultCtor(
      statusCode: statusCode,
      result: result,
    );
  }

  GetUserSuccessResult fromJson(Map<String, Object> json) {
    return GetUserSuccessResult.fromJson(json);
  }
}

/// @nodoc
const $GetUserSuccessResult = _$GetUserSuccessResultTearOff();

/// @nodoc
mixin _$GetUserSuccessResult {
  int get statusCode => throw _privateConstructorUsedError;
  UserReadDto get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUserSuccessResultCopyWith<GetUserSuccessResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserSuccessResultCopyWith<$Res> {
  factory $GetUserSuccessResultCopyWith(GetUserSuccessResult value,
          $Res Function(GetUserSuccessResult) then) =
      _$GetUserSuccessResultCopyWithImpl<$Res>;
  $Res call({int statusCode, UserReadDto result});

  $UserReadDtoCopyWith<$Res> get result;
}

/// @nodoc
class _$GetUserSuccessResultCopyWithImpl<$Res>
    implements $GetUserSuccessResultCopyWith<$Res> {
  _$GetUserSuccessResultCopyWithImpl(this._value, this._then);

  final GetUserSuccessResult _value;
  // ignore: unused_field
  final $Res Function(GetUserSuccessResult) _then;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as UserReadDto,
    ));
  }

  @override
  $UserReadDtoCopyWith<$Res> get result {
    return $UserReadDtoCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$GetUserSuccessResultCtorCopyWith<$Res>
    implements $GetUserSuccessResultCopyWith<$Res> {
  factory _$$GetUserSuccessResultCtorCopyWith(_$GetUserSuccessResultCtor value,
          $Res Function(_$GetUserSuccessResultCtor) then) =
      __$$GetUserSuccessResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, UserReadDto result});

  @override
  $UserReadDtoCopyWith<$Res> get result;
}

/// @nodoc
class __$$GetUserSuccessResultCtorCopyWithImpl<$Res>
    extends _$GetUserSuccessResultCopyWithImpl<$Res>
    implements _$$GetUserSuccessResultCtorCopyWith<$Res> {
  __$$GetUserSuccessResultCtorCopyWithImpl(_$GetUserSuccessResultCtor _value,
      $Res Function(_$GetUserSuccessResultCtor) _then)
      : super(_value, (v) => _then(v as _$GetUserSuccessResultCtor));

  @override
  _$GetUserSuccessResultCtor get _value =>
      super._value as _$GetUserSuccessResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? result = freezed,
  }) {
    return _then(_$GetUserSuccessResultCtor(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as UserReadDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetUserSuccessResultCtor extends _$GetUserSuccessResultCtor {
  const _$_$GetUserSuccessResultCtor(
      {required this.statusCode, required this.result})
      : super._();

  factory _$_$GetUserSuccessResultCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$GetUserSuccessResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final UserReadDto result;

  @override
  String toString() {
    return 'GetUserSuccessResult(statusCode: $statusCode, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetUserSuccessResultCtor &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$$GetUserSuccessResultCtorCopyWith<_$GetUserSuccessResultCtor>
      get copyWith =>
          __$$GetUserSuccessResultCtorCopyWithImpl<_$GetUserSuccessResultCtor>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetUserSuccessResultCtorToJson(this);
  }
}

abstract class _$GetUserSuccessResultCtor extends GetUserSuccessResult {
  const factory _$GetUserSuccessResultCtor(
      {required int statusCode,
      required UserReadDto result}) = _$_$GetUserSuccessResultCtor;
  const _$GetUserSuccessResultCtor._() : super._();

  factory _$GetUserSuccessResultCtor.fromJson(Map<String, dynamic> json) =
      _$_$GetUserSuccessResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  UserReadDto get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GetUserSuccessResultCtorCopyWith<_$GetUserSuccessResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}

GetUserFailureResult _$GetUserFailureResultFromJson(Map<String, dynamic> json) {
  return _$GetUserFailureResultCtor.fromJson(json);
}

/// @nodoc
class _$GetUserFailureResultTearOff {
  const _$GetUserFailureResultTearOff();

  _$GetUserFailureResultCtor call(
      {required int statusCode, required String message}) {
    return _$GetUserFailureResultCtor(
      statusCode: statusCode,
      message: message,
    );
  }

  GetUserFailureResult fromJson(Map<String, Object> json) {
    return GetUserFailureResult.fromJson(json);
  }
}

/// @nodoc
const $GetUserFailureResult = _$GetUserFailureResultTearOff();

/// @nodoc
mixin _$GetUserFailureResult {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUserFailureResultCopyWith<GetUserFailureResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserFailureResultCopyWith<$Res> {
  factory $GetUserFailureResultCopyWith(GetUserFailureResult value,
          $Res Function(GetUserFailureResult) then) =
      _$GetUserFailureResultCopyWithImpl<$Res>;
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$GetUserFailureResultCopyWithImpl<$Res>
    implements $GetUserFailureResultCopyWith<$Res> {
  _$GetUserFailureResultCopyWithImpl(this._value, this._then);

  final GetUserFailureResult _value;
  // ignore: unused_field
  final $Res Function(GetUserFailureResult) _then;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$GetUserFailureResultCtorCopyWith<$Res>
    implements $GetUserFailureResultCopyWith<$Res> {
  factory _$$GetUserFailureResultCtorCopyWith(_$GetUserFailureResultCtor value,
          $Res Function(_$GetUserFailureResultCtor) then) =
      __$$GetUserFailureResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$GetUserFailureResultCtorCopyWithImpl<$Res>
    extends _$GetUserFailureResultCopyWithImpl<$Res>
    implements _$$GetUserFailureResultCtorCopyWith<$Res> {
  __$$GetUserFailureResultCtorCopyWithImpl(_$GetUserFailureResultCtor _value,
      $Res Function(_$GetUserFailureResultCtor) _then)
      : super(_value, (v) => _then(v as _$GetUserFailureResultCtor));

  @override
  _$GetUserFailureResultCtor get _value =>
      super._value as _$GetUserFailureResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$GetUserFailureResultCtor(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetUserFailureResultCtor extends _$GetUserFailureResultCtor {
  const _$_$GetUserFailureResultCtor(
      {required this.statusCode, required this.message})
      : super._();

  factory _$_$GetUserFailureResultCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$GetUserFailureResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'GetUserFailureResult(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetUserFailureResultCtor &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$$GetUserFailureResultCtorCopyWith<_$GetUserFailureResultCtor>
      get copyWith =>
          __$$GetUserFailureResultCtorCopyWithImpl<_$GetUserFailureResultCtor>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetUserFailureResultCtorToJson(this);
  }
}

abstract class _$GetUserFailureResultCtor extends GetUserFailureResult {
  const factory _$GetUserFailureResultCtor(
      {required int statusCode,
      required String message}) = _$_$GetUserFailureResultCtor;
  const _$GetUserFailureResultCtor._() : super._();

  factory _$GetUserFailureResultCtor.fromJson(Map<String, dynamic> json) =
      _$_$GetUserFailureResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GetUserFailureResultCtorCopyWith<_$GetUserFailureResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}
