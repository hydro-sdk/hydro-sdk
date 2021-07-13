// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'canUpdateProjectsResult.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CanUpdateProjectsResult _$CanUpdateProjectsResultFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'success':
      return _$CanUpdateProjectsResultSuccess.fromJson(json);
    case 'failure':
      return _$CanUpdateProjectsResultFailure.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$CanUpdateProjectsResultTearOff {
  const _$CanUpdateProjectsResultTearOff();

  _$CanUpdateProjectsResultSuccess success(
      {required CanUpdateProjectsSuccessResult
          canUpdateProjectsSuccessResult}) {
    return _$CanUpdateProjectsResultSuccess(
      canUpdateProjectsSuccessResult: canUpdateProjectsSuccessResult,
    );
  }

  _$CanUpdateProjectsResultFailure failure(
      {required CanUpdateProjectsFailureResult
          canUpdateProjectsFailureResult}) {
    return _$CanUpdateProjectsResultFailure(
      canUpdateProjectsFailureResult: canUpdateProjectsFailureResult,
    );
  }

  CanUpdateProjectsResult fromJson(Map<String, Object> json) {
    return CanUpdateProjectsResult.fromJson(json);
  }
}

/// @nodoc
const $CanUpdateProjectsResult = _$CanUpdateProjectsResultTearOff();

