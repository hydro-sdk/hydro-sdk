// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'createComponentResult.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateComponentResult _$CreateComponentResultFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'success':
      return _$CreateComponentResultSuccess.fromJson(json);
    case 'failure':
      return _$CreateComponentResultFailure.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$CreateComponentResultTearOff {
  const _$CreateComponentResultTearOff();

  _$CreateComponentResultSuccess success(
      {required CreateComponentSuccessResult createComponentSuccessResult}) {
    return _$CreateComponentResultSuccess(
      createComponentSuccessResult: createComponentSuccessResult,
    );
  }

  _$CreateComponentResultFailure failure(
      {required CreateComponentFailureResult createComponentFailureResult}) {
    return _$CreateComponentResultFailure(
      createComponentFailureResult: createComponentFailureResult,
    );
  }

  CreateComponentResult fromJson(Map<String, Object> json) {
    return CreateComponentResult.fromJson(json);
  }
}

/// @nodoc
const $CreateComponentResult = _$CreateComponentResultTearOff();

/// @nodoc
mixin _$CreateComponentResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CreateComponentSuccessResult createComponentSuccessResult)
        success,
    required TResult Function(
            CreateComponentFailureResult createComponentFailureResult)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateComponentSuccessResult createComponentSuccessResult)?
        success,
    TResult Function(CreateComponentFailureResult createComponentFailureResult)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CreateComponentResultSuccess value) success,
    required TResult Function(_$CreateComponentResultFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CreateComponentResultSuccess value)? success,
    TResult Function(_$CreateComponentResultFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateComponentResultCopyWith<$Res> {
  factory $CreateComponentResultCopyWith(CreateComponentResult value,
          $Res Function(CreateComponentResult) then) =
      _$CreateComponentResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateComponentResultCopyWithImpl<$Res>
    implements $CreateComponentResultCopyWith<$Res> {
  _$CreateComponentResultCopyWithImpl(this._value, this._then);

  final CreateComponentResult _value;
  // ignore: unused_field
  final $Res Function(CreateComponentResult) _then;
}

/// @nodoc
abstract class _$$CreateComponentResultSuccessCopyWith<$Res> {
  factory _$$CreateComponentResultSuccessCopyWith(
          _$CreateComponentResultSuccess value,
          $Res Function(_$CreateComponentResultSuccess) then) =
      __$$CreateComponentResultSuccessCopyWithImpl<$Res>;
  $Res call({CreateComponentSuccessResult createComponentSuccessResult});

  $CreateComponentSuccessResultCopyWith<$Res> get createComponentSuccessResult;
}

/// @nodoc
class __$$CreateComponentResultSuccessCopyWithImpl<$Res>
    extends _$CreateComponentResultCopyWithImpl<$Res>
    implements _$$CreateComponentResultSuccessCopyWith<$Res> {
  __$$CreateComponentResultSuccessCopyWithImpl(
      _$CreateComponentResultSuccess _value,
      $Res Function(_$CreateComponentResultSuccess) _then)
      : super(_value, (v) => _then(v as _$CreateComponentResultSuccess));

  @override
  _$CreateComponentResultSuccess get _value =>
      super._value as _$CreateComponentResultSuccess;

  @override
  $Res call({
    Object? createComponentSuccessResult = freezed,
  }) {
    return _then(_$CreateComponentResultSuccess(
      createComponentSuccessResult: createComponentSuccessResult == freezed
          ? _value.createComponentSuccessResult
          : createComponentSuccessResult // ignore: cast_nullable_to_non_nullable
              as CreateComponentSuccessResult,
    ));
  }

  @override
  $CreateComponentSuccessResultCopyWith<$Res> get createComponentSuccessResult {
    return $CreateComponentSuccessResultCopyWith<$Res>(
        _value.createComponentSuccessResult, (value) {
      return _then(_value.copyWith(createComponentSuccessResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CreateComponentResultSuccess extends _$CreateComponentResultSuccess {
  const _$_$CreateComponentResultSuccess(
      {required this.createComponentSuccessResult})
      : super._();

  factory _$_$CreateComponentResultSuccess.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CreateComponentResultSuccessFromJson(json);

  @override
  final CreateComponentSuccessResult createComponentSuccessResult;

  @override
  String toString() {
    return 'CreateComponentResult.success(createComponentSuccessResult: $createComponentSuccessResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreateComponentResultSuccess &&
            (identical(other.createComponentSuccessResult,
                    createComponentSuccessResult) ||
                const DeepCollectionEquality().equals(
                    other.createComponentSuccessResult,
                    createComponentSuccessResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(createComponentSuccessResult);

  @JsonKey(ignore: true)
  @override
  _$$CreateComponentResultSuccessCopyWith<_$CreateComponentResultSuccess>
      get copyWith => __$$CreateComponentResultSuccessCopyWithImpl<
          _$CreateComponentResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CreateComponentSuccessResult createComponentSuccessResult)
        success,
    required TResult Function(
            CreateComponentFailureResult createComponentFailureResult)
        failure,
  }) {
    return success(createComponentSuccessResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateComponentSuccessResult createComponentSuccessResult)?
        success,
    TResult Function(CreateComponentFailureResult createComponentFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(createComponentSuccessResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CreateComponentResultSuccess value) success,
    required TResult Function(_$CreateComponentResultFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CreateComponentResultSuccess value)? success,
    TResult Function(_$CreateComponentResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreateComponentResultSuccessToJson(this)
      ..['runtimeType'] = 'success';
  }
}

abstract class _$CreateComponentResultSuccess extends CreateComponentResult {
  const factory _$CreateComponentResultSuccess(
      {required CreateComponentSuccessResult
          createComponentSuccessResult}) = _$_$CreateComponentResultSuccess;
  const _$CreateComponentResultSuccess._() : super._();

  factory _$CreateComponentResultSuccess.fromJson(Map<String, dynamic> json) =
      _$_$CreateComponentResultSuccess.fromJson;

  CreateComponentSuccessResult get createComponentSuccessResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CreateComponentResultSuccessCopyWith<_$CreateComponentResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateComponentResultFailureCopyWith<$Res> {
  factory _$$CreateComponentResultFailureCopyWith(
          _$CreateComponentResultFailure value,
          $Res Function(_$CreateComponentResultFailure) then) =
      __$$CreateComponentResultFailureCopyWithImpl<$Res>;
  $Res call({CreateComponentFailureResult createComponentFailureResult});

  $CreateComponentFailureResultCopyWith<$Res> get createComponentFailureResult;
}

/// @nodoc
class __$$CreateComponentResultFailureCopyWithImpl<$Res>
    extends _$CreateComponentResultCopyWithImpl<$Res>
    implements _$$CreateComponentResultFailureCopyWith<$Res> {
  __$$CreateComponentResultFailureCopyWithImpl(
      _$CreateComponentResultFailure _value,
      $Res Function(_$CreateComponentResultFailure) _then)
      : super(_value, (v) => _then(v as _$CreateComponentResultFailure));

  @override
  _$CreateComponentResultFailure get _value =>
      super._value as _$CreateComponentResultFailure;

  @override
  $Res call({
    Object? createComponentFailureResult = freezed,
  }) {
    return _then(_$CreateComponentResultFailure(
      createComponentFailureResult: createComponentFailureResult == freezed
          ? _value.createComponentFailureResult
          : createComponentFailureResult // ignore: cast_nullable_to_non_nullable
              as CreateComponentFailureResult,
    ));
  }

  @override
  $CreateComponentFailureResultCopyWith<$Res> get createComponentFailureResult {
    return $CreateComponentFailureResultCopyWith<$Res>(
        _value.createComponentFailureResult, (value) {
      return _then(_value.copyWith(createComponentFailureResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CreateComponentResultFailure extends _$CreateComponentResultFailure {
  const _$_$CreateComponentResultFailure(
      {required this.createComponentFailureResult})
      : super._();

  factory _$_$CreateComponentResultFailure.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CreateComponentResultFailureFromJson(json);

  @override
  final CreateComponentFailureResult createComponentFailureResult;

  @override
  String toString() {
    return 'CreateComponentResult.failure(createComponentFailureResult: $createComponentFailureResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreateComponentResultFailure &&
            (identical(other.createComponentFailureResult,
                    createComponentFailureResult) ||
                const DeepCollectionEquality().equals(
                    other.createComponentFailureResult,
                    createComponentFailureResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(createComponentFailureResult);

  @JsonKey(ignore: true)
  @override
  _$$CreateComponentResultFailureCopyWith<_$CreateComponentResultFailure>
      get copyWith => __$$CreateComponentResultFailureCopyWithImpl<
          _$CreateComponentResultFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CreateComponentSuccessResult createComponentSuccessResult)
        success,
    required TResult Function(
            CreateComponentFailureResult createComponentFailureResult)
        failure,
  }) {
    return failure(createComponentFailureResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateComponentSuccessResult createComponentSuccessResult)?
        success,
    TResult Function(CreateComponentFailureResult createComponentFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(createComponentFailureResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CreateComponentResultSuccess value) success,
    required TResult Function(_$CreateComponentResultFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CreateComponentResultSuccess value)? success,
    TResult Function(_$CreateComponentResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreateComponentResultFailureToJson(this)
      ..['runtimeType'] = 'failure';
  }
}

abstract class _$CreateComponentResultFailure extends CreateComponentResult {
  const factory _$CreateComponentResultFailure(
      {required CreateComponentFailureResult
          createComponentFailureResult}) = _$_$CreateComponentResultFailure;
  const _$CreateComponentResultFailure._() : super._();

  factory _$CreateComponentResultFailure.fromJson(Map<String, dynamic> json) =
      _$_$CreateComponentResultFailure.fromJson;

  CreateComponentFailureResult get createComponentFailureResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CreateComponentResultFailureCopyWith<_$CreateComponentResultFailure>
      get copyWith => throw _privateConstructorUsedError;
}

CreateComponentSuccessResult _$CreateComponentSuccessResultFromJson(
    Map<String, dynamic> json) {
  return _$CreateComponentSuccessResultCtor.fromJson(json);
}

/// @nodoc
class _$CreateComponentSuccessResultTearOff {
  const _$CreateComponentSuccessResultTearOff();

  _$CreateComponentSuccessResultCtor call(
      {required int statusCode, required CreateComponentResponseDto result}) {
    return _$CreateComponentSuccessResultCtor(
      statusCode: statusCode,
      result: result,
    );
  }

  CreateComponentSuccessResult fromJson(Map<String, Object> json) {
    return CreateComponentSuccessResult.fromJson(json);
  }
}

/// @nodoc
const $CreateComponentSuccessResult = _$CreateComponentSuccessResultTearOff();

/// @nodoc
mixin _$CreateComponentSuccessResult {
  int get statusCode => throw _privateConstructorUsedError;
  CreateComponentResponseDto get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateComponentSuccessResultCopyWith<CreateComponentSuccessResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateComponentSuccessResultCopyWith<$Res> {
  factory $CreateComponentSuccessResultCopyWith(
          CreateComponentSuccessResult value,
          $Res Function(CreateComponentSuccessResult) then) =
      _$CreateComponentSuccessResultCopyWithImpl<$Res>;
  $Res call({int statusCode, CreateComponentResponseDto result});

  $CreateComponentResponseDtoCopyWith<$Res> get result;
}

/// @nodoc
class _$CreateComponentSuccessResultCopyWithImpl<$Res>
    implements $CreateComponentSuccessResultCopyWith<$Res> {
  _$CreateComponentSuccessResultCopyWithImpl(this._value, this._then);

  final CreateComponentSuccessResult _value;
  // ignore: unused_field
  final $Res Function(CreateComponentSuccessResult) _then;

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
              as CreateComponentResponseDto,
    ));
  }

  @override
  $CreateComponentResponseDtoCopyWith<$Res> get result {
    return $CreateComponentResponseDtoCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$CreateComponentSuccessResultCtorCopyWith<$Res>
    implements $CreateComponentSuccessResultCopyWith<$Res> {
  factory _$$CreateComponentSuccessResultCtorCopyWith(
          _$CreateComponentSuccessResultCtor value,
          $Res Function(_$CreateComponentSuccessResultCtor) then) =
      __$$CreateComponentSuccessResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, CreateComponentResponseDto result});

  @override
  $CreateComponentResponseDtoCopyWith<$Res> get result;
}

/// @nodoc
class __$$CreateComponentSuccessResultCtorCopyWithImpl<$Res>
    extends _$CreateComponentSuccessResultCopyWithImpl<$Res>
    implements _$$CreateComponentSuccessResultCtorCopyWith<$Res> {
  __$$CreateComponentSuccessResultCtorCopyWithImpl(
      _$CreateComponentSuccessResultCtor _value,
      $Res Function(_$CreateComponentSuccessResultCtor) _then)
      : super(_value, (v) => _then(v as _$CreateComponentSuccessResultCtor));

  @override
  _$CreateComponentSuccessResultCtor get _value =>
      super._value as _$CreateComponentSuccessResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? result = freezed,
  }) {
    return _then(_$CreateComponentSuccessResultCtor(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as CreateComponentResponseDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CreateComponentSuccessResultCtor
    extends _$CreateComponentSuccessResultCtor {
  const _$_$CreateComponentSuccessResultCtor(
      {required this.statusCode, required this.result})
      : super._();

  factory _$_$CreateComponentSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CreateComponentSuccessResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final CreateComponentResponseDto result;

  @override
  String toString() {
    return 'CreateComponentSuccessResult(statusCode: $statusCode, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreateComponentSuccessResultCtor &&
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
  _$$CreateComponentSuccessResultCtorCopyWith<
          _$CreateComponentSuccessResultCtor>
      get copyWith => __$$CreateComponentSuccessResultCtorCopyWithImpl<
          _$CreateComponentSuccessResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreateComponentSuccessResultCtorToJson(this);
  }
}

abstract class _$CreateComponentSuccessResultCtor
    extends CreateComponentSuccessResult {
  const factory _$CreateComponentSuccessResultCtor(
          {required int statusCode,
          required CreateComponentResponseDto result}) =
      _$_$CreateComponentSuccessResultCtor;
  const _$CreateComponentSuccessResultCtor._() : super._();

  factory _$CreateComponentSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$CreateComponentSuccessResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  CreateComponentResponseDto get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CreateComponentSuccessResultCtorCopyWith<
          _$CreateComponentSuccessResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}

CreateComponentFailureResult _$CreateComponentFailureResultFromJson(
    Map<String, dynamic> json) {
  return _$CreateComponentFailureResultCtor.fromJson(json);
}

/// @nodoc
class _$CreateComponentFailureResultTearOff {
  const _$CreateComponentFailureResultTearOff();

  _$CreateComponentFailureResultCtor call(
      {required int statusCode, required String message}) {
    return _$CreateComponentFailureResultCtor(
      statusCode: statusCode,
      message: message,
    );
  }

  CreateComponentFailureResult fromJson(Map<String, Object> json) {
    return CreateComponentFailureResult.fromJson(json);
  }
}

/// @nodoc
const $CreateComponentFailureResult = _$CreateComponentFailureResultTearOff();

/// @nodoc
mixin _$CreateComponentFailureResult {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateComponentFailureResultCopyWith<CreateComponentFailureResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateComponentFailureResultCopyWith<$Res> {
  factory $CreateComponentFailureResultCopyWith(
          CreateComponentFailureResult value,
          $Res Function(CreateComponentFailureResult) then) =
      _$CreateComponentFailureResultCopyWithImpl<$Res>;
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$CreateComponentFailureResultCopyWithImpl<$Res>
    implements $CreateComponentFailureResultCopyWith<$Res> {
  _$CreateComponentFailureResultCopyWithImpl(this._value, this._then);

  final CreateComponentFailureResult _value;
  // ignore: unused_field
  final $Res Function(CreateComponentFailureResult) _then;

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
abstract class _$$CreateComponentFailureResultCtorCopyWith<$Res>
    implements $CreateComponentFailureResultCopyWith<$Res> {
  factory _$$CreateComponentFailureResultCtorCopyWith(
          _$CreateComponentFailureResultCtor value,
          $Res Function(_$CreateComponentFailureResultCtor) then) =
      __$$CreateComponentFailureResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$CreateComponentFailureResultCtorCopyWithImpl<$Res>
    extends _$CreateComponentFailureResultCopyWithImpl<$Res>
    implements _$$CreateComponentFailureResultCtorCopyWith<$Res> {
  __$$CreateComponentFailureResultCtorCopyWithImpl(
      _$CreateComponentFailureResultCtor _value,
      $Res Function(_$CreateComponentFailureResultCtor) _then)
      : super(_value, (v) => _then(v as _$CreateComponentFailureResultCtor));

  @override
  _$CreateComponentFailureResultCtor get _value =>
      super._value as _$CreateComponentFailureResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CreateComponentFailureResultCtor(
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
class _$_$CreateComponentFailureResultCtor
    extends _$CreateComponentFailureResultCtor {
  const _$_$CreateComponentFailureResultCtor(
      {required this.statusCode, required this.message})
      : super._();

  factory _$_$CreateComponentFailureResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CreateComponentFailureResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'CreateComponentFailureResult(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreateComponentFailureResultCtor &&
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
  _$$CreateComponentFailureResultCtorCopyWith<
          _$CreateComponentFailureResultCtor>
      get copyWith => __$$CreateComponentFailureResultCtorCopyWithImpl<
          _$CreateComponentFailureResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreateComponentFailureResultCtorToJson(this);
  }
}

abstract class _$CreateComponentFailureResultCtor
    extends CreateComponentFailureResult {
  const factory _$CreateComponentFailureResultCtor(
      {required int statusCode,
      required String message}) = _$_$CreateComponentFailureResultCtor;
  const _$CreateComponentFailureResultCtor._() : super._();

  factory _$CreateComponentFailureResultCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$CreateComponentFailureResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CreateComponentFailureResultCtorCopyWith<
          _$CreateComponentFailureResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}
