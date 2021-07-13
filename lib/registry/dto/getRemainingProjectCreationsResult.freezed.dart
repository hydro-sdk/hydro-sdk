// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'getRemainingProjectCreationsResult.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetRemainingProjectCreationsResult _$GetRemainingProjectCreationsResultFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'success':
      return _$GetRemainingProjectCreationsResultSuccess.fromJson(json);
    case 'failure':
      return _$GetRemainingProjectCreationsResultFailure.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$GetRemainingProjectCreationsResultTearOff {
  const _$GetRemainingProjectCreationsResultTearOff();

  _$GetRemainingProjectCreationsResultSuccess success(
      {required GetRemainingProjectCreationsSuccessResult
          getRemainingProjectCreationsSuccessResult}) {
    return _$GetRemainingProjectCreationsResultSuccess(
      getRemainingProjectCreationsSuccessResult:
          getRemainingProjectCreationsSuccessResult,
    );
  }

  _$GetRemainingProjectCreationsResultFailure failure(
      {required GetRemainingProjectCreationsFailureResult
          getRemainingProjectCreationsFailureResult}) {
    return _$GetRemainingProjectCreationsResultFailure(
      getRemainingProjectCreationsFailureResult:
          getRemainingProjectCreationsFailureResult,
    );
  }

  GetRemainingProjectCreationsResult fromJson(Map<String, Object> json) {
    return GetRemainingProjectCreationsResult.fromJson(json);
  }
}

/// @nodoc
const $GetRemainingProjectCreationsResult =
    _$GetRemainingProjectCreationsResultTearOff();