/// @nodoc
mixin _$CanUpdateProjectsResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CanUpdateProjectsSuccessResult canUpdateProjectsSuccessResult)
        success,
    required TResult Function(
            CanUpdateProjectsFailureResult canUpdateProjectsFailureResult)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CanUpdateProjectsSuccessResult canUpdateProjectsSuccessResult)?
        success,
    TResult Function(
            CanUpdateProjectsFailureResult canUpdateProjectsFailureResult)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CanUpdateProjectsResultSuccess value) success,
    required TResult Function(_$CanUpdateProjectsResultFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CanUpdateProjectsResultSuccess value)? success,
    TResult Function(_$CanUpdateProjectsResultFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CanUpdateProjectsResultCopyWith<$Res> {
  factory $CanUpdateProjectsResultCopyWith(CanUpdateProjectsResult value,
          $Res Function(CanUpdateProjectsResult) then) =
      _$CanUpdateProjectsResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$CanUpdateProjectsResultCopyWithImpl<$Res>
    implements $CanUpdateProjectsResultCopyWith<$Res> {
  _$CanUpdateProjectsResultCopyWithImpl(this._value, this._then);

  final CanUpdateProjectsResult _value;
  // ignore: unused_field
  final $Res Function(CanUpdateProjectsResult) _then;
}

/// @nodoc
abstract class _$$CanUpdateProjectsResultSuccessCopyWith<$Res> {
  factory _$$CanUpdateProjectsResultSuccessCopyWith(
          _$CanUpdateProjectsResultSuccess value,
          $Res Function(_$CanUpdateProjectsResultSuccess) then) =
      __$$CanUpdateProjectsResultSuccessCopyWithImpl<$Res>;
  $Res call({CanUpdateProjectsSuccessResult canUpdateProjectsSuccessResult});

  $CanUpdateProjectsSuccessResultCopyWith<$Res>
      get canUpdateProjectsSuccessResult;
}

/// @nodoc
class __$$CanUpdateProjectsResultSuccessCopyWithImpl<$Res>
    extends _$CanUpdateProjectsResultCopyWithImpl<$Res>
    implements _$$CanUpdateProjectsResultSuccessCopyWith<$Res> {
  __$$CanUpdateProjectsResultSuccessCopyWithImpl(
      _$CanUpdateProjectsResultSuccess _value,
      $Res Function(_$CanUpdateProjectsResultSuccess) _then)
      : super(_value, (v) => _then(v as _$CanUpdateProjectsResultSuccess));

  @override
  _$CanUpdateProjectsResultSuccess get _value =>
      super._value as _$CanUpdateProjectsResultSuccess;

  @override
  $Res call({
    Object? canUpdateProjectsSuccessResult = freezed,
  }) {
    return _then(_$CanUpdateProjectsResultSuccess(
      canUpdateProjectsSuccessResult: canUpdateProjectsSuccessResult == freezed
          ? _value.canUpdateProjectsSuccessResult
          : canUpdateProjectsSuccessResult // ignore: cast_nullable_to_non_nullable
              as CanUpdateProjectsSuccessResult,
    ));
  }

  @override
  $CanUpdateProjectsSuccessResultCopyWith<$Res>
      get canUpdateProjectsSuccessResult {
    return $CanUpdateProjectsSuccessResultCopyWith<$Res>(
        _value.canUpdateProjectsSuccessResult, (value) {
      return _then(_value.copyWith(canUpdateProjectsSuccessResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CanUpdateProjectsResultSuccess
    extends _$CanUpdateProjectsResultSuccess {
  const _$_$CanUpdateProjectsResultSuccess(
      {required this.canUpdateProjectsSuccessResult})
      : super._();

  factory _$_$CanUpdateProjectsResultSuccess.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CanUpdateProjectsResultSuccessFromJson(json);

  @override
  final CanUpdateProjectsSuccessResult canUpdateProjectsSuccessResult;

  @override
  String toString() {
    return 'CanUpdateProjectsResult.success(canUpdateProjectsSuccessResult: $canUpdateProjectsSuccessResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CanUpdateProjectsResultSuccess &&
            (identical(other.canUpdateProjectsSuccessResult,
                    canUpdateProjectsSuccessResult) ||
                const DeepCollectionEquality().equals(
                    other.canUpdateProjectsSuccessResult,
                    canUpdateProjectsSuccessResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(canUpdateProjectsSuccessResult);

  @JsonKey(ignore: true)
  @override
  _$$CanUpdateProjectsResultSuccessCopyWith<_$CanUpdateProjectsResultSuccess>
      get copyWith => __$$CanUpdateProjectsResultSuccessCopyWithImpl<
          _$CanUpdateProjectsResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CanUpdateProjectsSuccessResult canUpdateProjectsSuccessResult)
        success,
    required TResult Function(
            CanUpdateProjectsFailureResult canUpdateProjectsFailureResult)
        failure,
  }) {
    return success(canUpdateProjectsSuccessResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CanUpdateProjectsSuccessResult canUpdateProjectsSuccessResult)?
        success,
    TResult Function(
            CanUpdateProjectsFailureResult canUpdateProjectsFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(canUpdateProjectsSuccessResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CanUpdateProjectsResultSuccess value) success,
    required TResult Function(_$CanUpdateProjectsResultFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CanUpdateProjectsResultSuccess value)? success,
    TResult Function(_$CanUpdateProjectsResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CanUpdateProjectsResultSuccessToJson(this)
      ..['runtimeType'] = 'success';
  }
}

abstract class _$CanUpdateProjectsResultSuccess
    extends CanUpdateProjectsResult {
  const factory _$CanUpdateProjectsResultSuccess(
      {required CanUpdateProjectsSuccessResult
          canUpdateProjectsSuccessResult}) = _$_$CanUpdateProjectsResultSuccess;
  const _$CanUpdateProjectsResultSuccess._() : super._();

  factory _$CanUpdateProjectsResultSuccess.fromJson(Map<String, dynamic> json) =
      _$_$CanUpdateProjectsResultSuccess.fromJson;

  CanUpdateProjectsSuccessResult get canUpdateProjectsSuccessResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CanUpdateProjectsResultSuccessCopyWith<_$CanUpdateProjectsResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CanUpdateProjectsResultFailureCopyWith<$Res> {
  factory _$$CanUpdateProjectsResultFailureCopyWith(
          _$CanUpdateProjectsResultFailure value,
          $Res Function(_$CanUpdateProjectsResultFailure) then) =
      __$$CanUpdateProjectsResultFailureCopyWithImpl<$Res>;
  $Res call({CanUpdateProjectsFailureResult canUpdateProjectsFailureResult});

  $CanUpdateProjectsFailureResultCopyWith<$Res>
      get canUpdateProjectsFailureResult;
}

/// @nodoc
class __$$CanUpdateProjectsResultFailureCopyWithImpl<$Res>
    extends _$CanUpdateProjectsResultCopyWithImpl<$Res>
    implements _$$CanUpdateProjectsResultFailureCopyWith<$Res> {
  __$$CanUpdateProjectsResultFailureCopyWithImpl(
      _$CanUpdateProjectsResultFailure _value,
      $Res Function(_$CanUpdateProjectsResultFailure) _then)
      : super(_value, (v) => _then(v as _$CanUpdateProjectsResultFailure));

  @override
  _$CanUpdateProjectsResultFailure get _value =>
      super._value as _$CanUpdateProjectsResultFailure;

  @override
  $Res call({
    Object? canUpdateProjectsFailureResult = freezed,
  }) {
    return _then(_$CanUpdateProjectsResultFailure(
      canUpdateProjectsFailureResult: canUpdateProjectsFailureResult == freezed
          ? _value.canUpdateProjectsFailureResult
          : canUpdateProjectsFailureResult // ignore: cast_nullable_to_non_nullable
              as CanUpdateProjectsFailureResult,
    ));
  }

  @override
  $CanUpdateProjectsFailureResultCopyWith<$Res>
      get canUpdateProjectsFailureResult {
    return $CanUpdateProjectsFailureResultCopyWith<$Res>(
        _value.canUpdateProjectsFailureResult, (value) {
      return _then(_value.copyWith(canUpdateProjectsFailureResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CanUpdateProjectsResultFailure
    extends _$CanUpdateProjectsResultFailure {
  const _$_$CanUpdateProjectsResultFailure(
      {required this.canUpdateProjectsFailureResult})
      : super._();

  factory _$_$CanUpdateProjectsResultFailure.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CanUpdateProjectsResultFailureFromJson(json);

  @override
  final CanUpdateProjectsFailureResult canUpdateProjectsFailureResult;

  @override
  String toString() {
    return 'CanUpdateProjectsResult.failure(canUpdateProjectsFailureResult: $canUpdateProjectsFailureResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CanUpdateProjectsResultFailure &&
            (identical(other.canUpdateProjectsFailureResult,
                    canUpdateProjectsFailureResult) ||
                const DeepCollectionEquality().equals(
                    other.canUpdateProjectsFailureResult,
                    canUpdateProjectsFailureResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(canUpdateProjectsFailureResult);

  @JsonKey(ignore: true)
  @override
  _$$CanUpdateProjectsResultFailureCopyWith<_$CanUpdateProjectsResultFailure>
      get copyWith => __$$CanUpdateProjectsResultFailureCopyWithImpl<
          _$CanUpdateProjectsResultFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CanUpdateProjectsSuccessResult canUpdateProjectsSuccessResult)
        success,
    required TResult Function(
            CanUpdateProjectsFailureResult canUpdateProjectsFailureResult)
        failure,
  }) {
    return failure(canUpdateProjectsFailureResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CanUpdateProjectsSuccessResult canUpdateProjectsSuccessResult)?
        success,
    TResult Function(
            CanUpdateProjectsFailureResult canUpdateProjectsFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(canUpdateProjectsFailureResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CanUpdateProjectsResultSuccess value) success,
    required TResult Function(_$CanUpdateProjectsResultFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CanUpdateProjectsResultSuccess value)? success,
    TResult Function(_$CanUpdateProjectsResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CanUpdateProjectsResultFailureToJson(this)
      ..['runtimeType'] = 'failure';
  }
}

abstract class _$CanUpdateProjectsResultFailure
    extends CanUpdateProjectsResult {
  const factory _$CanUpdateProjectsResultFailure(
      {required CanUpdateProjectsFailureResult
          canUpdateProjectsFailureResult}) = _$_$CanUpdateProjectsResultFailure;
  const _$CanUpdateProjectsResultFailure._() : super._();

  factory _$CanUpdateProjectsResultFailure.fromJson(Map<String, dynamic> json) =
      _$_$CanUpdateProjectsResultFailure.fromJson;

  CanUpdateProjectsFailureResult get canUpdateProjectsFailureResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CanUpdateProjectsResultFailureCopyWith<_$CanUpdateProjectsResultFailure>
      get copyWith => throw _privateConstructorUsedError;
}

CanUpdateProjectsSuccessResult _$CanUpdateProjectsSuccessResultFromJson(
    Map<String, dynamic> json) {
  return _$CanUpdateProjectsSuccessResultCtor.fromJson(json);
}

/// @nodoc
class _$CanUpdateProjectsSuccessResultTearOff {
  const _$CanUpdateProjectsSuccessResultTearOff();

  _$CanUpdateProjectsSuccessResultCtor call(
      {required int statusCode, required List<ProjectEntity> result}) {
    return _$CanUpdateProjectsSuccessResultCtor(
      statusCode: statusCode,
      result: result,
    );
  }

  CanUpdateProjectsSuccessResult fromJson(Map<String, Object> json) {
    return CanUpdateProjectsSuccessResult.fromJson(json);
  }
}

/// @nodoc
const $CanUpdateProjectsSuccessResult =
    _$CanUpdateProjectsSuccessResultTearOff();

/// @nodoc
mixin _$CanUpdateProjectsSuccessResult {
  int get statusCode => throw _privateConstructorUsedError;
  List<ProjectEntity> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CanUpdateProjectsSuccessResultCopyWith<CanUpdateProjectsSuccessResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CanUpdateProjectsSuccessResultCopyWith<$Res> {
  factory $CanUpdateProjectsSuccessResultCopyWith(
          CanUpdateProjectsSuccessResult value,
          $Res Function(CanUpdateProjectsSuccessResult) then) =
      _$CanUpdateProjectsSuccessResultCopyWithImpl<$Res>;
  $Res call({int statusCode, List<ProjectEntity> result});
}

/// @nodoc
class _$CanUpdateProjectsSuccessResultCopyWithImpl<$Res>
    implements $CanUpdateProjectsSuccessResultCopyWith<$Res> {
  _$CanUpdateProjectsSuccessResultCopyWithImpl(this._value, this._then);

  final CanUpdateProjectsSuccessResult _value;
  // ignore: unused_field
  final $Res Function(CanUpdateProjectsSuccessResult) _then;

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
              as List<ProjectEntity>,
    ));
  }
}

/// @nodoc
abstract class _$$CanUpdateProjectsSuccessResultCtorCopyWith<$Res>
    implements $CanUpdateProjectsSuccessResultCopyWith<$Res> {
  factory _$$CanUpdateProjectsSuccessResultCtorCopyWith(
          _$CanUpdateProjectsSuccessResultCtor value,
          $Res Function(_$CanUpdateProjectsSuccessResultCtor) then) =
      __$$CanUpdateProjectsSuccessResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, List<ProjectEntity> result});
}

/// @nodoc
class __$$CanUpdateProjectsSuccessResultCtorCopyWithImpl<$Res>
    extends _$CanUpdateProjectsSuccessResultCopyWithImpl<$Res>
    implements _$$CanUpdateProjectsSuccessResultCtorCopyWith<$Res> {
  __$$CanUpdateProjectsSuccessResultCtorCopyWithImpl(
      _$CanUpdateProjectsSuccessResultCtor _value,
      $Res Function(_$CanUpdateProjectsSuccessResultCtor) _then)
      : super(_value, (v) => _then(v as _$CanUpdateProjectsSuccessResultCtor));

  @override
  _$CanUpdateProjectsSuccessResultCtor get _value =>
      super._value as _$CanUpdateProjectsSuccessResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? result = freezed,
  }) {
    return _then(_$CanUpdateProjectsSuccessResultCtor(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CanUpdateProjectsSuccessResultCtor
    extends _$CanUpdateProjectsSuccessResultCtor {
  const _$_$CanUpdateProjectsSuccessResultCtor(
      {required this.statusCode, required this.result})
      : super._();

  factory _$_$CanUpdateProjectsSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CanUpdateProjectsSuccessResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final List<ProjectEntity> result;

  @override
  String toString() {
    return 'CanUpdateProjectsSuccessResult(statusCode: $statusCode, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CanUpdateProjectsSuccessResultCtor &&
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
  _$$CanUpdateProjectsSuccessResultCtorCopyWith<
          _$CanUpdateProjectsSuccessResultCtor>
      get copyWith => __$$CanUpdateProjectsSuccessResultCtorCopyWithImpl<
          _$CanUpdateProjectsSuccessResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CanUpdateProjectsSuccessResultCtorToJson(this);
  }
}

abstract class _$CanUpdateProjectsSuccessResultCtor
    extends CanUpdateProjectsSuccessResult {
  const factory _$CanUpdateProjectsSuccessResultCtor(
          {required int statusCode, required List<ProjectEntity> result}) =
      _$_$CanUpdateProjectsSuccessResultCtor;
  const _$CanUpdateProjectsSuccessResultCtor._() : super._();

  factory _$CanUpdateProjectsSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$CanUpdateProjectsSuccessResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  List<ProjectEntity> get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CanUpdateProjectsSuccessResultCtorCopyWith<
          _$CanUpdateProjectsSuccessResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}

CanUpdateProjectsFailureResult _$CanUpdateProjectsFailureResultFromJson(
    Map<String, dynamic> json) {
  return _$CanUpdateProjectsFailureResultCtor.fromJson(json);
}

/// @nodoc
class _$CanUpdateProjectsFailureResultTearOff {
  const _$CanUpdateProjectsFailureResultTearOff();

  _$CanUpdateProjectsFailureResultCtor call(
      {required int statusCode, required String message}) {
    return _$CanUpdateProjectsFailureResultCtor(
      statusCode: statusCode,
      message: message,
    );
  }

  CanUpdateProjectsFailureResult fromJson(Map<String, Object> json) {
    return CanUpdateProjectsFailureResult.fromJson(json);
  }
}

/// @nodoc
const $CanUpdateProjectsFailureResult =
    _$CanUpdateProjectsFailureResultTearOff();

/// @nodoc
mixin _$CanUpdateProjectsFailureResult {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CanUpdateProjectsFailureResultCopyWith<CanUpdateProjectsFailureResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CanUpdateProjectsFailureResultCopyWith<$Res> {
  factory $CanUpdateProjectsFailureResultCopyWith(
          CanUpdateProjectsFailureResult value,
          $Res Function(CanUpdateProjectsFailureResult) then) =
      _$CanUpdateProjectsFailureResultCopyWithImpl<$Res>;
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$CanUpdateProjectsFailureResultCopyWithImpl<$Res>
    implements $CanUpdateProjectsFailureResultCopyWith<$Res> {
  _$CanUpdateProjectsFailureResultCopyWithImpl(this._value, this._then);

  final CanUpdateProjectsFailureResult _value;
  // ignore: unused_field
  final $Res Function(CanUpdateProjectsFailureResult) _then;

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
abstract class _$$CanUpdateProjectsFailureResultCtorCopyWith<$Res>
    implements $CanUpdateProjectsFailureResultCopyWith<$Res> {
  factory _$$CanUpdateProjectsFailureResultCtorCopyWith(
          _$CanUpdateProjectsFailureResultCtor value,
          $Res Function(_$CanUpdateProjectsFailureResultCtor) then) =
      __$$CanUpdateProjectsFailureResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$CanUpdateProjectsFailureResultCtorCopyWithImpl<$Res>
    extends _$CanUpdateProjectsFailureResultCopyWithImpl<$Res>
    implements _$$CanUpdateProjectsFailureResultCtorCopyWith<$Res> {
  __$$CanUpdateProjectsFailureResultCtorCopyWithImpl(
      _$CanUpdateProjectsFailureResultCtor _value,
      $Res Function(_$CanUpdateProjectsFailureResultCtor) _then)
      : super(_value, (v) => _then(v as _$CanUpdateProjectsFailureResultCtor));

  @override
  _$CanUpdateProjectsFailureResultCtor get _value =>
      super._value as _$CanUpdateProjectsFailureResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CanUpdateProjectsFailureResultCtor(
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
class _$_$CanUpdateProjectsFailureResultCtor
    extends _$CanUpdateProjectsFailureResultCtor {
  const _$_$CanUpdateProjectsFailureResultCtor(
      {required this.statusCode, required this.message})
      : super._();

  factory _$_$CanUpdateProjectsFailureResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CanUpdateProjectsFailureResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'CanUpdateProjectsFailureResult(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CanUpdateProjectsFailureResultCtor &&
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
  _$$CanUpdateProjectsFailureResultCtorCopyWith<
          _$CanUpdateProjectsFailureResultCtor>
      get copyWith => __$$CanUpdateProjectsFailureResultCtorCopyWithImpl<
          _$CanUpdateProjectsFailureResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CanUpdateProjectsFailureResultCtorToJson(this);
  }
}

abstract class _$CanUpdateProjectsFailureResultCtor
    extends CanUpdateProjectsFailureResult {
  const factory _$CanUpdateProjectsFailureResultCtor(
      {required int statusCode,
      required String message}) = _$_$CanUpdateProjectsFailureResultCtor;
  const _$CanUpdateProjectsFailureResultCtor._() : super._();

  factory _$CanUpdateProjectsFailureResultCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$CanUpdateProjectsFailureResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CanUpdateProjectsFailureResultCtorCopyWith<
          _$CanUpdateProjectsFailureResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}
