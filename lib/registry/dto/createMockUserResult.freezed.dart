// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'createMockUserResult.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateMockUserResult _$CreateMockUserResultFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'success':
      return _$CreateMockUserResultSuccess.fromJson(json);
    case 'failure':
      return _$CreateMockUserResultFailure.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$CreateMockUserResultTearOff {
  const _$CreateMockUserResultTearOff();

  _$CreateMockUserResultSuccess success(
      {required CreateMockUserSuccessResult createMockUserSuccessResult}) {
    return _$CreateMockUserResultSuccess(
      createMockUserSuccessResult: createMockUserSuccessResult,
    );
  }

  _$CreateMockUserResultFailure failure(
      {required CreateMockUserFailureResult createMockUserFailureResult}) {
    return _$CreateMockUserResultFailure(
      createMockUserFailureResult: createMockUserFailureResult,
    );
  }

  CreateMockUserResult fromJson(Map<String, Object> json) {
    return CreateMockUserResult.fromJson(json);
  }
}

/// @nodoc
const $CreateMockUserResult = _$CreateMockUserResultTearOff();

/// @nodoc
mixin _$CreateMockUserResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CreateMockUserSuccessResult createMockUserSuccessResult)
        success,
    required TResult Function(
            CreateMockUserFailureResult createMockUserFailureResult)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateMockUserSuccessResult createMockUserSuccessResult)?
        success,
    TResult Function(CreateMockUserFailureResult createMockUserFailureResult)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CreateMockUserResultSuccess value) success,
    required TResult Function(_$CreateMockUserResultFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CreateMockUserResultSuccess value)? success,
    TResult Function(_$CreateMockUserResultFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMockUserResultCopyWith<$Res> {
  factory $CreateMockUserResultCopyWith(CreateMockUserResult value,
          $Res Function(CreateMockUserResult) then) =
      _$CreateMockUserResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateMockUserResultCopyWithImpl<$Res>
    implements $CreateMockUserResultCopyWith<$Res> {
  _$CreateMockUserResultCopyWithImpl(this._value, this._then);

  final CreateMockUserResult _value;
  // ignore: unused_field
  final $Res Function(CreateMockUserResult) _then;
}

/// @nodoc
abstract class _$$CreateMockUserResultSuccessCopyWith<$Res> {
  factory _$$CreateMockUserResultSuccessCopyWith(
          _$CreateMockUserResultSuccess value,
          $Res Function(_$CreateMockUserResultSuccess) then) =
      __$$CreateMockUserResultSuccessCopyWithImpl<$Res>;
  $Res call({CreateMockUserSuccessResult createMockUserSuccessResult});

  $CreateMockUserSuccessResultCopyWith<$Res> get createMockUserSuccessResult;
}

/// @nodoc
class __$$CreateMockUserResultSuccessCopyWithImpl<$Res>
    extends _$CreateMockUserResultCopyWithImpl<$Res>
    implements _$$CreateMockUserResultSuccessCopyWith<$Res> {
  __$$CreateMockUserResultSuccessCopyWithImpl(
      _$CreateMockUserResultSuccess _value,
      $Res Function(_$CreateMockUserResultSuccess) _then)
      : super(_value, (v) => _then(v as _$CreateMockUserResultSuccess));

  @override
  _$CreateMockUserResultSuccess get _value =>
      super._value as _$CreateMockUserResultSuccess;

  @override
  $Res call({
    Object? createMockUserSuccessResult = freezed,
  }) {
    return _then(_$CreateMockUserResultSuccess(
      createMockUserSuccessResult: createMockUserSuccessResult == freezed
          ? _value.createMockUserSuccessResult
          : createMockUserSuccessResult // ignore: cast_nullable_to_non_nullable
              as CreateMockUserSuccessResult,
    ));
  }

  @override
  $CreateMockUserSuccessResultCopyWith<$Res> get createMockUserSuccessResult {
    return $CreateMockUserSuccessResultCopyWith<$Res>(
        _value.createMockUserSuccessResult, (value) {
      return _then(_value.copyWith(createMockUserSuccessResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CreateMockUserResultSuccess extends _$CreateMockUserResultSuccess {
  const _$_$CreateMockUserResultSuccess(
      {required this.createMockUserSuccessResult})
      : super._();

  factory _$_$CreateMockUserResultSuccess.fromJson(Map<String, dynamic> json) =>
      _$_$_$CreateMockUserResultSuccessFromJson(json);

  @override
  final CreateMockUserSuccessResult createMockUserSuccessResult;

  @override
  String toString() {
    return 'CreateMockUserResult.success(createMockUserSuccessResult: $createMockUserSuccessResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreateMockUserResultSuccess &&
            (identical(other.createMockUserSuccessResult,
                    createMockUserSuccessResult) ||
                const DeepCollectionEquality().equals(
                    other.createMockUserSuccessResult,
                    createMockUserSuccessResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(createMockUserSuccessResult);

  @JsonKey(ignore: true)
  @override
  _$$CreateMockUserResultSuccessCopyWith<_$CreateMockUserResultSuccess>
      get copyWith => __$$CreateMockUserResultSuccessCopyWithImpl<
          _$CreateMockUserResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CreateMockUserSuccessResult createMockUserSuccessResult)
        success,
    required TResult Function(
            CreateMockUserFailureResult createMockUserFailureResult)
        failure,
  }) {
    return success(createMockUserSuccessResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateMockUserSuccessResult createMockUserSuccessResult)?
        success,
    TResult Function(CreateMockUserFailureResult createMockUserFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(createMockUserSuccessResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CreateMockUserResultSuccess value) success,
    required TResult Function(_$CreateMockUserResultFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CreateMockUserResultSuccess value)? success,
    TResult Function(_$CreateMockUserResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreateMockUserResultSuccessToJson(this)
      ..['runtimeType'] = 'success';
  }
}

abstract class _$CreateMockUserResultSuccess extends CreateMockUserResult {
  const factory _$CreateMockUserResultSuccess(
          {required CreateMockUserSuccessResult createMockUserSuccessResult}) =
      _$_$CreateMockUserResultSuccess;
  const _$CreateMockUserResultSuccess._() : super._();

  factory _$CreateMockUserResultSuccess.fromJson(Map<String, dynamic> json) =
      _$_$CreateMockUserResultSuccess.fromJson;

  CreateMockUserSuccessResult get createMockUserSuccessResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CreateMockUserResultSuccessCopyWith<_$CreateMockUserResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateMockUserResultFailureCopyWith<$Res> {
  factory _$$CreateMockUserResultFailureCopyWith(
          _$CreateMockUserResultFailure value,
          $Res Function(_$CreateMockUserResultFailure) then) =
      __$$CreateMockUserResultFailureCopyWithImpl<$Res>;
  $Res call({CreateMockUserFailureResult createMockUserFailureResult});

  $CreateMockUserFailureResultCopyWith<$Res> get createMockUserFailureResult;
}

/// @nodoc
class __$$CreateMockUserResultFailureCopyWithImpl<$Res>
    extends _$CreateMockUserResultCopyWithImpl<$Res>
    implements _$$CreateMockUserResultFailureCopyWith<$Res> {
  __$$CreateMockUserResultFailureCopyWithImpl(
      _$CreateMockUserResultFailure _value,
      $Res Function(_$CreateMockUserResultFailure) _then)
      : super(_value, (v) => _then(v as _$CreateMockUserResultFailure));

  @override
  _$CreateMockUserResultFailure get _value =>
      super._value as _$CreateMockUserResultFailure;

  @override
  $Res call({
    Object? createMockUserFailureResult = freezed,
  }) {
    return _then(_$CreateMockUserResultFailure(
      createMockUserFailureResult: createMockUserFailureResult == freezed
          ? _value.createMockUserFailureResult
          : createMockUserFailureResult // ignore: cast_nullable_to_non_nullable
              as CreateMockUserFailureResult,
    ));
  }

  @override
  $CreateMockUserFailureResultCopyWith<$Res> get createMockUserFailureResult {
    return $CreateMockUserFailureResultCopyWith<$Res>(
        _value.createMockUserFailureResult, (value) {
      return _then(_value.copyWith(createMockUserFailureResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CreateMockUserResultFailure extends _$CreateMockUserResultFailure {
  const _$_$CreateMockUserResultFailure(
      {required this.createMockUserFailureResult})
      : super._();

  factory _$_$CreateMockUserResultFailure.fromJson(Map<String, dynamic> json) =>
      _$_$_$CreateMockUserResultFailureFromJson(json);

  @override
  final CreateMockUserFailureResult createMockUserFailureResult;

  @override
  String toString() {
    return 'CreateMockUserResult.failure(createMockUserFailureResult: $createMockUserFailureResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreateMockUserResultFailure &&
            (identical(other.createMockUserFailureResult,
                    createMockUserFailureResult) ||
                const DeepCollectionEquality().equals(
                    other.createMockUserFailureResult,
                    createMockUserFailureResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(createMockUserFailureResult);

  @JsonKey(ignore: true)
  @override
  _$$CreateMockUserResultFailureCopyWith<_$CreateMockUserResultFailure>
      get copyWith => __$$CreateMockUserResultFailureCopyWithImpl<
          _$CreateMockUserResultFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CreateMockUserSuccessResult createMockUserSuccessResult)
        success,
    required TResult Function(
            CreateMockUserFailureResult createMockUserFailureResult)
        failure,
  }) {
    return failure(createMockUserFailureResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateMockUserSuccessResult createMockUserSuccessResult)?
        success,
    TResult Function(CreateMockUserFailureResult createMockUserFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(createMockUserFailureResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CreateMockUserResultSuccess value) success,
    required TResult Function(_$CreateMockUserResultFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CreateMockUserResultSuccess value)? success,
    TResult Function(_$CreateMockUserResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreateMockUserResultFailureToJson(this)
      ..['runtimeType'] = 'failure';
  }
}

abstract class _$CreateMockUserResultFailure extends CreateMockUserResult {
  const factory _$CreateMockUserResultFailure(
          {required CreateMockUserFailureResult createMockUserFailureResult}) =
      _$_$CreateMockUserResultFailure;
  const _$CreateMockUserResultFailure._() : super._();

  factory _$CreateMockUserResultFailure.fromJson(Map<String, dynamic> json) =
      _$_$CreateMockUserResultFailure.fromJson;

  CreateMockUserFailureResult get createMockUserFailureResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CreateMockUserResultFailureCopyWith<_$CreateMockUserResultFailure>
      get copyWith => throw _privateConstructorUsedError;
}

CreateMockUserSuccessResult _$CreateMockUserSuccessResultFromJson(
    Map<String, dynamic> json) {
  return _$CreateMockUserSuccessResultCtor.fromJson(json);
}

/// @nodoc
class _$CreateMockUserSuccessResultTearOff {
  const _$CreateMockUserSuccessResultTearOff();

  _$CreateMockUserSuccessResultCtor call(
      {required int statusCode, required String result}) {
    return _$CreateMockUserSuccessResultCtor(
      statusCode: statusCode,
      result: result,
    );
  }

  CreateMockUserSuccessResult fromJson(Map<String, Object> json) {
    return CreateMockUserSuccessResult.fromJson(json);
  }
}

/// @nodoc
const $CreateMockUserSuccessResult = _$CreateMockUserSuccessResultTearOff();

/// @nodoc
mixin _$CreateMockUserSuccessResult {
  int get statusCode => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateMockUserSuccessResultCopyWith<CreateMockUserSuccessResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMockUserSuccessResultCopyWith<$Res> {
  factory $CreateMockUserSuccessResultCopyWith(
          CreateMockUserSuccessResult value,
          $Res Function(CreateMockUserSuccessResult) then) =
      _$CreateMockUserSuccessResultCopyWithImpl<$Res>;
  $Res call({int statusCode, String result});
}

/// @nodoc
class _$CreateMockUserSuccessResultCopyWithImpl<$Res>
    implements $CreateMockUserSuccessResultCopyWith<$Res> {
  _$CreateMockUserSuccessResultCopyWithImpl(this._value, this._then);

  final CreateMockUserSuccessResult _value;
  // ignore: unused_field
  final $Res Function(CreateMockUserSuccessResult) _then;

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
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$CreateMockUserSuccessResultCtorCopyWith<$Res>
    implements $CreateMockUserSuccessResultCopyWith<$Res> {
  factory _$$CreateMockUserSuccessResultCtorCopyWith(
          _$CreateMockUserSuccessResultCtor value,
          $Res Function(_$CreateMockUserSuccessResultCtor) then) =
      __$$CreateMockUserSuccessResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String result});
}

/// @nodoc
class __$$CreateMockUserSuccessResultCtorCopyWithImpl<$Res>
    extends _$CreateMockUserSuccessResultCopyWithImpl<$Res>
    implements _$$CreateMockUserSuccessResultCtorCopyWith<$Res> {
  __$$CreateMockUserSuccessResultCtorCopyWithImpl(
      _$CreateMockUserSuccessResultCtor _value,
      $Res Function(_$CreateMockUserSuccessResultCtor) _then)
      : super(_value, (v) => _then(v as _$CreateMockUserSuccessResultCtor));

  @override
  _$CreateMockUserSuccessResultCtor get _value =>
      super._value as _$CreateMockUserSuccessResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? result = freezed,
  }) {
    return _then(_$CreateMockUserSuccessResultCtor(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CreateMockUserSuccessResultCtor
    extends _$CreateMockUserSuccessResultCtor {
  const _$_$CreateMockUserSuccessResultCtor(
      {required this.statusCode, required this.result})
      : super._();

  factory _$_$CreateMockUserSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CreateMockUserSuccessResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final String result;

  @override
  String toString() {
    return 'CreateMockUserSuccessResult(statusCode: $statusCode, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreateMockUserSuccessResultCtor &&
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
  _$$CreateMockUserSuccessResultCtorCopyWith<_$CreateMockUserSuccessResultCtor>
      get copyWith => __$$CreateMockUserSuccessResultCtorCopyWithImpl<
          _$CreateMockUserSuccessResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreateMockUserSuccessResultCtorToJson(this);
  }
}

abstract class _$CreateMockUserSuccessResultCtor
    extends CreateMockUserSuccessResult {
  const factory _$CreateMockUserSuccessResultCtor(
      {required int statusCode,
      required String result}) = _$_$CreateMockUserSuccessResultCtor;
  const _$CreateMockUserSuccessResultCtor._() : super._();

  factory _$CreateMockUserSuccessResultCtor.fromJson(
      Map<String, dynamic> json) = _$_$CreateMockUserSuccessResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CreateMockUserSuccessResultCtorCopyWith<_$CreateMockUserSuccessResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}

CreateMockUserFailureResult _$CreateMockUserFailureResultFromJson(
    Map<String, dynamic> json) {
  return _$CreateMockUserFailureResultCtor.fromJson(json);
}

/// @nodoc
class _$CreateMockUserFailureResultTearOff {
  const _$CreateMockUserFailureResultTearOff();

  _$CreateMockUserFailureResultCtor call(
      {required int statusCode, required String message}) {
    return _$CreateMockUserFailureResultCtor(
      statusCode: statusCode,
      message: message,
    );
  }

  CreateMockUserFailureResult fromJson(Map<String, Object> json) {
    return CreateMockUserFailureResult.fromJson(json);
  }
}

/// @nodoc
const $CreateMockUserFailureResult = _$CreateMockUserFailureResultTearOff();

/// @nodoc
mixin _$CreateMockUserFailureResult {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateMockUserFailureResultCopyWith<CreateMockUserFailureResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMockUserFailureResultCopyWith<$Res> {
  factory $CreateMockUserFailureResultCopyWith(
          CreateMockUserFailureResult value,
          $Res Function(CreateMockUserFailureResult) then) =
      _$CreateMockUserFailureResultCopyWithImpl<$Res>;
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$CreateMockUserFailureResultCopyWithImpl<$Res>
    implements $CreateMockUserFailureResultCopyWith<$Res> {
  _$CreateMockUserFailureResultCopyWithImpl(this._value, this._then);

  final CreateMockUserFailureResult _value;
  // ignore: unused_field
  final $Res Function(CreateMockUserFailureResult) _then;

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
abstract class _$$CreateMockUserFailureResultCtorCopyWith<$Res>
    implements $CreateMockUserFailureResultCopyWith<$Res> {
  factory _$$CreateMockUserFailureResultCtorCopyWith(
          _$CreateMockUserFailureResultCtor value,
          $Res Function(_$CreateMockUserFailureResultCtor) then) =
      __$$CreateMockUserFailureResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$CreateMockUserFailureResultCtorCopyWithImpl<$Res>
    extends _$CreateMockUserFailureResultCopyWithImpl<$Res>
    implements _$$CreateMockUserFailureResultCtorCopyWith<$Res> {
  __$$CreateMockUserFailureResultCtorCopyWithImpl(
      _$CreateMockUserFailureResultCtor _value,
      $Res Function(_$CreateMockUserFailureResultCtor) _then)
      : super(_value, (v) => _then(v as _$CreateMockUserFailureResultCtor));

  @override
  _$CreateMockUserFailureResultCtor get _value =>
      super._value as _$CreateMockUserFailureResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CreateMockUserFailureResultCtor(
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
class _$_$CreateMockUserFailureResultCtor
    extends _$CreateMockUserFailureResultCtor {
  const _$_$CreateMockUserFailureResultCtor(
      {required this.statusCode, required this.message})
      : super._();

  factory _$_$CreateMockUserFailureResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CreateMockUserFailureResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'CreateMockUserFailureResult(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreateMockUserFailureResultCtor &&
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
  _$$CreateMockUserFailureResultCtorCopyWith<_$CreateMockUserFailureResultCtor>
      get copyWith => __$$CreateMockUserFailureResultCtorCopyWithImpl<
          _$CreateMockUserFailureResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreateMockUserFailureResultCtorToJson(this);
  }
}

abstract class _$CreateMockUserFailureResultCtor
    extends CreateMockUserFailureResult {
  const factory _$CreateMockUserFailureResultCtor(
      {required int statusCode,
      required String message}) = _$_$CreateMockUserFailureResultCtor;
  const _$CreateMockUserFailureResultCtor._() : super._();

  factory _$CreateMockUserFailureResultCtor.fromJson(
      Map<String, dynamic> json) = _$_$CreateMockUserFailureResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CreateMockUserFailureResultCtorCopyWith<_$CreateMockUserFailureResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}