/// @nodoc
mixin _$GetRemainingProjectCreationsResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetRemainingProjectCreationsSuccessResult
                getRemainingProjectCreationsSuccessResult)
        success,
    required TResult Function(
            GetRemainingProjectCreationsFailureResult
                getRemainingProjectCreationsFailureResult)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetRemainingProjectCreationsSuccessResult
                getRemainingProjectCreationsSuccessResult)?
        success,
    TResult Function(
            GetRemainingProjectCreationsFailureResult
                getRemainingProjectCreationsFailureResult)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetRemainingProjectCreationsResultSuccess value)
        success,
    required TResult Function(_$GetRemainingProjectCreationsResultFailure value)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetRemainingProjectCreationsResultSuccess value)?
        success,
    TResult Function(_$GetRemainingProjectCreationsResultFailure value)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRemainingProjectCreationsResultCopyWith<$Res> {
  factory $GetRemainingProjectCreationsResultCopyWith(
          GetRemainingProjectCreationsResult value,
          $Res Function(GetRemainingProjectCreationsResult) then) =
      _$GetRemainingProjectCreationsResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetRemainingProjectCreationsResultCopyWithImpl<$Res>
    implements $GetRemainingProjectCreationsResultCopyWith<$Res> {
  _$GetRemainingProjectCreationsResultCopyWithImpl(this._value, this._then);

  final GetRemainingProjectCreationsResult _value;
  // ignore: unused_field
  final $Res Function(GetRemainingProjectCreationsResult) _then;
}

/// @nodoc
abstract class _$$GetRemainingProjectCreationsResultSuccessCopyWith<$Res> {
  factory _$$GetRemainingProjectCreationsResultSuccessCopyWith(
          _$GetRemainingProjectCreationsResultSuccess value,
          $Res Function(_$GetRemainingProjectCreationsResultSuccess) then) =
      __$$GetRemainingProjectCreationsResultSuccessCopyWithImpl<$Res>;
  $Res call(
      {GetRemainingProjectCreationsSuccessResult
          getRemainingProjectCreationsSuccessResult});

  $GetRemainingProjectCreationsSuccessResultCopyWith<$Res>
      get getRemainingProjectCreationsSuccessResult;
}

/// @nodoc
class __$$GetRemainingProjectCreationsResultSuccessCopyWithImpl<$Res>
    extends _$GetRemainingProjectCreationsResultCopyWithImpl<$Res>
    implements _$$GetRemainingProjectCreationsResultSuccessCopyWith<$Res> {
  __$$GetRemainingProjectCreationsResultSuccessCopyWithImpl(
      _$GetRemainingProjectCreationsResultSuccess _value,
      $Res Function(_$GetRemainingProjectCreationsResultSuccess) _then)
      : super(_value,
            (v) => _then(v as _$GetRemainingProjectCreationsResultSuccess));

  @override
  _$GetRemainingProjectCreationsResultSuccess get _value =>
      super._value as _$GetRemainingProjectCreationsResultSuccess;

  @override
  $Res call({
    Object? getRemainingProjectCreationsSuccessResult = freezed,
  }) {
    return _then(_$GetRemainingProjectCreationsResultSuccess(
      getRemainingProjectCreationsSuccessResult:
          getRemainingProjectCreationsSuccessResult == freezed
              ? _value.getRemainingProjectCreationsSuccessResult
              : getRemainingProjectCreationsSuccessResult // ignore: cast_nullable_to_non_nullable
                  as GetRemainingProjectCreationsSuccessResult,
    ));
  }

  @override
  $GetRemainingProjectCreationsSuccessResultCopyWith<$Res>
      get getRemainingProjectCreationsSuccessResult {
    return $GetRemainingProjectCreationsSuccessResultCopyWith<$Res>(
        _value.getRemainingProjectCreationsSuccessResult, (value) {
      return _then(
          _value.copyWith(getRemainingProjectCreationsSuccessResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetRemainingProjectCreationsResultSuccess
    extends _$GetRemainingProjectCreationsResultSuccess {
  const _$_$GetRemainingProjectCreationsResultSuccess(
      {required this.getRemainingProjectCreationsSuccessResult})
      : super._();

  factory _$_$GetRemainingProjectCreationsResultSuccess.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetRemainingProjectCreationsResultSuccessFromJson(json);

  @override
  final GetRemainingProjectCreationsSuccessResult
      getRemainingProjectCreationsSuccessResult;

  @override
  String toString() {
    return 'GetRemainingProjectCreationsResult.success(getRemainingProjectCreationsSuccessResult: $getRemainingProjectCreationsSuccessResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetRemainingProjectCreationsResultSuccess &&
            (identical(other.getRemainingProjectCreationsSuccessResult,
                    getRemainingProjectCreationsSuccessResult) ||
                const DeepCollectionEquality().equals(
                    other.getRemainingProjectCreationsSuccessResult,
                    getRemainingProjectCreationsSuccessResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality()
          .hash(getRemainingProjectCreationsSuccessResult);

  @JsonKey(ignore: true)
  @override
  _$$GetRemainingProjectCreationsResultSuccessCopyWith<
          _$GetRemainingProjectCreationsResultSuccess>
      get copyWith => __$$GetRemainingProjectCreationsResultSuccessCopyWithImpl<
          _$GetRemainingProjectCreationsResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetRemainingProjectCreationsSuccessResult
                getRemainingProjectCreationsSuccessResult)
        success,
    required TResult Function(
            GetRemainingProjectCreationsFailureResult
                getRemainingProjectCreationsFailureResult)
        failure,
  }) {
    return success(getRemainingProjectCreationsSuccessResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetRemainingProjectCreationsSuccessResult
                getRemainingProjectCreationsSuccessResult)?
        success,
    TResult Function(
            GetRemainingProjectCreationsFailureResult
                getRemainingProjectCreationsFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(getRemainingProjectCreationsSuccessResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetRemainingProjectCreationsResultSuccess value)
        success,
    required TResult Function(_$GetRemainingProjectCreationsResultFailure value)
        failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetRemainingProjectCreationsResultSuccess value)?
        success,
    TResult Function(_$GetRemainingProjectCreationsResultFailure value)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetRemainingProjectCreationsResultSuccessToJson(this)
      ..['runtimeType'] = 'success';
  }
}

abstract class _$GetRemainingProjectCreationsResultSuccess
    extends GetRemainingProjectCreationsResult {
  const factory _$GetRemainingProjectCreationsResultSuccess(
          {required GetRemainingProjectCreationsSuccessResult
              getRemainingProjectCreationsSuccessResult}) =
      _$_$GetRemainingProjectCreationsResultSuccess;
  const _$GetRemainingProjectCreationsResultSuccess._() : super._();

  factory _$GetRemainingProjectCreationsResultSuccess.fromJson(
          Map<String, dynamic> json) =
      _$_$GetRemainingProjectCreationsResultSuccess.fromJson;

  GetRemainingProjectCreationsSuccessResult
      get getRemainingProjectCreationsSuccessResult =>
          throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetRemainingProjectCreationsResultSuccessCopyWith<
          _$GetRemainingProjectCreationsResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRemainingProjectCreationsResultFailureCopyWith<$Res> {
  factory _$$GetRemainingProjectCreationsResultFailureCopyWith(
          _$GetRemainingProjectCreationsResultFailure value,
          $Res Function(_$GetRemainingProjectCreationsResultFailure) then) =
      __$$GetRemainingProjectCreationsResultFailureCopyWithImpl<$Res>;
  $Res call(
      {GetRemainingProjectCreationsFailureResult
          getRemainingProjectCreationsFailureResult});

  $GetRemainingProjectCreationsFailureResultCopyWith<$Res>
      get getRemainingProjectCreationsFailureResult;
}

/// @nodoc
class __$$GetRemainingProjectCreationsResultFailureCopyWithImpl<$Res>
    extends _$GetRemainingProjectCreationsResultCopyWithImpl<$Res>
    implements _$$GetRemainingProjectCreationsResultFailureCopyWith<$Res> {
  __$$GetRemainingProjectCreationsResultFailureCopyWithImpl(
      _$GetRemainingProjectCreationsResultFailure _value,
      $Res Function(_$GetRemainingProjectCreationsResultFailure) _then)
      : super(_value,
            (v) => _then(v as _$GetRemainingProjectCreationsResultFailure));

  @override
  _$GetRemainingProjectCreationsResultFailure get _value =>
      super._value as _$GetRemainingProjectCreationsResultFailure;

  @override
  $Res call({
    Object? getRemainingProjectCreationsFailureResult = freezed,
  }) {
    return _then(_$GetRemainingProjectCreationsResultFailure(
      getRemainingProjectCreationsFailureResult:
          getRemainingProjectCreationsFailureResult == freezed
              ? _value.getRemainingProjectCreationsFailureResult
              : getRemainingProjectCreationsFailureResult // ignore: cast_nullable_to_non_nullable
                  as GetRemainingProjectCreationsFailureResult,
    ));
  }

  @override
  $GetRemainingProjectCreationsFailureResultCopyWith<$Res>
      get getRemainingProjectCreationsFailureResult {
    return $GetRemainingProjectCreationsFailureResultCopyWith<$Res>(
        _value.getRemainingProjectCreationsFailureResult, (value) {
      return _then(
          _value.copyWith(getRemainingProjectCreationsFailureResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetRemainingProjectCreationsResultFailure
    extends _$GetRemainingProjectCreationsResultFailure {
  const _$_$GetRemainingProjectCreationsResultFailure(
      {required this.getRemainingProjectCreationsFailureResult})
      : super._();

  factory _$_$GetRemainingProjectCreationsResultFailure.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetRemainingProjectCreationsResultFailureFromJson(json);

  @override
  final GetRemainingProjectCreationsFailureResult
      getRemainingProjectCreationsFailureResult;

  @override
  String toString() {
    return 'GetRemainingProjectCreationsResult.failure(getRemainingProjectCreationsFailureResult: $getRemainingProjectCreationsFailureResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetRemainingProjectCreationsResultFailure &&
            (identical(other.getRemainingProjectCreationsFailureResult,
                    getRemainingProjectCreationsFailureResult) ||
                const DeepCollectionEquality().equals(
                    other.getRemainingProjectCreationsFailureResult,
                    getRemainingProjectCreationsFailureResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality()
          .hash(getRemainingProjectCreationsFailureResult);

  @JsonKey(ignore: true)
  @override
  _$$GetRemainingProjectCreationsResultFailureCopyWith<
          _$GetRemainingProjectCreationsResultFailure>
      get copyWith => __$$GetRemainingProjectCreationsResultFailureCopyWithImpl<
          _$GetRemainingProjectCreationsResultFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetRemainingProjectCreationsSuccessResult
                getRemainingProjectCreationsSuccessResult)
        success,
    required TResult Function(
            GetRemainingProjectCreationsFailureResult
                getRemainingProjectCreationsFailureResult)
        failure,
  }) {
    return failure(getRemainingProjectCreationsFailureResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetRemainingProjectCreationsSuccessResult
                getRemainingProjectCreationsSuccessResult)?
        success,
    TResult Function(
            GetRemainingProjectCreationsFailureResult
                getRemainingProjectCreationsFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(getRemainingProjectCreationsFailureResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetRemainingProjectCreationsResultSuccess value)
        success,
    required TResult Function(_$GetRemainingProjectCreationsResultFailure value)
        failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetRemainingProjectCreationsResultSuccess value)?
        success,
    TResult Function(_$GetRemainingProjectCreationsResultFailure value)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetRemainingProjectCreationsResultFailureToJson(this)
      ..['runtimeType'] = 'failure';
  }
}

abstract class _$GetRemainingProjectCreationsResultFailure
    extends GetRemainingProjectCreationsResult {
  const factory _$GetRemainingProjectCreationsResultFailure(
          {required GetRemainingProjectCreationsFailureResult
              getRemainingProjectCreationsFailureResult}) =
      _$_$GetRemainingProjectCreationsResultFailure;
  const _$GetRemainingProjectCreationsResultFailure._() : super._();

  factory _$GetRemainingProjectCreationsResultFailure.fromJson(
          Map<String, dynamic> json) =
      _$_$GetRemainingProjectCreationsResultFailure.fromJson;

  GetRemainingProjectCreationsFailureResult
      get getRemainingProjectCreationsFailureResult =>
          throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetRemainingProjectCreationsResultFailureCopyWith<
          _$GetRemainingProjectCreationsResultFailure>
      get copyWith => throw _privateConstructorUsedError;
}

GetRemainingProjectCreationsSuccessResult
    _$GetRemainingProjectCreationsSuccessResultFromJson(
        Map<String, dynamic> json) {
  return _$GetRemainingProjectCreationsSuccessResultCtor.fromJson(json);
}

/// @nodoc
class _$GetRemainingProjectCreationsSuccessResultTearOff {
  const _$GetRemainingProjectCreationsSuccessResultTearOff();

  _$GetRemainingProjectCreationsSuccessResultCtor call(
      {required int statusCode, required ProjectCreationsReadDto result}) {
    return _$GetRemainingProjectCreationsSuccessResultCtor(
      statusCode: statusCode,
      result: result,
    );
  }

  GetRemainingProjectCreationsSuccessResult fromJson(Map<String, Object> json) {
    return GetRemainingProjectCreationsSuccessResult.fromJson(json);
  }
}

/// @nodoc
const $GetRemainingProjectCreationsSuccessResult =
    _$GetRemainingProjectCreationsSuccessResultTearOff();

/// @nodoc
mixin _$GetRemainingProjectCreationsSuccessResult {
  int get statusCode => throw _privateConstructorUsedError;
  ProjectCreationsReadDto get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRemainingProjectCreationsSuccessResultCopyWith<
          GetRemainingProjectCreationsSuccessResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRemainingProjectCreationsSuccessResultCopyWith<$Res> {
  factory $GetRemainingProjectCreationsSuccessResultCopyWith(
          GetRemainingProjectCreationsSuccessResult value,
          $Res Function(GetRemainingProjectCreationsSuccessResult) then) =
      _$GetRemainingProjectCreationsSuccessResultCopyWithImpl<$Res>;
  $Res call({int statusCode, ProjectCreationsReadDto result});

  $ProjectCreationsReadDtoCopyWith<$Res> get result;
}

/// @nodoc
class _$GetRemainingProjectCreationsSuccessResultCopyWithImpl<$Res>
    implements $GetRemainingProjectCreationsSuccessResultCopyWith<$Res> {
  _$GetRemainingProjectCreationsSuccessResultCopyWithImpl(
      this._value, this._then);

  final GetRemainingProjectCreationsSuccessResult _value;
  // ignore: unused_field
  final $Res Function(GetRemainingProjectCreationsSuccessResult) _then;

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
              as ProjectCreationsReadDto,
    ));
  }

  @override
  $ProjectCreationsReadDtoCopyWith<$Res> get result {
    return $ProjectCreationsReadDtoCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$GetRemainingProjectCreationsSuccessResultCtorCopyWith<$Res>
    implements $GetRemainingProjectCreationsSuccessResultCopyWith<$Res> {
  factory _$$GetRemainingProjectCreationsSuccessResultCtorCopyWith(
          _$GetRemainingProjectCreationsSuccessResultCtor value,
          $Res Function(_$GetRemainingProjectCreationsSuccessResultCtor) then) =
      __$$GetRemainingProjectCreationsSuccessResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, ProjectCreationsReadDto result});

  @override
  $ProjectCreationsReadDtoCopyWith<$Res> get result;
}

/// @nodoc
class __$$GetRemainingProjectCreationsSuccessResultCtorCopyWithImpl<$Res>
    extends _$GetRemainingProjectCreationsSuccessResultCopyWithImpl<$Res>
    implements _$$GetRemainingProjectCreationsSuccessResultCtorCopyWith<$Res> {
  __$$GetRemainingProjectCreationsSuccessResultCtorCopyWithImpl(
      _$GetRemainingProjectCreationsSuccessResultCtor _value,
      $Res Function(_$GetRemainingProjectCreationsSuccessResultCtor) _then)
      : super(_value,
            (v) => _then(v as _$GetRemainingProjectCreationsSuccessResultCtor));

  @override
  _$GetRemainingProjectCreationsSuccessResultCtor get _value =>
      super._value as _$GetRemainingProjectCreationsSuccessResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? result = freezed,
  }) {
    return _then(_$GetRemainingProjectCreationsSuccessResultCtor(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ProjectCreationsReadDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetRemainingProjectCreationsSuccessResultCtor
    extends _$GetRemainingProjectCreationsSuccessResultCtor {
  const _$_$GetRemainingProjectCreationsSuccessResultCtor(
      {required this.statusCode, required this.result})
      : super._();

  factory _$_$GetRemainingProjectCreationsSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetRemainingProjectCreationsSuccessResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final ProjectCreationsReadDto result;

  @override
  String toString() {
    return 'GetRemainingProjectCreationsSuccessResult(statusCode: $statusCode, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetRemainingProjectCreationsSuccessResultCtor &&
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
  _$$GetRemainingProjectCreationsSuccessResultCtorCopyWith<
          _$GetRemainingProjectCreationsSuccessResultCtor>
      get copyWith =>
          __$$GetRemainingProjectCreationsSuccessResultCtorCopyWithImpl<
                  _$GetRemainingProjectCreationsSuccessResultCtor>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetRemainingProjectCreationsSuccessResultCtorToJson(this);
  }
}

abstract class _$GetRemainingProjectCreationsSuccessResultCtor
    extends GetRemainingProjectCreationsSuccessResult {
  const factory _$GetRemainingProjectCreationsSuccessResultCtor(
          {required int statusCode, required ProjectCreationsReadDto result}) =
      _$_$GetRemainingProjectCreationsSuccessResultCtor;
  const _$GetRemainingProjectCreationsSuccessResultCtor._() : super._();

  factory _$GetRemainingProjectCreationsSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$GetRemainingProjectCreationsSuccessResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  ProjectCreationsReadDto get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GetRemainingProjectCreationsSuccessResultCtorCopyWith<
          _$GetRemainingProjectCreationsSuccessResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}

GetRemainingProjectCreationsFailureResult
    _$GetRemainingProjectCreationsFailureResultFromJson(
        Map<String, dynamic> json) {
  return _$GetRemainingProjectCreationsFailureResultCtor.fromJson(json);
}

/// @nodoc
class _$GetRemainingProjectCreationsFailureResultTearOff {
  const _$GetRemainingProjectCreationsFailureResultTearOff();

  _$GetRemainingProjectCreationsFailureResultCtor call(
      {required int statusCode, required String message}) {
    return _$GetRemainingProjectCreationsFailureResultCtor(
      statusCode: statusCode,
      message: message,
    );
  }

  GetRemainingProjectCreationsFailureResult fromJson(Map<String, Object> json) {
    return GetRemainingProjectCreationsFailureResult.fromJson(json);
  }
}

/// @nodoc
const $GetRemainingProjectCreationsFailureResult =
    _$GetRemainingProjectCreationsFailureResultTearOff();

/// @nodoc
mixin _$GetRemainingProjectCreationsFailureResult {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRemainingProjectCreationsFailureResultCopyWith<
          GetRemainingProjectCreationsFailureResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRemainingProjectCreationsFailureResultCopyWith<$Res> {
  factory $GetRemainingProjectCreationsFailureResultCopyWith(
          GetRemainingProjectCreationsFailureResult value,
          $Res Function(GetRemainingProjectCreationsFailureResult) then) =
      _$GetRemainingProjectCreationsFailureResultCopyWithImpl<$Res>;
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$GetRemainingProjectCreationsFailureResultCopyWithImpl<$Res>
    implements $GetRemainingProjectCreationsFailureResultCopyWith<$Res> {
  _$GetRemainingProjectCreationsFailureResultCopyWithImpl(
      this._value, this._then);

  final GetRemainingProjectCreationsFailureResult _value;
  // ignore: unused_field
  final $Res Function(GetRemainingProjectCreationsFailureResult) _then;

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
abstract class _$$GetRemainingProjectCreationsFailureResultCtorCopyWith<$Res>
    implements $GetRemainingProjectCreationsFailureResultCopyWith<$Res> {
  factory _$$GetRemainingProjectCreationsFailureResultCtorCopyWith(
          _$GetRemainingProjectCreationsFailureResultCtor value,
          $Res Function(_$GetRemainingProjectCreationsFailureResultCtor) then) =
      __$$GetRemainingProjectCreationsFailureResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$GetRemainingProjectCreationsFailureResultCtorCopyWithImpl<$Res>
    extends _$GetRemainingProjectCreationsFailureResultCopyWithImpl<$Res>
    implements _$$GetRemainingProjectCreationsFailureResultCtorCopyWith<$Res> {
  __$$GetRemainingProjectCreationsFailureResultCtorCopyWithImpl(
      _$GetRemainingProjectCreationsFailureResultCtor _value,
      $Res Function(_$GetRemainingProjectCreationsFailureResultCtor) _then)
      : super(_value,
            (v) => _then(v as _$GetRemainingProjectCreationsFailureResultCtor));

  @override
  _$GetRemainingProjectCreationsFailureResultCtor get _value =>
      super._value as _$GetRemainingProjectCreationsFailureResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$GetRemainingProjectCreationsFailureResultCtor(
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
class _$_$GetRemainingProjectCreationsFailureResultCtor
    extends _$GetRemainingProjectCreationsFailureResultCtor {
  const _$_$GetRemainingProjectCreationsFailureResultCtor(
      {required this.statusCode, required this.message})
      : super._();

  factory _$_$GetRemainingProjectCreationsFailureResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetRemainingProjectCreationsFailureResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'GetRemainingProjectCreationsFailureResult(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetRemainingProjectCreationsFailureResultCtor &&
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
  _$$GetRemainingProjectCreationsFailureResultCtorCopyWith<
          _$GetRemainingProjectCreationsFailureResultCtor>
      get copyWith =>
          __$$GetRemainingProjectCreationsFailureResultCtorCopyWithImpl<
                  _$GetRemainingProjectCreationsFailureResultCtor>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetRemainingProjectCreationsFailureResultCtorToJson(this);
  }
}

abstract class _$GetRemainingProjectCreationsFailureResultCtor
    extends GetRemainingProjectCreationsFailureResult {
  const factory _$GetRemainingProjectCreationsFailureResultCtor(
          {required int statusCode, required String message}) =
      _$_$GetRemainingProjectCreationsFailureResultCtor;
  const _$GetRemainingProjectCreationsFailureResultCtor._() : super._();

  factory _$GetRemainingProjectCreationsFailureResultCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$GetRemainingProjectCreationsFailureResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GetRemainingProjectCreationsFailureResultCtorCopyWith<
          _$GetRemainingProjectCreationsFailureResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}
