// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'getComponentByIdResult.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetComponentByIdResult _$GetComponentByIdResultFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'success':
      return _$GetComponentByIdResultSuccess.fromJson(json);
    case 'failure':
      return _$GetComponentByIdResultFailure.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$GetComponentByIdResultTearOff {
  const _$GetComponentByIdResultTearOff();

  _$GetComponentByIdResultSuccess success(
      {required GetComponentByIdSuccessResult getComponentByIdSuccessResult}) {
    return _$GetComponentByIdResultSuccess(
      getComponentByIdSuccessResult: getComponentByIdSuccessResult,
    );
  }

  _$GetComponentByIdResultFailure failure(
      {required GetComponentByIdFailureResult getComponentByIdFailureResult}) {
    return _$GetComponentByIdResultFailure(
      getComponentByIdFailureResult: getComponentByIdFailureResult,
    );
  }

  GetComponentByIdResult fromJson(Map<String, Object> json) {
    return GetComponentByIdResult.fromJson(json);
  }
}

/// @nodoc
const $GetComponentByIdResult = _$GetComponentByIdResultTearOff();

/// @nodoc
mixin _$GetComponentByIdResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetComponentByIdSuccessResult getComponentByIdSuccessResult)
        success,
    required TResult Function(
            GetComponentByIdFailureResult getComponentByIdFailureResult)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetComponentByIdSuccessResult getComponentByIdSuccessResult)?
        success,
    TResult Function(
            GetComponentByIdFailureResult getComponentByIdFailureResult)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetComponentByIdResultSuccess value) success,
    required TResult Function(_$GetComponentByIdResultFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetComponentByIdResultSuccess value)? success,
    TResult Function(_$GetComponentByIdResultFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetComponentByIdResultCopyWith<$Res> {
  factory $GetComponentByIdResultCopyWith(GetComponentByIdResult value,
          $Res Function(GetComponentByIdResult) then) =
      _$GetComponentByIdResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetComponentByIdResultCopyWithImpl<$Res>
    implements $GetComponentByIdResultCopyWith<$Res> {
  _$GetComponentByIdResultCopyWithImpl(this._value, this._then);

  final GetComponentByIdResult _value;
  // ignore: unused_field
  final $Res Function(GetComponentByIdResult) _then;
}

/// @nodoc
abstract class _$$GetComponentByIdResultSuccessCopyWith<$Res> {
  factory _$$GetComponentByIdResultSuccessCopyWith(
          _$GetComponentByIdResultSuccess value,
          $Res Function(_$GetComponentByIdResultSuccess) then) =
      __$$GetComponentByIdResultSuccessCopyWithImpl<$Res>;
  $Res call({GetComponentByIdSuccessResult getComponentByIdSuccessResult});

  $GetComponentByIdSuccessResultCopyWith<$Res>
      get getComponentByIdSuccessResult;
}

/// @nodoc
class __$$GetComponentByIdResultSuccessCopyWithImpl<$Res>
    extends _$GetComponentByIdResultCopyWithImpl<$Res>
    implements _$$GetComponentByIdResultSuccessCopyWith<$Res> {
  __$$GetComponentByIdResultSuccessCopyWithImpl(
      _$GetComponentByIdResultSuccess _value,
      $Res Function(_$GetComponentByIdResultSuccess) _then)
      : super(_value, (v) => _then(v as _$GetComponentByIdResultSuccess));

  @override
  _$GetComponentByIdResultSuccess get _value =>
      super._value as _$GetComponentByIdResultSuccess;

  @override
  $Res call({
    Object? getComponentByIdSuccessResult = freezed,
  }) {
    return _then(_$GetComponentByIdResultSuccess(
      getComponentByIdSuccessResult: getComponentByIdSuccessResult == freezed
          ? _value.getComponentByIdSuccessResult
          : getComponentByIdSuccessResult // ignore: cast_nullable_to_non_nullable
              as GetComponentByIdSuccessResult,
    ));
  }

  @override
  $GetComponentByIdSuccessResultCopyWith<$Res>
      get getComponentByIdSuccessResult {
    return $GetComponentByIdSuccessResultCopyWith<$Res>(
        _value.getComponentByIdSuccessResult, (value) {
      return _then(_value.copyWith(getComponentByIdSuccessResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetComponentByIdResultSuccess
    extends _$GetComponentByIdResultSuccess {
  const _$_$GetComponentByIdResultSuccess(
      {required this.getComponentByIdSuccessResult})
      : super._();

  factory _$_$GetComponentByIdResultSuccess.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetComponentByIdResultSuccessFromJson(json);

  @override
  final GetComponentByIdSuccessResult getComponentByIdSuccessResult;

  @override
  String toString() {
    return 'GetComponentByIdResult.success(getComponentByIdSuccessResult: $getComponentByIdSuccessResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetComponentByIdResultSuccess &&
            (identical(other.getComponentByIdSuccessResult,
                    getComponentByIdSuccessResult) ||
                const DeepCollectionEquality().equals(
                    other.getComponentByIdSuccessResult,
                    getComponentByIdSuccessResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(getComponentByIdSuccessResult);

  @JsonKey(ignore: true)
  @override
  _$$GetComponentByIdResultSuccessCopyWith<_$GetComponentByIdResultSuccess>
      get copyWith => __$$GetComponentByIdResultSuccessCopyWithImpl<
          _$GetComponentByIdResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetComponentByIdSuccessResult getComponentByIdSuccessResult)
        success,
    required TResult Function(
            GetComponentByIdFailureResult getComponentByIdFailureResult)
        failure,
  }) {
    return success(getComponentByIdSuccessResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetComponentByIdSuccessResult getComponentByIdSuccessResult)?
        success,
    TResult Function(
            GetComponentByIdFailureResult getComponentByIdFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(getComponentByIdSuccessResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetComponentByIdResultSuccess value) success,
    required TResult Function(_$GetComponentByIdResultFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetComponentByIdResultSuccess value)? success,
    TResult Function(_$GetComponentByIdResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetComponentByIdResultSuccessToJson(this)
      ..['runtimeType'] = 'success';
  }
}

abstract class _$GetComponentByIdResultSuccess extends GetComponentByIdResult {
  const factory _$GetComponentByIdResultSuccess(
      {required GetComponentByIdSuccessResult
          getComponentByIdSuccessResult}) = _$_$GetComponentByIdResultSuccess;
  const _$GetComponentByIdResultSuccess._() : super._();

  factory _$GetComponentByIdResultSuccess.fromJson(Map<String, dynamic> json) =
      _$_$GetComponentByIdResultSuccess.fromJson;

  GetComponentByIdSuccessResult get getComponentByIdSuccessResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetComponentByIdResultSuccessCopyWith<_$GetComponentByIdResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetComponentByIdResultFailureCopyWith<$Res> {
  factory _$$GetComponentByIdResultFailureCopyWith(
          _$GetComponentByIdResultFailure value,
          $Res Function(_$GetComponentByIdResultFailure) then) =
      __$$GetComponentByIdResultFailureCopyWithImpl<$Res>;
  $Res call({GetComponentByIdFailureResult getComponentByIdFailureResult});

  $GetComponentByIdFailureResultCopyWith<$Res>
      get getComponentByIdFailureResult;
}

/// @nodoc
class __$$GetComponentByIdResultFailureCopyWithImpl<$Res>
    extends _$GetComponentByIdResultCopyWithImpl<$Res>
    implements _$$GetComponentByIdResultFailureCopyWith<$Res> {
  __$$GetComponentByIdResultFailureCopyWithImpl(
      _$GetComponentByIdResultFailure _value,
      $Res Function(_$GetComponentByIdResultFailure) _then)
      : super(_value, (v) => _then(v as _$GetComponentByIdResultFailure));

  @override
  _$GetComponentByIdResultFailure get _value =>
      super._value as _$GetComponentByIdResultFailure;

  @override
  $Res call({
    Object? getComponentByIdFailureResult = freezed,
  }) {
    return _then(_$GetComponentByIdResultFailure(
      getComponentByIdFailureResult: getComponentByIdFailureResult == freezed
          ? _value.getComponentByIdFailureResult
          : getComponentByIdFailureResult // ignore: cast_nullable_to_non_nullable
              as GetComponentByIdFailureResult,
    ));
  }

  @override
  $GetComponentByIdFailureResultCopyWith<$Res>
      get getComponentByIdFailureResult {
    return $GetComponentByIdFailureResultCopyWith<$Res>(
        _value.getComponentByIdFailureResult, (value) {
      return _then(_value.copyWith(getComponentByIdFailureResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetComponentByIdResultFailure
    extends _$GetComponentByIdResultFailure {
  const _$_$GetComponentByIdResultFailure(
      {required this.getComponentByIdFailureResult})
      : super._();

  factory _$_$GetComponentByIdResultFailure.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetComponentByIdResultFailureFromJson(json);

  @override
  final GetComponentByIdFailureResult getComponentByIdFailureResult;

  @override
  String toString() {
    return 'GetComponentByIdResult.failure(getComponentByIdFailureResult: $getComponentByIdFailureResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetComponentByIdResultFailure &&
            (identical(other.getComponentByIdFailureResult,
                    getComponentByIdFailureResult) ||
                const DeepCollectionEquality().equals(
                    other.getComponentByIdFailureResult,
                    getComponentByIdFailureResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(getComponentByIdFailureResult);

  @JsonKey(ignore: true)
  @override
  _$$GetComponentByIdResultFailureCopyWith<_$GetComponentByIdResultFailure>
      get copyWith => __$$GetComponentByIdResultFailureCopyWithImpl<
          _$GetComponentByIdResultFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetComponentByIdSuccessResult getComponentByIdSuccessResult)
        success,
    required TResult Function(
            GetComponentByIdFailureResult getComponentByIdFailureResult)
        failure,
  }) {
    return failure(getComponentByIdFailureResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetComponentByIdSuccessResult getComponentByIdSuccessResult)?
        success,
    TResult Function(
            GetComponentByIdFailureResult getComponentByIdFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(getComponentByIdFailureResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetComponentByIdResultSuccess value) success,
    required TResult Function(_$GetComponentByIdResultFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetComponentByIdResultSuccess value)? success,
    TResult Function(_$GetComponentByIdResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetComponentByIdResultFailureToJson(this)
      ..['runtimeType'] = 'failure';
  }
}

abstract class _$GetComponentByIdResultFailure extends GetComponentByIdResult {
  const factory _$GetComponentByIdResultFailure(
      {required GetComponentByIdFailureResult
          getComponentByIdFailureResult}) = _$_$GetComponentByIdResultFailure;
  const _$GetComponentByIdResultFailure._() : super._();

  factory _$GetComponentByIdResultFailure.fromJson(Map<String, dynamic> json) =
      _$_$GetComponentByIdResultFailure.fromJson;

  GetComponentByIdFailureResult get getComponentByIdFailureResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetComponentByIdResultFailureCopyWith<_$GetComponentByIdResultFailure>
      get copyWith => throw _privateConstructorUsedError;
}

GetComponentByIdSuccessResult _$GetComponentByIdSuccessResultFromJson(
    Map<String, dynamic> json) {
  return _$GetComponentByIdSuccessResultCtor.fromJson(json);
}

/// @nodoc
class _$GetComponentByIdSuccessResultTearOff {
  const _$GetComponentByIdSuccessResultTearOff();

  _$GetComponentByIdSuccessResultCtor call(
      {required int statusCode, required ComponentReadDto result}) {
    return _$GetComponentByIdSuccessResultCtor(
      statusCode: statusCode,
      result: result,
    );
  }

  GetComponentByIdSuccessResult fromJson(Map<String, Object> json) {
    return GetComponentByIdSuccessResult.fromJson(json);
  }
}

/// @nodoc
const $GetComponentByIdSuccessResult = _$GetComponentByIdSuccessResultTearOff();

/// @nodoc
mixin _$GetComponentByIdSuccessResult {
  int get statusCode => throw _privateConstructorUsedError;
  ComponentReadDto get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetComponentByIdSuccessResultCopyWith<GetComponentByIdSuccessResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetComponentByIdSuccessResultCopyWith<$Res> {
  factory $GetComponentByIdSuccessResultCopyWith(
          GetComponentByIdSuccessResult value,
          $Res Function(GetComponentByIdSuccessResult) then) =
      _$GetComponentByIdSuccessResultCopyWithImpl<$Res>;
  $Res call({int statusCode, ComponentReadDto result});

  $ComponentReadDtoCopyWith<$Res> get result;
}

/// @nodoc
class _$GetComponentByIdSuccessResultCopyWithImpl<$Res>
    implements $GetComponentByIdSuccessResultCopyWith<$Res> {
  _$GetComponentByIdSuccessResultCopyWithImpl(this._value, this._then);

  final GetComponentByIdSuccessResult _value;
  // ignore: unused_field
  final $Res Function(GetComponentByIdSuccessResult) _then;

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
              as ComponentReadDto,
    ));
  }

  @override
  $ComponentReadDtoCopyWith<$Res> get result {
    return $ComponentReadDtoCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$GetComponentByIdSuccessResultCtorCopyWith<$Res>
    implements $GetComponentByIdSuccessResultCopyWith<$Res> {
  factory _$$GetComponentByIdSuccessResultCtorCopyWith(
          _$GetComponentByIdSuccessResultCtor value,
          $Res Function(_$GetComponentByIdSuccessResultCtor) then) =
      __$$GetComponentByIdSuccessResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, ComponentReadDto result});

  @override
  $ComponentReadDtoCopyWith<$Res> get result;
}

/// @nodoc
class __$$GetComponentByIdSuccessResultCtorCopyWithImpl<$Res>
    extends _$GetComponentByIdSuccessResultCopyWithImpl<$Res>
    implements _$$GetComponentByIdSuccessResultCtorCopyWith<$Res> {
  __$$GetComponentByIdSuccessResultCtorCopyWithImpl(
      _$GetComponentByIdSuccessResultCtor _value,
      $Res Function(_$GetComponentByIdSuccessResultCtor) _then)
      : super(_value, (v) => _then(v as _$GetComponentByIdSuccessResultCtor));

  @override
  _$GetComponentByIdSuccessResultCtor get _value =>
      super._value as _$GetComponentByIdSuccessResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? result = freezed,
  }) {
    return _then(_$GetComponentByIdSuccessResultCtor(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ComponentReadDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetComponentByIdSuccessResultCtor
    extends _$GetComponentByIdSuccessResultCtor {
  const _$_$GetComponentByIdSuccessResultCtor(
      {required this.statusCode, required this.result})
      : super._();

  factory _$_$GetComponentByIdSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetComponentByIdSuccessResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final ComponentReadDto result;

  @override
  String toString() {
    return 'GetComponentByIdSuccessResult(statusCode: $statusCode, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetComponentByIdSuccessResultCtor &&
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
  _$$GetComponentByIdSuccessResultCtorCopyWith<
          _$GetComponentByIdSuccessResultCtor>
      get copyWith => __$$GetComponentByIdSuccessResultCtorCopyWithImpl<
          _$GetComponentByIdSuccessResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetComponentByIdSuccessResultCtorToJson(this);
  }
}

abstract class _$GetComponentByIdSuccessResultCtor
    extends GetComponentByIdSuccessResult {
  const factory _$GetComponentByIdSuccessResultCtor(
          {required int statusCode, required ComponentReadDto result}) =
      _$_$GetComponentByIdSuccessResultCtor;
  const _$GetComponentByIdSuccessResultCtor._() : super._();

  factory _$GetComponentByIdSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$GetComponentByIdSuccessResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  ComponentReadDto get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GetComponentByIdSuccessResultCtorCopyWith<
          _$GetComponentByIdSuccessResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}

GetComponentByIdFailureResult _$GetComponentByIdFailureResultFromJson(
    Map<String, dynamic> json) {
  return _$GetComponentByIdFailureResultCtor.fromJson(json);
}

/// @nodoc
class _$GetComponentByIdFailureResultTearOff {
  const _$GetComponentByIdFailureResultTearOff();

  _$GetComponentByIdFailureResultCtor call(
      {required int statusCode, required String message}) {
    return _$GetComponentByIdFailureResultCtor(
      statusCode: statusCode,
      message: message,
    );
  }

  GetComponentByIdFailureResult fromJson(Map<String, Object> json) {
    return GetComponentByIdFailureResult.fromJson(json);
  }
}

/// @nodoc
const $GetComponentByIdFailureResult = _$GetComponentByIdFailureResultTearOff();

/// @nodoc
mixin _$GetComponentByIdFailureResult {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetComponentByIdFailureResultCopyWith<GetComponentByIdFailureResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetComponentByIdFailureResultCopyWith<$Res> {
  factory $GetComponentByIdFailureResultCopyWith(
          GetComponentByIdFailureResult value,
          $Res Function(GetComponentByIdFailureResult) then) =
      _$GetComponentByIdFailureResultCopyWithImpl<$Res>;
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$GetComponentByIdFailureResultCopyWithImpl<$Res>
    implements $GetComponentByIdFailureResultCopyWith<$Res> {
  _$GetComponentByIdFailureResultCopyWithImpl(this._value, this._then);

  final GetComponentByIdFailureResult _value;
  // ignore: unused_field
  final $Res Function(GetComponentByIdFailureResult) _then;

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
abstract class _$$GetComponentByIdFailureResultCtorCopyWith<$Res>
    implements $GetComponentByIdFailureResultCopyWith<$Res> {
  factory _$$GetComponentByIdFailureResultCtorCopyWith(
          _$GetComponentByIdFailureResultCtor value,
          $Res Function(_$GetComponentByIdFailureResultCtor) then) =
      __$$GetComponentByIdFailureResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$GetComponentByIdFailureResultCtorCopyWithImpl<$Res>
    extends _$GetComponentByIdFailureResultCopyWithImpl<$Res>
    implements _$$GetComponentByIdFailureResultCtorCopyWith<$Res> {
  __$$GetComponentByIdFailureResultCtorCopyWithImpl(
      _$GetComponentByIdFailureResultCtor _value,
      $Res Function(_$GetComponentByIdFailureResultCtor) _then)
      : super(_value, (v) => _then(v as _$GetComponentByIdFailureResultCtor));

  @override
  _$GetComponentByIdFailureResultCtor get _value =>
      super._value as _$GetComponentByIdFailureResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$GetComponentByIdFailureResultCtor(
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
class _$_$GetComponentByIdFailureResultCtor
    extends _$GetComponentByIdFailureResultCtor {
  const _$_$GetComponentByIdFailureResultCtor(
      {required this.statusCode, required this.message})
      : super._();

  factory _$_$GetComponentByIdFailureResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetComponentByIdFailureResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'GetComponentByIdFailureResult(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetComponentByIdFailureResultCtor &&
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
  _$$GetComponentByIdFailureResultCtorCopyWith<
          _$GetComponentByIdFailureResultCtor>
      get copyWith => __$$GetComponentByIdFailureResultCtorCopyWithImpl<
          _$GetComponentByIdFailureResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetComponentByIdFailureResultCtorToJson(this);
  }
}

abstract class _$GetComponentByIdFailureResultCtor
    extends GetComponentByIdFailureResult {
  const factory _$GetComponentByIdFailureResultCtor(
      {required int statusCode,
      required String message}) = _$_$GetComponentByIdFailureResultCtor;
  const _$GetComponentByIdFailureResultCtor._() : super._();

  factory _$GetComponentByIdFailureResultCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$GetComponentByIdFailureResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GetComponentByIdFailureResultCtorCopyWith<
          _$GetComponentByIdFailureResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}
