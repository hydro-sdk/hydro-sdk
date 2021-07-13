// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'provisionUserResult.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProvisionUserResult _$ProvisionUserResultFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'success':
      return _$ProvisionUserResultSuccess.fromJson(json);
    case 'failure':
      return _$ProvisionUserResultFailure.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$ProvisionUserResultTearOff {
  const _$ProvisionUserResultTearOff();

  _$ProvisionUserResultSuccess success(
      {required ProvisionUserSuccessResult provisionUserSuccessResult}) {
    return _$ProvisionUserResultSuccess(
      provisionUserSuccessResult: provisionUserSuccessResult,
    );
  }

  _$ProvisionUserResultFailure failure(
      {required ProvisionUserFailureResult provisionUserFailureResult}) {
    return _$ProvisionUserResultFailure(
      provisionUserFailureResult: provisionUserFailureResult,
    );
  }

  ProvisionUserResult fromJson(Map<String, Object> json) {
    return ProvisionUserResult.fromJson(json);
  }
}

/// @nodoc
const $ProvisionUserResult = _$ProvisionUserResultTearOff();

/// @nodoc
mixin _$ProvisionUserResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ProvisionUserSuccessResult provisionUserSuccessResult)
        success,
    required TResult Function(
            ProvisionUserFailureResult provisionUserFailureResult)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProvisionUserSuccessResult provisionUserSuccessResult)?
        success,
    TResult Function(ProvisionUserFailureResult provisionUserFailureResult)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ProvisionUserResultSuccess value) success,
    required TResult Function(_$ProvisionUserResultFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ProvisionUserResultSuccess value)? success,
    TResult Function(_$ProvisionUserResultFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvisionUserResultCopyWith<$Res> {
  factory $ProvisionUserResultCopyWith(
          ProvisionUserResult value, $Res Function(ProvisionUserResult) then) =
      _$ProvisionUserResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProvisionUserResultCopyWithImpl<$Res>
    implements $ProvisionUserResultCopyWith<$Res> {
  _$ProvisionUserResultCopyWithImpl(this._value, this._then);

  final ProvisionUserResult _value;
  // ignore: unused_field
  final $Res Function(ProvisionUserResult) _then;
}

/// @nodoc
abstract class _$$ProvisionUserResultSuccessCopyWith<$Res> {
  factory _$$ProvisionUserResultSuccessCopyWith(
          _$ProvisionUserResultSuccess value,
          $Res Function(_$ProvisionUserResultSuccess) then) =
      __$$ProvisionUserResultSuccessCopyWithImpl<$Res>;
  $Res call({ProvisionUserSuccessResult provisionUserSuccessResult});

  $ProvisionUserSuccessResultCopyWith<$Res> get provisionUserSuccessResult;
}

/// @nodoc
class __$$ProvisionUserResultSuccessCopyWithImpl<$Res>
    extends _$ProvisionUserResultCopyWithImpl<$Res>
    implements _$$ProvisionUserResultSuccessCopyWith<$Res> {
  __$$ProvisionUserResultSuccessCopyWithImpl(
      _$ProvisionUserResultSuccess _value,
      $Res Function(_$ProvisionUserResultSuccess) _then)
      : super(_value, (v) => _then(v as _$ProvisionUserResultSuccess));

  @override
  _$ProvisionUserResultSuccess get _value =>
      super._value as _$ProvisionUserResultSuccess;

  @override
  $Res call({
    Object? provisionUserSuccessResult = freezed,
  }) {
    return _then(_$ProvisionUserResultSuccess(
      provisionUserSuccessResult: provisionUserSuccessResult == freezed
          ? _value.provisionUserSuccessResult
          : provisionUserSuccessResult // ignore: cast_nullable_to_non_nullable
              as ProvisionUserSuccessResult,
    ));
  }

  @override
  $ProvisionUserSuccessResultCopyWith<$Res> get provisionUserSuccessResult {
    return $ProvisionUserSuccessResultCopyWith<$Res>(
        _value.provisionUserSuccessResult, (value) {
      return _then(_value.copyWith(provisionUserSuccessResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$ProvisionUserResultSuccess extends _$ProvisionUserResultSuccess {
  const _$_$ProvisionUserResultSuccess(
      {required this.provisionUserSuccessResult})
      : super._();

  factory _$_$ProvisionUserResultSuccess.fromJson(Map<String, dynamic> json) =>
      _$_$_$ProvisionUserResultSuccessFromJson(json);

  @override
  final ProvisionUserSuccessResult provisionUserSuccessResult;

  @override
  String toString() {
    return 'ProvisionUserResult.success(provisionUserSuccessResult: $provisionUserSuccessResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ProvisionUserResultSuccess &&
            (identical(other.provisionUserSuccessResult,
                    provisionUserSuccessResult) ||
                const DeepCollectionEquality().equals(
                    other.provisionUserSuccessResult,
                    provisionUserSuccessResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(provisionUserSuccessResult);

  @JsonKey(ignore: true)
  @override
  _$$ProvisionUserResultSuccessCopyWith<_$ProvisionUserResultSuccess>
      get copyWith => __$$ProvisionUserResultSuccessCopyWithImpl<
          _$ProvisionUserResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ProvisionUserSuccessResult provisionUserSuccessResult)
        success,
    required TResult Function(
            ProvisionUserFailureResult provisionUserFailureResult)
        failure,
  }) {
    return success(provisionUserSuccessResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProvisionUserSuccessResult provisionUserSuccessResult)?
        success,
    TResult Function(ProvisionUserFailureResult provisionUserFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(provisionUserSuccessResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ProvisionUserResultSuccess value) success,
    required TResult Function(_$ProvisionUserResultFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ProvisionUserResultSuccess value)? success,
    TResult Function(_$ProvisionUserResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$ProvisionUserResultSuccessToJson(this)
      ..['runtimeType'] = 'success';
  }
}

abstract class _$ProvisionUserResultSuccess extends ProvisionUserResult {
  const factory _$ProvisionUserResultSuccess(
          {required ProvisionUserSuccessResult provisionUserSuccessResult}) =
      _$_$ProvisionUserResultSuccess;
  const _$ProvisionUserResultSuccess._() : super._();

  factory _$ProvisionUserResultSuccess.fromJson(Map<String, dynamic> json) =
      _$_$ProvisionUserResultSuccess.fromJson;

  ProvisionUserSuccessResult get provisionUserSuccessResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ProvisionUserResultSuccessCopyWith<_$ProvisionUserResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProvisionUserResultFailureCopyWith<$Res> {
  factory _$$ProvisionUserResultFailureCopyWith(
          _$ProvisionUserResultFailure value,
          $Res Function(_$ProvisionUserResultFailure) then) =
      __$$ProvisionUserResultFailureCopyWithImpl<$Res>;
  $Res call({ProvisionUserFailureResult provisionUserFailureResult});

  $ProvisionUserFailureResultCopyWith<$Res> get provisionUserFailureResult;
}

/// @nodoc
class __$$ProvisionUserResultFailureCopyWithImpl<$Res>
    extends _$ProvisionUserResultCopyWithImpl<$Res>
    implements _$$ProvisionUserResultFailureCopyWith<$Res> {
  __$$ProvisionUserResultFailureCopyWithImpl(
      _$ProvisionUserResultFailure _value,
      $Res Function(_$ProvisionUserResultFailure) _then)
      : super(_value, (v) => _then(v as _$ProvisionUserResultFailure));

  @override
  _$ProvisionUserResultFailure get _value =>
      super._value as _$ProvisionUserResultFailure;

  @override
  $Res call({
    Object? provisionUserFailureResult = freezed,
  }) {
    return _then(_$ProvisionUserResultFailure(
      provisionUserFailureResult: provisionUserFailureResult == freezed
          ? _value.provisionUserFailureResult
          : provisionUserFailureResult // ignore: cast_nullable_to_non_nullable
              as ProvisionUserFailureResult,
    ));
  }

  @override
  $ProvisionUserFailureResultCopyWith<$Res> get provisionUserFailureResult {
    return $ProvisionUserFailureResultCopyWith<$Res>(
        _value.provisionUserFailureResult, (value) {
      return _then(_value.copyWith(provisionUserFailureResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$ProvisionUserResultFailure extends _$ProvisionUserResultFailure {
  const _$_$ProvisionUserResultFailure(
      {required this.provisionUserFailureResult})
      : super._();

  factory _$_$ProvisionUserResultFailure.fromJson(Map<String, dynamic> json) =>
      _$_$_$ProvisionUserResultFailureFromJson(json);

  @override
  final ProvisionUserFailureResult provisionUserFailureResult;

  @override
  String toString() {
    return 'ProvisionUserResult.failure(provisionUserFailureResult: $provisionUserFailureResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ProvisionUserResultFailure &&
            (identical(other.provisionUserFailureResult,
                    provisionUserFailureResult) ||
                const DeepCollectionEquality().equals(
                    other.provisionUserFailureResult,
                    provisionUserFailureResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(provisionUserFailureResult);

  @JsonKey(ignore: true)
  @override
  _$$ProvisionUserResultFailureCopyWith<_$ProvisionUserResultFailure>
      get copyWith => __$$ProvisionUserResultFailureCopyWithImpl<
          _$ProvisionUserResultFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ProvisionUserSuccessResult provisionUserSuccessResult)
        success,
    required TResult Function(
            ProvisionUserFailureResult provisionUserFailureResult)
        failure,
  }) {
    return failure(provisionUserFailureResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProvisionUserSuccessResult provisionUserSuccessResult)?
        success,
    TResult Function(ProvisionUserFailureResult provisionUserFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(provisionUserFailureResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ProvisionUserResultSuccess value) success,
    required TResult Function(_$ProvisionUserResultFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ProvisionUserResultSuccess value)? success,
    TResult Function(_$ProvisionUserResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$ProvisionUserResultFailureToJson(this)
      ..['runtimeType'] = 'failure';
  }
}

abstract class _$ProvisionUserResultFailure extends ProvisionUserResult {
  const factory _$ProvisionUserResultFailure(
          {required ProvisionUserFailureResult provisionUserFailureResult}) =
      _$_$ProvisionUserResultFailure;
  const _$ProvisionUserResultFailure._() : super._();

  factory _$ProvisionUserResultFailure.fromJson(Map<String, dynamic> json) =
      _$_$ProvisionUserResultFailure.fromJson;

  ProvisionUserFailureResult get provisionUserFailureResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ProvisionUserResultFailureCopyWith<_$ProvisionUserResultFailure>
      get copyWith => throw _privateConstructorUsedError;
}

ProvisionUserSuccessResult _$ProvisionUserSuccessResultFromJson(
    Map<String, dynamic> json) {
  return _$ProvisionUserSuccessResultCtor.fromJson(json);
}

/// @nodoc
class _$ProvisionUserSuccessResultTearOff {
  const _$ProvisionUserSuccessResultTearOff();

  _$ProvisionUserSuccessResultCtor call(
      {required int statusCode, required bool result}) {
    return _$ProvisionUserSuccessResultCtor(
      statusCode: statusCode,
      result: result,
    );
  }

  ProvisionUserSuccessResult fromJson(Map<String, Object> json) {
    return ProvisionUserSuccessResult.fromJson(json);
  }
}

/// @nodoc
const $ProvisionUserSuccessResult = _$ProvisionUserSuccessResultTearOff();

/// @nodoc
mixin _$ProvisionUserSuccessResult {
  int get statusCode => throw _privateConstructorUsedError;
  bool get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvisionUserSuccessResultCopyWith<ProvisionUserSuccessResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvisionUserSuccessResultCopyWith<$Res> {
  factory $ProvisionUserSuccessResultCopyWith(ProvisionUserSuccessResult value,
          $Res Function(ProvisionUserSuccessResult) then) =
      _$ProvisionUserSuccessResultCopyWithImpl<$Res>;
  $Res call({int statusCode, bool result});
}

/// @nodoc
class _$ProvisionUserSuccessResultCopyWithImpl<$Res>
    implements $ProvisionUserSuccessResultCopyWith<$Res> {
  _$ProvisionUserSuccessResultCopyWithImpl(this._value, this._then);

  final ProvisionUserSuccessResult _value;
  // ignore: unused_field
  final $Res Function(ProvisionUserSuccessResult) _then;

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
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$ProvisionUserSuccessResultCtorCopyWith<$Res>
    implements $ProvisionUserSuccessResultCopyWith<$Res> {
  factory _$$ProvisionUserSuccessResultCtorCopyWith(
          _$ProvisionUserSuccessResultCtor value,
          $Res Function(_$ProvisionUserSuccessResultCtor) then) =
      __$$ProvisionUserSuccessResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, bool result});
}

/// @nodoc
class __$$ProvisionUserSuccessResultCtorCopyWithImpl<$Res>
    extends _$ProvisionUserSuccessResultCopyWithImpl<$Res>
    implements _$$ProvisionUserSuccessResultCtorCopyWith<$Res> {
  __$$ProvisionUserSuccessResultCtorCopyWithImpl(
      _$ProvisionUserSuccessResultCtor _value,
      $Res Function(_$ProvisionUserSuccessResultCtor) _then)
      : super(_value, (v) => _then(v as _$ProvisionUserSuccessResultCtor));

  @override
  _$ProvisionUserSuccessResultCtor get _value =>
      super._value as _$ProvisionUserSuccessResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ProvisionUserSuccessResultCtor(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$ProvisionUserSuccessResultCtor
    extends _$ProvisionUserSuccessResultCtor {
  const _$_$ProvisionUserSuccessResultCtor(
      {required this.statusCode, required this.result})
      : super._();

  factory _$_$ProvisionUserSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$ProvisionUserSuccessResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final bool result;

  @override
  String toString() {
    return 'ProvisionUserSuccessResult(statusCode: $statusCode, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ProvisionUserSuccessResultCtor &&
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
  _$$ProvisionUserSuccessResultCtorCopyWith<_$ProvisionUserSuccessResultCtor>
      get copyWith => __$$ProvisionUserSuccessResultCtorCopyWithImpl<
          _$ProvisionUserSuccessResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$ProvisionUserSuccessResultCtorToJson(this);
  }
}

abstract class _$ProvisionUserSuccessResultCtor
    extends ProvisionUserSuccessResult {
  const factory _$ProvisionUserSuccessResultCtor(
      {required int statusCode,
      required bool result}) = _$_$ProvisionUserSuccessResultCtor;
  const _$ProvisionUserSuccessResultCtor._() : super._();

  factory _$ProvisionUserSuccessResultCtor.fromJson(Map<String, dynamic> json) =
      _$_$ProvisionUserSuccessResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  bool get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ProvisionUserSuccessResultCtorCopyWith<_$ProvisionUserSuccessResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}

ProvisionUserFailureResult _$ProvisionUserFailureResultFromJson(
    Map<String, dynamic> json) {
  return _$ProvisionUserFailureResultCtor.fromJson(json);
}

/// @nodoc
class _$ProvisionUserFailureResultTearOff {
  const _$ProvisionUserFailureResultTearOff();

  _$ProvisionUserFailureResultCtor call(
      {required int statusCode, required String message}) {
    return _$ProvisionUserFailureResultCtor(
      statusCode: statusCode,
      message: message,
    );
  }

  ProvisionUserFailureResult fromJson(Map<String, Object> json) {
    return ProvisionUserFailureResult.fromJson(json);
  }
}

/// @nodoc
const $ProvisionUserFailureResult = _$ProvisionUserFailureResultTearOff();

/// @nodoc
mixin _$ProvisionUserFailureResult {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvisionUserFailureResultCopyWith<ProvisionUserFailureResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvisionUserFailureResultCopyWith<$Res> {
  factory $ProvisionUserFailureResultCopyWith(ProvisionUserFailureResult value,
          $Res Function(ProvisionUserFailureResult) then) =
      _$ProvisionUserFailureResultCopyWithImpl<$Res>;
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$ProvisionUserFailureResultCopyWithImpl<$Res>
    implements $ProvisionUserFailureResultCopyWith<$Res> {
  _$ProvisionUserFailureResultCopyWithImpl(this._value, this._then);

  final ProvisionUserFailureResult _value;
  // ignore: unused_field
  final $Res Function(ProvisionUserFailureResult) _then;

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
abstract class _$$ProvisionUserFailureResultCtorCopyWith<$Res>
    implements $ProvisionUserFailureResultCopyWith<$Res> {
  factory _$$ProvisionUserFailureResultCtorCopyWith(
          _$ProvisionUserFailureResultCtor value,
          $Res Function(_$ProvisionUserFailureResultCtor) then) =
      __$$ProvisionUserFailureResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$ProvisionUserFailureResultCtorCopyWithImpl<$Res>
    extends _$ProvisionUserFailureResultCopyWithImpl<$Res>
    implements _$$ProvisionUserFailureResultCtorCopyWith<$Res> {
  __$$ProvisionUserFailureResultCtorCopyWithImpl(
      _$ProvisionUserFailureResultCtor _value,
      $Res Function(_$ProvisionUserFailureResultCtor) _then)
      : super(_value, (v) => _then(v as _$ProvisionUserFailureResultCtor));

  @override
  _$ProvisionUserFailureResultCtor get _value =>
      super._value as _$ProvisionUserFailureResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ProvisionUserFailureResultCtor(
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
class _$_$ProvisionUserFailureResultCtor
    extends _$ProvisionUserFailureResultCtor {
  const _$_$ProvisionUserFailureResultCtor(
      {required this.statusCode, required this.message})
      : super._();

  factory _$_$ProvisionUserFailureResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$ProvisionUserFailureResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'ProvisionUserFailureResult(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ProvisionUserFailureResultCtor &&
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
  _$$ProvisionUserFailureResultCtorCopyWith<_$ProvisionUserFailureResultCtor>
      get copyWith => __$$ProvisionUserFailureResultCtorCopyWithImpl<
          _$ProvisionUserFailureResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$ProvisionUserFailureResultCtorToJson(this);
  }
}

abstract class _$ProvisionUserFailureResultCtor
    extends ProvisionUserFailureResult {
  const factory _$ProvisionUserFailureResultCtor(
      {required int statusCode,
      required String message}) = _$_$ProvisionUserFailureResultCtor;
  const _$ProvisionUserFailureResultCtor._() : super._();

  factory _$ProvisionUserFailureResultCtor.fromJson(Map<String, dynamic> json) =
      _$_$ProvisionUserFailureResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ProvisionUserFailureResultCtorCopyWith<_$ProvisionUserFailureResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}
