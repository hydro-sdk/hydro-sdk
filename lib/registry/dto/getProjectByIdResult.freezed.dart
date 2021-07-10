// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'getProjectByIdResult.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetProjectByIdResult _$GetProjectByIdResultFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'success':
      return _$GetProjectByIdResultSuccess.fromJson(json);
    case 'failure':
      return _$GetProjectByIdResultFailure.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$GetProjectByIdResultTearOff {
  const _$GetProjectByIdResultTearOff();

  _$GetProjectByIdResultSuccess success(
      {required GetProjectByIdSuccessResult getProjectByIdSuccessResult}) {
    return _$GetProjectByIdResultSuccess(
      getProjectByIdSuccessResult: getProjectByIdSuccessResult,
    );
  }

  _$GetProjectByIdResultFailure failure(
      {required GetProjectByIdFailureResult getProjectByIdFailureResult}) {
    return _$GetProjectByIdResultFailure(
      getProjectByIdFailureResult: getProjectByIdFailureResult,
    );
  }

  GetProjectByIdResult fromJson(Map<String, Object> json) {
    return GetProjectByIdResult.fromJson(json);
  }
}

/// @nodoc
const $GetProjectByIdResult = _$GetProjectByIdResultTearOff();

/// @nodoc
mixin _$GetProjectByIdResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetProjectByIdSuccessResult getProjectByIdSuccessResult)
        success,
    required TResult Function(
            GetProjectByIdFailureResult getProjectByIdFailureResult)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetProjectByIdSuccessResult getProjectByIdSuccessResult)?
        success,
    TResult Function(GetProjectByIdFailureResult getProjectByIdFailureResult)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetProjectByIdResultSuccess value) success,
    required TResult Function(_$GetProjectByIdResultFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetProjectByIdResultSuccess value)? success,
    TResult Function(_$GetProjectByIdResultFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProjectByIdResultCopyWith<$Res> {
  factory $GetProjectByIdResultCopyWith(GetProjectByIdResult value,
          $Res Function(GetProjectByIdResult) then) =
      _$GetProjectByIdResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProjectByIdResultCopyWithImpl<$Res>
    implements $GetProjectByIdResultCopyWith<$Res> {
  _$GetProjectByIdResultCopyWithImpl(this._value, this._then);

  final GetProjectByIdResult _value;
  // ignore: unused_field
  final $Res Function(GetProjectByIdResult) _then;
}

/// @nodoc
abstract class _$$GetProjectByIdResultSuccessCopyWith<$Res> {
  factory _$$GetProjectByIdResultSuccessCopyWith(
          _$GetProjectByIdResultSuccess value,
          $Res Function(_$GetProjectByIdResultSuccess) then) =
      __$$GetProjectByIdResultSuccessCopyWithImpl<$Res>;
  $Res call({GetProjectByIdSuccessResult getProjectByIdSuccessResult});

  $GetProjectByIdSuccessResultCopyWith<$Res> get getProjectByIdSuccessResult;
}

/// @nodoc
class __$$GetProjectByIdResultSuccessCopyWithImpl<$Res>
    extends _$GetProjectByIdResultCopyWithImpl<$Res>
    implements _$$GetProjectByIdResultSuccessCopyWith<$Res> {
  __$$GetProjectByIdResultSuccessCopyWithImpl(
      _$GetProjectByIdResultSuccess _value,
      $Res Function(_$GetProjectByIdResultSuccess) _then)
      : super(_value, (v) => _then(v as _$GetProjectByIdResultSuccess));

  @override
  _$GetProjectByIdResultSuccess get _value =>
      super._value as _$GetProjectByIdResultSuccess;

  @override
  $Res call({
    Object? getProjectByIdSuccessResult = freezed,
  }) {
    return _then(_$GetProjectByIdResultSuccess(
      getProjectByIdSuccessResult: getProjectByIdSuccessResult == freezed
          ? _value.getProjectByIdSuccessResult
          : getProjectByIdSuccessResult // ignore: cast_nullable_to_non_nullable
              as GetProjectByIdSuccessResult,
    ));
  }

  @override
  $GetProjectByIdSuccessResultCopyWith<$Res> get getProjectByIdSuccessResult {
    return $GetProjectByIdSuccessResultCopyWith<$Res>(
        _value.getProjectByIdSuccessResult, (value) {
      return _then(_value.copyWith(getProjectByIdSuccessResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetProjectByIdResultSuccess extends _$GetProjectByIdResultSuccess {
  const _$_$GetProjectByIdResultSuccess(
      {required this.getProjectByIdSuccessResult})
      : super._();

  factory _$_$GetProjectByIdResultSuccess.fromJson(Map<String, dynamic> json) =>
      _$_$_$GetProjectByIdResultSuccessFromJson(json);

  @override
  final GetProjectByIdSuccessResult getProjectByIdSuccessResult;

  @override
  String toString() {
    return 'GetProjectByIdResult.success(getProjectByIdSuccessResult: $getProjectByIdSuccessResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetProjectByIdResultSuccess &&
            (identical(other.getProjectByIdSuccessResult,
                    getProjectByIdSuccessResult) ||
                const DeepCollectionEquality().equals(
                    other.getProjectByIdSuccessResult,
                    getProjectByIdSuccessResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(getProjectByIdSuccessResult);

  @JsonKey(ignore: true)
  @override
  _$$GetProjectByIdResultSuccessCopyWith<_$GetProjectByIdResultSuccess>
      get copyWith => __$$GetProjectByIdResultSuccessCopyWithImpl<
          _$GetProjectByIdResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetProjectByIdSuccessResult getProjectByIdSuccessResult)
        success,
    required TResult Function(
            GetProjectByIdFailureResult getProjectByIdFailureResult)
        failure,
  }) {
    return success(getProjectByIdSuccessResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetProjectByIdSuccessResult getProjectByIdSuccessResult)?
        success,
    TResult Function(GetProjectByIdFailureResult getProjectByIdFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(getProjectByIdSuccessResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetProjectByIdResultSuccess value) success,
    required TResult Function(_$GetProjectByIdResultFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetProjectByIdResultSuccess value)? success,
    TResult Function(_$GetProjectByIdResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetProjectByIdResultSuccessToJson(this)
      ..['runtimeType'] = 'success';
  }
}

abstract class _$GetProjectByIdResultSuccess extends GetProjectByIdResult {
  const factory _$GetProjectByIdResultSuccess(
          {required GetProjectByIdSuccessResult getProjectByIdSuccessResult}) =
      _$_$GetProjectByIdResultSuccess;
  const _$GetProjectByIdResultSuccess._() : super._();

  factory _$GetProjectByIdResultSuccess.fromJson(Map<String, dynamic> json) =
      _$_$GetProjectByIdResultSuccess.fromJson;

  GetProjectByIdSuccessResult get getProjectByIdSuccessResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetProjectByIdResultSuccessCopyWith<_$GetProjectByIdResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProjectByIdResultFailureCopyWith<$Res> {
  factory _$$GetProjectByIdResultFailureCopyWith(
          _$GetProjectByIdResultFailure value,
          $Res Function(_$GetProjectByIdResultFailure) then) =
      __$$GetProjectByIdResultFailureCopyWithImpl<$Res>;
  $Res call({GetProjectByIdFailureResult getProjectByIdFailureResult});

  $GetProjectByIdFailureResultCopyWith<$Res> get getProjectByIdFailureResult;
}

/// @nodoc
class __$$GetProjectByIdResultFailureCopyWithImpl<$Res>
    extends _$GetProjectByIdResultCopyWithImpl<$Res>
    implements _$$GetProjectByIdResultFailureCopyWith<$Res> {
  __$$GetProjectByIdResultFailureCopyWithImpl(
      _$GetProjectByIdResultFailure _value,
      $Res Function(_$GetProjectByIdResultFailure) _then)
      : super(_value, (v) => _then(v as _$GetProjectByIdResultFailure));

  @override
  _$GetProjectByIdResultFailure get _value =>
      super._value as _$GetProjectByIdResultFailure;

  @override
  $Res call({
    Object? getProjectByIdFailureResult = freezed,
  }) {
    return _then(_$GetProjectByIdResultFailure(
      getProjectByIdFailureResult: getProjectByIdFailureResult == freezed
          ? _value.getProjectByIdFailureResult
          : getProjectByIdFailureResult // ignore: cast_nullable_to_non_nullable
              as GetProjectByIdFailureResult,
    ));
  }

  @override
  $GetProjectByIdFailureResultCopyWith<$Res> get getProjectByIdFailureResult {
    return $GetProjectByIdFailureResultCopyWith<$Res>(
        _value.getProjectByIdFailureResult, (value) {
      return _then(_value.copyWith(getProjectByIdFailureResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetProjectByIdResultFailure extends _$GetProjectByIdResultFailure {
  const _$_$GetProjectByIdResultFailure(
      {required this.getProjectByIdFailureResult})
      : super._();

  factory _$_$GetProjectByIdResultFailure.fromJson(Map<String, dynamic> json) =>
      _$_$_$GetProjectByIdResultFailureFromJson(json);

  @override
  final GetProjectByIdFailureResult getProjectByIdFailureResult;

  @override
  String toString() {
    return 'GetProjectByIdResult.failure(getProjectByIdFailureResult: $getProjectByIdFailureResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetProjectByIdResultFailure &&
            (identical(other.getProjectByIdFailureResult,
                    getProjectByIdFailureResult) ||
                const DeepCollectionEquality().equals(
                    other.getProjectByIdFailureResult,
                    getProjectByIdFailureResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(getProjectByIdFailureResult);

  @JsonKey(ignore: true)
  @override
  _$$GetProjectByIdResultFailureCopyWith<_$GetProjectByIdResultFailure>
      get copyWith => __$$GetProjectByIdResultFailureCopyWithImpl<
          _$GetProjectByIdResultFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetProjectByIdSuccessResult getProjectByIdSuccessResult)
        success,
    required TResult Function(
            GetProjectByIdFailureResult getProjectByIdFailureResult)
        failure,
  }) {
    return failure(getProjectByIdFailureResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetProjectByIdSuccessResult getProjectByIdSuccessResult)?
        success,
    TResult Function(GetProjectByIdFailureResult getProjectByIdFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(getProjectByIdFailureResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetProjectByIdResultSuccess value) success,
    required TResult Function(_$GetProjectByIdResultFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetProjectByIdResultSuccess value)? success,
    TResult Function(_$GetProjectByIdResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetProjectByIdResultFailureToJson(this)
      ..['runtimeType'] = 'failure';
  }
}

abstract class _$GetProjectByIdResultFailure extends GetProjectByIdResult {
  const factory _$GetProjectByIdResultFailure(
          {required GetProjectByIdFailureResult getProjectByIdFailureResult}) =
      _$_$GetProjectByIdResultFailure;
  const _$GetProjectByIdResultFailure._() : super._();

  factory _$GetProjectByIdResultFailure.fromJson(Map<String, dynamic> json) =
      _$_$GetProjectByIdResultFailure.fromJson;

  GetProjectByIdFailureResult get getProjectByIdFailureResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetProjectByIdResultFailureCopyWith<_$GetProjectByIdResultFailure>
      get copyWith => throw _privateConstructorUsedError;
}

GetProjectByIdSuccessResult _$GetProjectByIdSuccessResultFromJson(
    Map<String, dynamic> json) {
  return _$GetProjectByIdSuccessResultCtor.fromJson(json);
}

/// @nodoc
class _$GetProjectByIdSuccessResultTearOff {
  const _$GetProjectByIdSuccessResultTearOff();

  _$GetProjectByIdSuccessResultCtor call(
      {required int statusCode, required ProjectEntity result}) {
    return _$GetProjectByIdSuccessResultCtor(
      statusCode: statusCode,
      result: result,
    );
  }

  GetProjectByIdSuccessResult fromJson(Map<String, Object> json) {
    return GetProjectByIdSuccessResult.fromJson(json);
  }
}

/// @nodoc
const $GetProjectByIdSuccessResult = _$GetProjectByIdSuccessResultTearOff();

/// @nodoc
mixin _$GetProjectByIdSuccessResult {
  int get statusCode => throw _privateConstructorUsedError;
  ProjectEntity get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProjectByIdSuccessResultCopyWith<GetProjectByIdSuccessResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProjectByIdSuccessResultCopyWith<$Res> {
  factory $GetProjectByIdSuccessResultCopyWith(
          GetProjectByIdSuccessResult value,
          $Res Function(GetProjectByIdSuccessResult) then) =
      _$GetProjectByIdSuccessResultCopyWithImpl<$Res>;
  $Res call({int statusCode, ProjectEntity result});

  $ProjectEntityCopyWith<$Res> get result;
}

/// @nodoc
class _$GetProjectByIdSuccessResultCopyWithImpl<$Res>
    implements $GetProjectByIdSuccessResultCopyWith<$Res> {
  _$GetProjectByIdSuccessResultCopyWithImpl(this._value, this._then);

  final GetProjectByIdSuccessResult _value;
  // ignore: unused_field
  final $Res Function(GetProjectByIdSuccessResult) _then;

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
              as ProjectEntity,
    ));
  }

  @override
  $ProjectEntityCopyWith<$Res> get result {
    return $ProjectEntityCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$GetProjectByIdSuccessResultCtorCopyWith<$Res>
    implements $GetProjectByIdSuccessResultCopyWith<$Res> {
  factory _$$GetProjectByIdSuccessResultCtorCopyWith(
          _$GetProjectByIdSuccessResultCtor value,
          $Res Function(_$GetProjectByIdSuccessResultCtor) then) =
      __$$GetProjectByIdSuccessResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, ProjectEntity result});

  @override
  $ProjectEntityCopyWith<$Res> get result;
}

/// @nodoc
class __$$GetProjectByIdSuccessResultCtorCopyWithImpl<$Res>
    extends _$GetProjectByIdSuccessResultCopyWithImpl<$Res>
    implements _$$GetProjectByIdSuccessResultCtorCopyWith<$Res> {
  __$$GetProjectByIdSuccessResultCtorCopyWithImpl(
      _$GetProjectByIdSuccessResultCtor _value,
      $Res Function(_$GetProjectByIdSuccessResultCtor) _then)
      : super(_value, (v) => _then(v as _$GetProjectByIdSuccessResultCtor));

  @override
  _$GetProjectByIdSuccessResultCtor get _value =>
      super._value as _$GetProjectByIdSuccessResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? result = freezed,
  }) {
    return _then(_$GetProjectByIdSuccessResultCtor(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ProjectEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetProjectByIdSuccessResultCtor
    extends _$GetProjectByIdSuccessResultCtor {
  const _$_$GetProjectByIdSuccessResultCtor(
      {required this.statusCode, required this.result})
      : super._();

  factory _$_$GetProjectByIdSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetProjectByIdSuccessResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final ProjectEntity result;

  @override
  String toString() {
    return 'GetProjectByIdSuccessResult(statusCode: $statusCode, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetProjectByIdSuccessResultCtor &&
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
  _$$GetProjectByIdSuccessResultCtorCopyWith<_$GetProjectByIdSuccessResultCtor>
      get copyWith => __$$GetProjectByIdSuccessResultCtorCopyWithImpl<
          _$GetProjectByIdSuccessResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetProjectByIdSuccessResultCtorToJson(this);
  }
}

abstract class _$GetProjectByIdSuccessResultCtor
    extends GetProjectByIdSuccessResult {
  const factory _$GetProjectByIdSuccessResultCtor(
      {required int statusCode,
      required ProjectEntity result}) = _$_$GetProjectByIdSuccessResultCtor;
  const _$GetProjectByIdSuccessResultCtor._() : super._();

  factory _$GetProjectByIdSuccessResultCtor.fromJson(
      Map<String, dynamic> json) = _$_$GetProjectByIdSuccessResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  ProjectEntity get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GetProjectByIdSuccessResultCtorCopyWith<_$GetProjectByIdSuccessResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}

GetProjectByIdFailureResult _$GetProjectByIdFailureResultFromJson(
    Map<String, dynamic> json) {
  return _$GetProjectByIdFailureResultCtor.fromJson(json);
}

/// @nodoc
class _$GetProjectByIdFailureResultTearOff {
  const _$GetProjectByIdFailureResultTearOff();

  _$GetProjectByIdFailureResultCtor call(
      {required int statusCode, required String message}) {
    return _$GetProjectByIdFailureResultCtor(
      statusCode: statusCode,
      message: message,
    );
  }

  GetProjectByIdFailureResult fromJson(Map<String, Object> json) {
    return GetProjectByIdFailureResult.fromJson(json);
  }
}

/// @nodoc
const $GetProjectByIdFailureResult = _$GetProjectByIdFailureResultTearOff();

/// @nodoc
mixin _$GetProjectByIdFailureResult {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProjectByIdFailureResultCopyWith<GetProjectByIdFailureResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProjectByIdFailureResultCopyWith<$Res> {
  factory $GetProjectByIdFailureResultCopyWith(
          GetProjectByIdFailureResult value,
          $Res Function(GetProjectByIdFailureResult) then) =
      _$GetProjectByIdFailureResultCopyWithImpl<$Res>;
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$GetProjectByIdFailureResultCopyWithImpl<$Res>
    implements $GetProjectByIdFailureResultCopyWith<$Res> {
  _$GetProjectByIdFailureResultCopyWithImpl(this._value, this._then);

  final GetProjectByIdFailureResult _value;
  // ignore: unused_field
  final $Res Function(GetProjectByIdFailureResult) _then;

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
abstract class _$$GetProjectByIdFailureResultCtorCopyWith<$Res>
    implements $GetProjectByIdFailureResultCopyWith<$Res> {
  factory _$$GetProjectByIdFailureResultCtorCopyWith(
          _$GetProjectByIdFailureResultCtor value,
          $Res Function(_$GetProjectByIdFailureResultCtor) then) =
      __$$GetProjectByIdFailureResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$GetProjectByIdFailureResultCtorCopyWithImpl<$Res>
    extends _$GetProjectByIdFailureResultCopyWithImpl<$Res>
    implements _$$GetProjectByIdFailureResultCtorCopyWith<$Res> {
  __$$GetProjectByIdFailureResultCtorCopyWithImpl(
      _$GetProjectByIdFailureResultCtor _value,
      $Res Function(_$GetProjectByIdFailureResultCtor) _then)
      : super(_value, (v) => _then(v as _$GetProjectByIdFailureResultCtor));

  @override
  _$GetProjectByIdFailureResultCtor get _value =>
      super._value as _$GetProjectByIdFailureResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$GetProjectByIdFailureResultCtor(
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
class _$_$GetProjectByIdFailureResultCtor
    extends _$GetProjectByIdFailureResultCtor {
  const _$_$GetProjectByIdFailureResultCtor(
      {required this.statusCode, required this.message})
      : super._();

  factory _$_$GetProjectByIdFailureResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetProjectByIdFailureResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'GetProjectByIdFailureResult(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetProjectByIdFailureResultCtor &&
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
  _$$GetProjectByIdFailureResultCtorCopyWith<_$GetProjectByIdFailureResultCtor>
      get copyWith => __$$GetProjectByIdFailureResultCtorCopyWithImpl<
          _$GetProjectByIdFailureResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetProjectByIdFailureResultCtorToJson(this);
  }
}

abstract class _$GetProjectByIdFailureResultCtor
    extends GetProjectByIdFailureResult {
  const factory _$GetProjectByIdFailureResultCtor(
      {required int statusCode,
      required String message}) = _$_$GetProjectByIdFailureResultCtor;
  const _$GetProjectByIdFailureResultCtor._() : super._();

  factory _$GetProjectByIdFailureResultCtor.fromJson(
      Map<String, dynamic> json) = _$_$GetProjectByIdFailureResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GetProjectByIdFailureResultCtorCopyWith<_$GetProjectByIdFailureResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}
