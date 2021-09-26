// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'getLatestPackageResult.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetLatestPackageResult _$GetLatestPackageResultFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'success':
      return _$GetLatestPackageResultSuccess.fromJson(json);
    case 'failure':
      return _$GetLatestPackageResultFailure.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$GetLatestPackageResultTearOff {
  const _$GetLatestPackageResultTearOff();

  _$GetLatestPackageResultSuccess success(
      {required GetLatestPackageSuccessResult getLatestPackageSuccessResult}) {
    return _$GetLatestPackageResultSuccess(
      getLatestPackageSuccessResult: getLatestPackageSuccessResult,
    );
  }

  _$GetLatestPackageResultFailure failure(
      {required GetLatestPackageFailureResult getLatestPackageFailureResult}) {
    return _$GetLatestPackageResultFailure(
      getLatestPackageFailureResult: getLatestPackageFailureResult,
    );
  }

  GetLatestPackageResult fromJson(Map<String, Object> json) {
    return GetLatestPackageResult.fromJson(json);
  }
}

/// @nodoc
const $GetLatestPackageResult = _$GetLatestPackageResultTearOff();

/// @nodoc
mixin _$GetLatestPackageResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetLatestPackageSuccessResult getLatestPackageSuccessResult)
        success,
    required TResult Function(
            GetLatestPackageFailureResult getLatestPackageFailureResult)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetLatestPackageSuccessResult getLatestPackageSuccessResult)?
        success,
    TResult Function(
            GetLatestPackageFailureResult getLatestPackageFailureResult)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetLatestPackageResultSuccess value) success,
    required TResult Function(_$GetLatestPackageResultFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetLatestPackageResultSuccess value)? success,
    TResult Function(_$GetLatestPackageResultFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLatestPackageResultCopyWith<$Res> {
  factory $GetLatestPackageResultCopyWith(GetLatestPackageResult value,
          $Res Function(GetLatestPackageResult) then) =
      _$GetLatestPackageResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetLatestPackageResultCopyWithImpl<$Res>
    implements $GetLatestPackageResultCopyWith<$Res> {
  _$GetLatestPackageResultCopyWithImpl(this._value, this._then);

  final GetLatestPackageResult _value;
  // ignore: unused_field
  final $Res Function(GetLatestPackageResult) _then;
}

/// @nodoc
abstract class _$$GetLatestPackageResultSuccessCopyWith<$Res> {
  factory _$$GetLatestPackageResultSuccessCopyWith(
          _$GetLatestPackageResultSuccess value,
          $Res Function(_$GetLatestPackageResultSuccess) then) =
      __$$GetLatestPackageResultSuccessCopyWithImpl<$Res>;
  $Res call({GetLatestPackageSuccessResult getLatestPackageSuccessResult});

  $GetLatestPackageSuccessResultCopyWith<$Res>
      get getLatestPackageSuccessResult;
}

/// @nodoc
class __$$GetLatestPackageResultSuccessCopyWithImpl<$Res>
    extends _$GetLatestPackageResultCopyWithImpl<$Res>
    implements _$$GetLatestPackageResultSuccessCopyWith<$Res> {
  __$$GetLatestPackageResultSuccessCopyWithImpl(
      _$GetLatestPackageResultSuccess _value,
      $Res Function(_$GetLatestPackageResultSuccess) _then)
      : super(_value, (v) => _then(v as _$GetLatestPackageResultSuccess));

  @override
  _$GetLatestPackageResultSuccess get _value =>
      super._value as _$GetLatestPackageResultSuccess;

  @override
  $Res call({
    Object? getLatestPackageSuccessResult = freezed,
  }) {
    return _then(_$GetLatestPackageResultSuccess(
      getLatestPackageSuccessResult: getLatestPackageSuccessResult == freezed
          ? _value.getLatestPackageSuccessResult
          : getLatestPackageSuccessResult // ignore: cast_nullable_to_non_nullable
              as GetLatestPackageSuccessResult,
    ));
  }

  @override
  $GetLatestPackageSuccessResultCopyWith<$Res>
      get getLatestPackageSuccessResult {
    return $GetLatestPackageSuccessResultCopyWith<$Res>(
        _value.getLatestPackageSuccessResult, (value) {
      return _then(_value.copyWith(getLatestPackageSuccessResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetLatestPackageResultSuccess
    extends _$GetLatestPackageResultSuccess {
  const _$_$GetLatestPackageResultSuccess(
      {required this.getLatestPackageSuccessResult})
      : super._();

  factory _$_$GetLatestPackageResultSuccess.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetLatestPackageResultSuccessFromJson(json);

  @override
  final GetLatestPackageSuccessResult getLatestPackageSuccessResult;

  @override
  String toString() {
    return 'GetLatestPackageResult.success(getLatestPackageSuccessResult: $getLatestPackageSuccessResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetLatestPackageResultSuccess &&
            (identical(other.getLatestPackageSuccessResult,
                    getLatestPackageSuccessResult) ||
                const DeepCollectionEquality().equals(
                    other.getLatestPackageSuccessResult,
                    getLatestPackageSuccessResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(getLatestPackageSuccessResult);

  @JsonKey(ignore: true)
  @override
  _$$GetLatestPackageResultSuccessCopyWith<_$GetLatestPackageResultSuccess>
      get copyWith => __$$GetLatestPackageResultSuccessCopyWithImpl<
          _$GetLatestPackageResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetLatestPackageSuccessResult getLatestPackageSuccessResult)
        success,
    required TResult Function(
            GetLatestPackageFailureResult getLatestPackageFailureResult)
        failure,
  }) {
    return success(getLatestPackageSuccessResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetLatestPackageSuccessResult getLatestPackageSuccessResult)?
        success,
    TResult Function(
            GetLatestPackageFailureResult getLatestPackageFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(getLatestPackageSuccessResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetLatestPackageResultSuccess value) success,
    required TResult Function(_$GetLatestPackageResultFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetLatestPackageResultSuccess value)? success,
    TResult Function(_$GetLatestPackageResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetLatestPackageResultSuccessToJson(this)
      ..['runtimeType'] = 'success';
  }
}

abstract class _$GetLatestPackageResultSuccess extends GetLatestPackageResult {
  const factory _$GetLatestPackageResultSuccess(
      {required GetLatestPackageSuccessResult
          getLatestPackageSuccessResult}) = _$_$GetLatestPackageResultSuccess;
  const _$GetLatestPackageResultSuccess._() : super._();

  factory _$GetLatestPackageResultSuccess.fromJson(Map<String, dynamic> json) =
      _$_$GetLatestPackageResultSuccess.fromJson;

  GetLatestPackageSuccessResult get getLatestPackageSuccessResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetLatestPackageResultSuccessCopyWith<_$GetLatestPackageResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLatestPackageResultFailureCopyWith<$Res> {
  factory _$$GetLatestPackageResultFailureCopyWith(
          _$GetLatestPackageResultFailure value,
          $Res Function(_$GetLatestPackageResultFailure) then) =
      __$$GetLatestPackageResultFailureCopyWithImpl<$Res>;
  $Res call({GetLatestPackageFailureResult getLatestPackageFailureResult});

  $GetLatestPackageFailureResultCopyWith<$Res>
      get getLatestPackageFailureResult;
}

/// @nodoc
class __$$GetLatestPackageResultFailureCopyWithImpl<$Res>
    extends _$GetLatestPackageResultCopyWithImpl<$Res>
    implements _$$GetLatestPackageResultFailureCopyWith<$Res> {
  __$$GetLatestPackageResultFailureCopyWithImpl(
      _$GetLatestPackageResultFailure _value,
      $Res Function(_$GetLatestPackageResultFailure) _then)
      : super(_value, (v) => _then(v as _$GetLatestPackageResultFailure));

  @override
  _$GetLatestPackageResultFailure get _value =>
      super._value as _$GetLatestPackageResultFailure;

  @override
  $Res call({
    Object? getLatestPackageFailureResult = freezed,
  }) {
    return _then(_$GetLatestPackageResultFailure(
      getLatestPackageFailureResult: getLatestPackageFailureResult == freezed
          ? _value.getLatestPackageFailureResult
          : getLatestPackageFailureResult // ignore: cast_nullable_to_non_nullable
              as GetLatestPackageFailureResult,
    ));
  }

  @override
  $GetLatestPackageFailureResultCopyWith<$Res>
      get getLatestPackageFailureResult {
    return $GetLatestPackageFailureResultCopyWith<$Res>(
        _value.getLatestPackageFailureResult, (value) {
      return _then(_value.copyWith(getLatestPackageFailureResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetLatestPackageResultFailure
    extends _$GetLatestPackageResultFailure {
  const _$_$GetLatestPackageResultFailure(
      {required this.getLatestPackageFailureResult})
      : super._();

  factory _$_$GetLatestPackageResultFailure.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetLatestPackageResultFailureFromJson(json);

  @override
  final GetLatestPackageFailureResult getLatestPackageFailureResult;

  @override
  String toString() {
    return 'GetLatestPackageResult.failure(getLatestPackageFailureResult: $getLatestPackageFailureResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetLatestPackageResultFailure &&
            (identical(other.getLatestPackageFailureResult,
                    getLatestPackageFailureResult) ||
                const DeepCollectionEquality().equals(
                    other.getLatestPackageFailureResult,
                    getLatestPackageFailureResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(getLatestPackageFailureResult);

  @JsonKey(ignore: true)
  @override
  _$$GetLatestPackageResultFailureCopyWith<_$GetLatestPackageResultFailure>
      get copyWith => __$$GetLatestPackageResultFailureCopyWithImpl<
          _$GetLatestPackageResultFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetLatestPackageSuccessResult getLatestPackageSuccessResult)
        success,
    required TResult Function(
            GetLatestPackageFailureResult getLatestPackageFailureResult)
        failure,
  }) {
    return failure(getLatestPackageFailureResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetLatestPackageSuccessResult getLatestPackageSuccessResult)?
        success,
    TResult Function(
            GetLatestPackageFailureResult getLatestPackageFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(getLatestPackageFailureResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetLatestPackageResultSuccess value) success,
    required TResult Function(_$GetLatestPackageResultFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetLatestPackageResultSuccess value)? success,
    TResult Function(_$GetLatestPackageResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetLatestPackageResultFailureToJson(this)
      ..['runtimeType'] = 'failure';
  }
}

abstract class _$GetLatestPackageResultFailure extends GetLatestPackageResult {
  const factory _$GetLatestPackageResultFailure(
      {required GetLatestPackageFailureResult
          getLatestPackageFailureResult}) = _$_$GetLatestPackageResultFailure;
  const _$GetLatestPackageResultFailure._() : super._();

  factory _$GetLatestPackageResultFailure.fromJson(Map<String, dynamic> json) =
      _$_$GetLatestPackageResultFailure.fromJson;

  GetLatestPackageFailureResult get getLatestPackageFailureResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetLatestPackageResultFailureCopyWith<_$GetLatestPackageResultFailure>
      get copyWith => throw _privateConstructorUsedError;
}

GetLatestPackageSuccessResult _$GetLatestPackageSuccessResultFromJson(
    Map<String, dynamic> json) {
  return _$GetLatestPackageSuccessResultCtor.fromJson(json);
}

/// @nodoc
class _$GetLatestPackageSuccessResultTearOff {
  const _$GetLatestPackageSuccessResultTearOff();

  _$GetLatestPackageSuccessResultCtor call(
      {required int statusCode, required GetLatestPackageReadDto result}) {
    return _$GetLatestPackageSuccessResultCtor(
      statusCode: statusCode,
      result: result,
    );
  }

  GetLatestPackageSuccessResult fromJson(Map<String, Object> json) {
    return GetLatestPackageSuccessResult.fromJson(json);
  }
}

/// @nodoc
const $GetLatestPackageSuccessResult = _$GetLatestPackageSuccessResultTearOff();

/// @nodoc
mixin _$GetLatestPackageSuccessResult {
  int get statusCode => throw _privateConstructorUsedError;
  GetLatestPackageReadDto get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetLatestPackageSuccessResultCopyWith<GetLatestPackageSuccessResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLatestPackageSuccessResultCopyWith<$Res> {
  factory $GetLatestPackageSuccessResultCopyWith(
          GetLatestPackageSuccessResult value,
          $Res Function(GetLatestPackageSuccessResult) then) =
      _$GetLatestPackageSuccessResultCopyWithImpl<$Res>;
  $Res call({int statusCode, GetLatestPackageReadDto result});

  $GetLatestPackageReadDtoCopyWith<$Res> get result;
}

/// @nodoc
class _$GetLatestPackageSuccessResultCopyWithImpl<$Res>
    implements $GetLatestPackageSuccessResultCopyWith<$Res> {
  _$GetLatestPackageSuccessResultCopyWithImpl(this._value, this._then);

  final GetLatestPackageSuccessResult _value;
  // ignore: unused_field
  final $Res Function(GetLatestPackageSuccessResult) _then;

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
              as GetLatestPackageReadDto,
    ));
  }

  @override
  $GetLatestPackageReadDtoCopyWith<$Res> get result {
    return $GetLatestPackageReadDtoCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$GetLatestPackageSuccessResultCtorCopyWith<$Res>
    implements $GetLatestPackageSuccessResultCopyWith<$Res> {
  factory _$$GetLatestPackageSuccessResultCtorCopyWith(
          _$GetLatestPackageSuccessResultCtor value,
          $Res Function(_$GetLatestPackageSuccessResultCtor) then) =
      __$$GetLatestPackageSuccessResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, GetLatestPackageReadDto result});

  @override
  $GetLatestPackageReadDtoCopyWith<$Res> get result;
}

/// @nodoc
class __$$GetLatestPackageSuccessResultCtorCopyWithImpl<$Res>
    extends _$GetLatestPackageSuccessResultCopyWithImpl<$Res>
    implements _$$GetLatestPackageSuccessResultCtorCopyWith<$Res> {
  __$$GetLatestPackageSuccessResultCtorCopyWithImpl(
      _$GetLatestPackageSuccessResultCtor _value,
      $Res Function(_$GetLatestPackageSuccessResultCtor) _then)
      : super(_value, (v) => _then(v as _$GetLatestPackageSuccessResultCtor));

  @override
  _$GetLatestPackageSuccessResultCtor get _value =>
      super._value as _$GetLatestPackageSuccessResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? result = freezed,
  }) {
    return _then(_$GetLatestPackageSuccessResultCtor(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as GetLatestPackageReadDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetLatestPackageSuccessResultCtor
    extends _$GetLatestPackageSuccessResultCtor {
  const _$_$GetLatestPackageSuccessResultCtor(
      {required this.statusCode, required this.result})
      : super._();

  factory _$_$GetLatestPackageSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetLatestPackageSuccessResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final GetLatestPackageReadDto result;

  @override
  String toString() {
    return 'GetLatestPackageSuccessResult(statusCode: $statusCode, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetLatestPackageSuccessResultCtor &&
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
  _$$GetLatestPackageSuccessResultCtorCopyWith<
          _$GetLatestPackageSuccessResultCtor>
      get copyWith => __$$GetLatestPackageSuccessResultCtorCopyWithImpl<
          _$GetLatestPackageSuccessResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetLatestPackageSuccessResultCtorToJson(this);
  }
}

abstract class _$GetLatestPackageSuccessResultCtor
    extends GetLatestPackageSuccessResult {
  const factory _$GetLatestPackageSuccessResultCtor(
          {required int statusCode, required GetLatestPackageReadDto result}) =
      _$_$GetLatestPackageSuccessResultCtor;
  const _$GetLatestPackageSuccessResultCtor._() : super._();

  factory _$GetLatestPackageSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$GetLatestPackageSuccessResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  GetLatestPackageReadDto get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GetLatestPackageSuccessResultCtorCopyWith<
          _$GetLatestPackageSuccessResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}

GetLatestPackageFailureResult _$GetLatestPackageFailureResultFromJson(
    Map<String, dynamic> json) {
  return _$GetLatestPackageFailureResultCtor.fromJson(json);
}

/// @nodoc
class _$GetLatestPackageFailureResultTearOff {
  const _$GetLatestPackageFailureResultTearOff();

  _$GetLatestPackageFailureResultCtor call(
      {required int statusCode, required String message}) {
    return _$GetLatestPackageFailureResultCtor(
      statusCode: statusCode,
      message: message,
    );
  }

  GetLatestPackageFailureResult fromJson(Map<String, Object> json) {
    return GetLatestPackageFailureResult.fromJson(json);
  }
}

/// @nodoc
const $GetLatestPackageFailureResult = _$GetLatestPackageFailureResultTearOff();

/// @nodoc
mixin _$GetLatestPackageFailureResult {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetLatestPackageFailureResultCopyWith<GetLatestPackageFailureResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLatestPackageFailureResultCopyWith<$Res> {
  factory $GetLatestPackageFailureResultCopyWith(
          GetLatestPackageFailureResult value,
          $Res Function(GetLatestPackageFailureResult) then) =
      _$GetLatestPackageFailureResultCopyWithImpl<$Res>;
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$GetLatestPackageFailureResultCopyWithImpl<$Res>
    implements $GetLatestPackageFailureResultCopyWith<$Res> {
  _$GetLatestPackageFailureResultCopyWithImpl(this._value, this._then);

  final GetLatestPackageFailureResult _value;
  // ignore: unused_field
  final $Res Function(GetLatestPackageFailureResult) _then;

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
abstract class _$$GetLatestPackageFailureResultCtorCopyWith<$Res>
    implements $GetLatestPackageFailureResultCopyWith<$Res> {
  factory _$$GetLatestPackageFailureResultCtorCopyWith(
          _$GetLatestPackageFailureResultCtor value,
          $Res Function(_$GetLatestPackageFailureResultCtor) then) =
      __$$GetLatestPackageFailureResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$GetLatestPackageFailureResultCtorCopyWithImpl<$Res>
    extends _$GetLatestPackageFailureResultCopyWithImpl<$Res>
    implements _$$GetLatestPackageFailureResultCtorCopyWith<$Res> {
  __$$GetLatestPackageFailureResultCtorCopyWithImpl(
      _$GetLatestPackageFailureResultCtor _value,
      $Res Function(_$GetLatestPackageFailureResultCtor) _then)
      : super(_value, (v) => _then(v as _$GetLatestPackageFailureResultCtor));

  @override
  _$GetLatestPackageFailureResultCtor get _value =>
      super._value as _$GetLatestPackageFailureResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$GetLatestPackageFailureResultCtor(
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
class _$_$GetLatestPackageFailureResultCtor
    extends _$GetLatestPackageFailureResultCtor {
  const _$_$GetLatestPackageFailureResultCtor(
      {required this.statusCode, required this.message})
      : super._();

  factory _$_$GetLatestPackageFailureResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetLatestPackageFailureResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'GetLatestPackageFailureResult(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetLatestPackageFailureResultCtor &&
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
  _$$GetLatestPackageFailureResultCtorCopyWith<
          _$GetLatestPackageFailureResultCtor>
      get copyWith => __$$GetLatestPackageFailureResultCtorCopyWithImpl<
          _$GetLatestPackageFailureResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetLatestPackageFailureResultCtorToJson(this);
  }
}

abstract class _$GetLatestPackageFailureResultCtor
    extends GetLatestPackageFailureResult {
  const factory _$GetLatestPackageFailureResultCtor(
      {required int statusCode,
      required String message}) = _$_$GetLatestPackageFailureResultCtor;
  const _$GetLatestPackageFailureResultCtor._() : super._();

  factory _$GetLatestPackageFailureResultCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$GetLatestPackageFailureResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GetLatestPackageFailureResultCtorCopyWith<
          _$GetLatestPackageFailureResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}
