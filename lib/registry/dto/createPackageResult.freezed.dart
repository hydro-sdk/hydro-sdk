// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'createPackageResult.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatePackageResult _$CreatePackageResultFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'success':
      return _$CreatePackageResultSuccess.fromJson(json);
    case 'failure':
      return _$CreatePackageResultFailure.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$CreatePackageResultTearOff {
  const _$CreatePackageResultTearOff();

  _$CreatePackageResultSuccess success(
      {required CreatePackageSuccessResult createPackageSuccessResult}) {
    return _$CreatePackageResultSuccess(
      createPackageSuccessResult: createPackageSuccessResult,
    );
  }

  _$CreatePackageResultFailure failure(
      {required CreatePackageFailureResult createPackageFailureResult}) {
    return _$CreatePackageResultFailure(
      createPackageFailureResult: createPackageFailureResult,
    );
  }

  CreatePackageResult fromJson(Map<String, Object> json) {
    return CreatePackageResult.fromJson(json);
  }
}

/// @nodoc
const $CreatePackageResult = _$CreatePackageResultTearOff();

/// @nodoc
mixin _$CreatePackageResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CreatePackageSuccessResult createPackageSuccessResult)
        success,
    required TResult Function(
            CreatePackageFailureResult createPackageFailureResult)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreatePackageSuccessResult createPackageSuccessResult)?
        success,
    TResult Function(CreatePackageFailureResult createPackageFailureResult)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CreatePackageResultSuccess value) success,
    required TResult Function(_$CreatePackageResultFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CreatePackageResultSuccess value)? success,
    TResult Function(_$CreatePackageResultFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePackageResultCopyWith<$Res> {
  factory $CreatePackageResultCopyWith(
          CreatePackageResult value, $Res Function(CreatePackageResult) then) =
      _$CreatePackageResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatePackageResultCopyWithImpl<$Res>
    implements $CreatePackageResultCopyWith<$Res> {
  _$CreatePackageResultCopyWithImpl(this._value, this._then);

  final CreatePackageResult _value;
  // ignore: unused_field
  final $Res Function(CreatePackageResult) _then;
}

/// @nodoc
abstract class _$$CreatePackageResultSuccessCopyWith<$Res> {
  factory _$$CreatePackageResultSuccessCopyWith(
          _$CreatePackageResultSuccess value,
          $Res Function(_$CreatePackageResultSuccess) then) =
      __$$CreatePackageResultSuccessCopyWithImpl<$Res>;
  $Res call({CreatePackageSuccessResult createPackageSuccessResult});

  $CreatePackageSuccessResultCopyWith<$Res> get createPackageSuccessResult;
}

/// @nodoc
class __$$CreatePackageResultSuccessCopyWithImpl<$Res>
    extends _$CreatePackageResultCopyWithImpl<$Res>
    implements _$$CreatePackageResultSuccessCopyWith<$Res> {
  __$$CreatePackageResultSuccessCopyWithImpl(
      _$CreatePackageResultSuccess _value,
      $Res Function(_$CreatePackageResultSuccess) _then)
      : super(_value, (v) => _then(v as _$CreatePackageResultSuccess));

  @override
  _$CreatePackageResultSuccess get _value =>
      super._value as _$CreatePackageResultSuccess;

  @override
  $Res call({
    Object? createPackageSuccessResult = freezed,
  }) {
    return _then(_$CreatePackageResultSuccess(
      createPackageSuccessResult: createPackageSuccessResult == freezed
          ? _value.createPackageSuccessResult
          : createPackageSuccessResult // ignore: cast_nullable_to_non_nullable
              as CreatePackageSuccessResult,
    ));
  }

  @override
  $CreatePackageSuccessResultCopyWith<$Res> get createPackageSuccessResult {
    return $CreatePackageSuccessResultCopyWith<$Res>(
        _value.createPackageSuccessResult, (value) {
      return _then(_value.copyWith(createPackageSuccessResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CreatePackageResultSuccess extends _$CreatePackageResultSuccess {
  const _$_$CreatePackageResultSuccess(
      {required this.createPackageSuccessResult})
      : super._();

  factory _$_$CreatePackageResultSuccess.fromJson(Map<String, dynamic> json) =>
      _$_$_$CreatePackageResultSuccessFromJson(json);

  @override
  final CreatePackageSuccessResult createPackageSuccessResult;

  @override
  String toString() {
    return 'CreatePackageResult.success(createPackageSuccessResult: $createPackageSuccessResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreatePackageResultSuccess &&
            (identical(other.createPackageSuccessResult,
                    createPackageSuccessResult) ||
                const DeepCollectionEquality().equals(
                    other.createPackageSuccessResult,
                    createPackageSuccessResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(createPackageSuccessResult);

  @JsonKey(ignore: true)
  @override
  _$$CreatePackageResultSuccessCopyWith<_$CreatePackageResultSuccess>
      get copyWith => __$$CreatePackageResultSuccessCopyWithImpl<
          _$CreatePackageResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CreatePackageSuccessResult createPackageSuccessResult)
        success,
    required TResult Function(
            CreatePackageFailureResult createPackageFailureResult)
        failure,
  }) {
    return success(createPackageSuccessResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreatePackageSuccessResult createPackageSuccessResult)?
        success,
    TResult Function(CreatePackageFailureResult createPackageFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(createPackageSuccessResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CreatePackageResultSuccess value) success,
    required TResult Function(_$CreatePackageResultFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CreatePackageResultSuccess value)? success,
    TResult Function(_$CreatePackageResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreatePackageResultSuccessToJson(this)
      ..['runtimeType'] = 'success';
  }
}

abstract class _$CreatePackageResultSuccess extends CreatePackageResult {
  const factory _$CreatePackageResultSuccess(
          {required CreatePackageSuccessResult createPackageSuccessResult}) =
      _$_$CreatePackageResultSuccess;
  const _$CreatePackageResultSuccess._() : super._();

  factory _$CreatePackageResultSuccess.fromJson(Map<String, dynamic> json) =
      _$_$CreatePackageResultSuccess.fromJson;

  CreatePackageSuccessResult get createPackageSuccessResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CreatePackageResultSuccessCopyWith<_$CreatePackageResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatePackageResultFailureCopyWith<$Res> {
  factory _$$CreatePackageResultFailureCopyWith(
          _$CreatePackageResultFailure value,
          $Res Function(_$CreatePackageResultFailure) then) =
      __$$CreatePackageResultFailureCopyWithImpl<$Res>;
  $Res call({CreatePackageFailureResult createPackageFailureResult});

  $CreatePackageFailureResultCopyWith<$Res> get createPackageFailureResult;
}

/// @nodoc
class __$$CreatePackageResultFailureCopyWithImpl<$Res>
    extends _$CreatePackageResultCopyWithImpl<$Res>
    implements _$$CreatePackageResultFailureCopyWith<$Res> {
  __$$CreatePackageResultFailureCopyWithImpl(
      _$CreatePackageResultFailure _value,
      $Res Function(_$CreatePackageResultFailure) _then)
      : super(_value, (v) => _then(v as _$CreatePackageResultFailure));

  @override
  _$CreatePackageResultFailure get _value =>
      super._value as _$CreatePackageResultFailure;

  @override
  $Res call({
    Object? createPackageFailureResult = freezed,
  }) {
    return _then(_$CreatePackageResultFailure(
      createPackageFailureResult: createPackageFailureResult == freezed
          ? _value.createPackageFailureResult
          : createPackageFailureResult // ignore: cast_nullable_to_non_nullable
              as CreatePackageFailureResult,
    ));
  }

  @override
  $CreatePackageFailureResultCopyWith<$Res> get createPackageFailureResult {
    return $CreatePackageFailureResultCopyWith<$Res>(
        _value.createPackageFailureResult, (value) {
      return _then(_value.copyWith(createPackageFailureResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CreatePackageResultFailure extends _$CreatePackageResultFailure {
  const _$_$CreatePackageResultFailure(
      {required this.createPackageFailureResult})
      : super._();

  factory _$_$CreatePackageResultFailure.fromJson(Map<String, dynamic> json) =>
      _$_$_$CreatePackageResultFailureFromJson(json);

  @override
  final CreatePackageFailureResult createPackageFailureResult;

  @override
  String toString() {
    return 'CreatePackageResult.failure(createPackageFailureResult: $createPackageFailureResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreatePackageResultFailure &&
            (identical(other.createPackageFailureResult,
                    createPackageFailureResult) ||
                const DeepCollectionEquality().equals(
                    other.createPackageFailureResult,
                    createPackageFailureResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(createPackageFailureResult);

  @JsonKey(ignore: true)
  @override
  _$$CreatePackageResultFailureCopyWith<_$CreatePackageResultFailure>
      get copyWith => __$$CreatePackageResultFailureCopyWithImpl<
          _$CreatePackageResultFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CreatePackageSuccessResult createPackageSuccessResult)
        success,
    required TResult Function(
            CreatePackageFailureResult createPackageFailureResult)
        failure,
  }) {
    return failure(createPackageFailureResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreatePackageSuccessResult createPackageSuccessResult)?
        success,
    TResult Function(CreatePackageFailureResult createPackageFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(createPackageFailureResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CreatePackageResultSuccess value) success,
    required TResult Function(_$CreatePackageResultFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CreatePackageResultSuccess value)? success,
    TResult Function(_$CreatePackageResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreatePackageResultFailureToJson(this)
      ..['runtimeType'] = 'failure';
  }
}

abstract class _$CreatePackageResultFailure extends CreatePackageResult {
  const factory _$CreatePackageResultFailure(
          {required CreatePackageFailureResult createPackageFailureResult}) =
      _$_$CreatePackageResultFailure;
  const _$CreatePackageResultFailure._() : super._();

  factory _$CreatePackageResultFailure.fromJson(Map<String, dynamic> json) =
      _$_$CreatePackageResultFailure.fromJson;

  CreatePackageFailureResult get createPackageFailureResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CreatePackageResultFailureCopyWith<_$CreatePackageResultFailure>
      get copyWith => throw _privateConstructorUsedError;
}

CreatePackageSuccessResult _$CreatePackageSuccessResultFromJson(
    Map<String, dynamic> json) {
  return _$CreatePackageSuccessResultCtor.fromJson(json);
}

/// @nodoc
class _$CreatePackageSuccessResultTearOff {
  const _$CreatePackageSuccessResultTearOff();

  _$CreatePackageSuccessResultCtor call(
      {required int statusCode, required CreatePackageSuccess result}) {
    return _$CreatePackageSuccessResultCtor(
      statusCode: statusCode,
      result: result,
    );
  }

  CreatePackageSuccessResult fromJson(Map<String, Object> json) {
    return CreatePackageSuccessResult.fromJson(json);
  }
}

/// @nodoc
const $CreatePackageSuccessResult = _$CreatePackageSuccessResultTearOff();

/// @nodoc
mixin _$CreatePackageSuccessResult {
  int get statusCode => throw _privateConstructorUsedError;
  CreatePackageSuccess get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePackageSuccessResultCopyWith<CreatePackageSuccessResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePackageSuccessResultCopyWith<$Res> {
  factory $CreatePackageSuccessResultCopyWith(CreatePackageSuccessResult value,
          $Res Function(CreatePackageSuccessResult) then) =
      _$CreatePackageSuccessResultCopyWithImpl<$Res>;
  $Res call({int statusCode, CreatePackageSuccess result});

  $CreatePackageSuccessCopyWith<$Res> get result;
}

/// @nodoc
class _$CreatePackageSuccessResultCopyWithImpl<$Res>
    implements $CreatePackageSuccessResultCopyWith<$Res> {
  _$CreatePackageSuccessResultCopyWithImpl(this._value, this._then);

  final CreatePackageSuccessResult _value;
  // ignore: unused_field
  final $Res Function(CreatePackageSuccessResult) _then;

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
              as CreatePackageSuccess,
    ));
  }

  @override
  $CreatePackageSuccessCopyWith<$Res> get result {
    return $CreatePackageSuccessCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$CreatePackageSuccessResultCtorCopyWith<$Res>
    implements $CreatePackageSuccessResultCopyWith<$Res> {
  factory _$$CreatePackageSuccessResultCtorCopyWith(
          _$CreatePackageSuccessResultCtor value,
          $Res Function(_$CreatePackageSuccessResultCtor) then) =
      __$$CreatePackageSuccessResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, CreatePackageSuccess result});

  @override
  $CreatePackageSuccessCopyWith<$Res> get result;
}

/// @nodoc
class __$$CreatePackageSuccessResultCtorCopyWithImpl<$Res>
    extends _$CreatePackageSuccessResultCopyWithImpl<$Res>
    implements _$$CreatePackageSuccessResultCtorCopyWith<$Res> {
  __$$CreatePackageSuccessResultCtorCopyWithImpl(
      _$CreatePackageSuccessResultCtor _value,
      $Res Function(_$CreatePackageSuccessResultCtor) _then)
      : super(_value, (v) => _then(v as _$CreatePackageSuccessResultCtor));

  @override
  _$CreatePackageSuccessResultCtor get _value =>
      super._value as _$CreatePackageSuccessResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? result = freezed,
  }) {
    return _then(_$CreatePackageSuccessResultCtor(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as CreatePackageSuccess,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CreatePackageSuccessResultCtor
    extends _$CreatePackageSuccessResultCtor {
  const _$_$CreatePackageSuccessResultCtor(
      {required this.statusCode, required this.result})
      : super._();

  factory _$_$CreatePackageSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CreatePackageSuccessResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final CreatePackageSuccess result;

  @override
  String toString() {
    return 'CreatePackageSuccessResult(statusCode: $statusCode, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreatePackageSuccessResultCtor &&
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
  _$$CreatePackageSuccessResultCtorCopyWith<_$CreatePackageSuccessResultCtor>
      get copyWith => __$$CreatePackageSuccessResultCtorCopyWithImpl<
          _$CreatePackageSuccessResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreatePackageSuccessResultCtorToJson(this);
  }
}

abstract class _$CreatePackageSuccessResultCtor
    extends CreatePackageSuccessResult {
  const factory _$CreatePackageSuccessResultCtor(
          {required int statusCode, required CreatePackageSuccess result}) =
      _$_$CreatePackageSuccessResultCtor;
  const _$CreatePackageSuccessResultCtor._() : super._();

  factory _$CreatePackageSuccessResultCtor.fromJson(Map<String, dynamic> json) =
      _$_$CreatePackageSuccessResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  CreatePackageSuccess get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CreatePackageSuccessResultCtorCopyWith<_$CreatePackageSuccessResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}

CreatePackageFailureResult _$CreatePackageFailureResultFromJson(
    Map<String, dynamic> json) {
  return _$CreatePackageFailureResultCtor.fromJson(json);
}

/// @nodoc
class _$CreatePackageFailureResultTearOff {
  const _$CreatePackageFailureResultTearOff();

  _$CreatePackageFailureResultCtor call(
      {required int statusCode, required String message}) {
    return _$CreatePackageFailureResultCtor(
      statusCode: statusCode,
      message: message,
    );
  }

  CreatePackageFailureResult fromJson(Map<String, Object> json) {
    return CreatePackageFailureResult.fromJson(json);
  }
}

/// @nodoc
const $CreatePackageFailureResult = _$CreatePackageFailureResultTearOff();

/// @nodoc
mixin _$CreatePackageFailureResult {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePackageFailureResultCopyWith<CreatePackageFailureResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePackageFailureResultCopyWith<$Res> {
  factory $CreatePackageFailureResultCopyWith(CreatePackageFailureResult value,
          $Res Function(CreatePackageFailureResult) then) =
      _$CreatePackageFailureResultCopyWithImpl<$Res>;
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$CreatePackageFailureResultCopyWithImpl<$Res>
    implements $CreatePackageFailureResultCopyWith<$Res> {
  _$CreatePackageFailureResultCopyWithImpl(this._value, this._then);

  final CreatePackageFailureResult _value;
  // ignore: unused_field
  final $Res Function(CreatePackageFailureResult) _then;

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
abstract class _$$CreatePackageFailureResultCtorCopyWith<$Res>
    implements $CreatePackageFailureResultCopyWith<$Res> {
  factory _$$CreatePackageFailureResultCtorCopyWith(
          _$CreatePackageFailureResultCtor value,
          $Res Function(_$CreatePackageFailureResultCtor) then) =
      __$$CreatePackageFailureResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$CreatePackageFailureResultCtorCopyWithImpl<$Res>
    extends _$CreatePackageFailureResultCopyWithImpl<$Res>
    implements _$$CreatePackageFailureResultCtorCopyWith<$Res> {
  __$$CreatePackageFailureResultCtorCopyWithImpl(
      _$CreatePackageFailureResultCtor _value,
      $Res Function(_$CreatePackageFailureResultCtor) _then)
      : super(_value, (v) => _then(v as _$CreatePackageFailureResultCtor));

  @override
  _$CreatePackageFailureResultCtor get _value =>
      super._value as _$CreatePackageFailureResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CreatePackageFailureResultCtor(
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
class _$_$CreatePackageFailureResultCtor
    extends _$CreatePackageFailureResultCtor {
  const _$_$CreatePackageFailureResultCtor(
      {required this.statusCode, required this.message})
      : super._();

  factory _$_$CreatePackageFailureResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CreatePackageFailureResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'CreatePackageFailureResult(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreatePackageFailureResultCtor &&
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
  _$$CreatePackageFailureResultCtorCopyWith<_$CreatePackageFailureResultCtor>
      get copyWith => __$$CreatePackageFailureResultCtorCopyWithImpl<
          _$CreatePackageFailureResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreatePackageFailureResultCtorToJson(this);
  }
}

abstract class _$CreatePackageFailureResultCtor
    extends CreatePackageFailureResult {
  const factory _$CreatePackageFailureResultCtor(
      {required int statusCode,
      required String message}) = _$_$CreatePackageFailureResultCtor;
  const _$CreatePackageFailureResultCtor._() : super._();

  factory _$CreatePackageFailureResultCtor.fromJson(Map<String, dynamic> json) =
      _$_$CreatePackageFailureResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CreatePackageFailureResultCtorCopyWith<_$CreatePackageFailureResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}

CreatePackageSuccess _$CreatePackageSuccessFromJson(Map<String, dynamic> json) {
  return _$CreatePackageSuccessCtor.fromJson(json);
}

/// @nodoc
class _$CreatePackageSuccessTearOff {
  const _$CreatePackageSuccessTearOff();

  _$CreatePackageSuccessCtor call() {
    return const _$CreatePackageSuccessCtor();
  }

  CreatePackageSuccess fromJson(Map<String, Object> json) {
    return CreatePackageSuccess.fromJson(json);
  }
}

/// @nodoc
const $CreatePackageSuccess = _$CreatePackageSuccessTearOff();

/// @nodoc
mixin _$CreatePackageSuccess {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePackageSuccessCopyWith<$Res> {
  factory $CreatePackageSuccessCopyWith(CreatePackageSuccess value,
          $Res Function(CreatePackageSuccess) then) =
      _$CreatePackageSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatePackageSuccessCopyWithImpl<$Res>
    implements $CreatePackageSuccessCopyWith<$Res> {
  _$CreatePackageSuccessCopyWithImpl(this._value, this._then);

  final CreatePackageSuccess _value;
  // ignore: unused_field
  final $Res Function(CreatePackageSuccess) _then;
}

/// @nodoc
abstract class _$$CreatePackageSuccessCtorCopyWith<$Res> {
  factory _$$CreatePackageSuccessCtorCopyWith(_$CreatePackageSuccessCtor value,
          $Res Function(_$CreatePackageSuccessCtor) then) =
      __$$CreatePackageSuccessCtorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatePackageSuccessCtorCopyWithImpl<$Res>
    extends _$CreatePackageSuccessCopyWithImpl<$Res>
    implements _$$CreatePackageSuccessCtorCopyWith<$Res> {
  __$$CreatePackageSuccessCtorCopyWithImpl(_$CreatePackageSuccessCtor _value,
      $Res Function(_$CreatePackageSuccessCtor) _then)
      : super(_value, (v) => _then(v as _$CreatePackageSuccessCtor));

  @override
  _$CreatePackageSuccessCtor get _value =>
      super._value as _$CreatePackageSuccessCtor;
}

/// @nodoc
@JsonSerializable()
class _$_$CreatePackageSuccessCtor extends _$CreatePackageSuccessCtor {
  const _$_$CreatePackageSuccessCtor() : super._();

  factory _$_$CreatePackageSuccessCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$CreatePackageSuccessCtorFromJson(json);

  @override
  String toString() {
    return 'CreatePackageSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _$CreatePackageSuccessCtor);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreatePackageSuccessCtorToJson(this);
  }
}

abstract class _$CreatePackageSuccessCtor extends CreatePackageSuccess {
  const factory _$CreatePackageSuccessCtor() = _$_$CreatePackageSuccessCtor;
  const _$CreatePackageSuccessCtor._() : super._();

  factory _$CreatePackageSuccessCtor.fromJson(Map<String, dynamic> json) =
      _$_$CreatePackageSuccessCtor.fromJson;
}
