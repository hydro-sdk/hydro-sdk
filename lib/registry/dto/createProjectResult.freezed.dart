// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'createProjectResult.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateProjectResult _$CreateProjectResultFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'success':
      return _$CreateProjectResultSuccess.fromJson(json);
    case 'failure':
      return _$CreateProjectResultFailure.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$CreateProjectResultTearOff {
  const _$CreateProjectResultTearOff();

  _$CreateProjectResultSuccess success(
      {required CreateProjectSuccessResult createProjectSuccessResult}) {
    return _$CreateProjectResultSuccess(
      createProjectSuccessResult: createProjectSuccessResult,
    );
  }

  _$CreateProjectResultFailure failure(
      {required CreateProjectFailureResult createProjectFailureResult}) {
    return _$CreateProjectResultFailure(
      createProjectFailureResult: createProjectFailureResult,
    );
  }

  CreateProjectResult fromJson(Map<String, Object> json) {
    return CreateProjectResult.fromJson(json);
  }
}

/// @nodoc
const $CreateProjectResult = _$CreateProjectResultTearOff();

/// @nodoc
mixin _$CreateProjectResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CreateProjectSuccessResult createProjectSuccessResult)
        success,
    required TResult Function(
            CreateProjectFailureResult createProjectFailureResult)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateProjectSuccessResult createProjectSuccessResult)?
        success,
    TResult Function(CreateProjectFailureResult createProjectFailureResult)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CreateProjectResultSuccess value) success,
    required TResult Function(_$CreateProjectResultFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CreateProjectResultSuccess value)? success,
    TResult Function(_$CreateProjectResultFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProjectResultCopyWith<$Res> {
  factory $CreateProjectResultCopyWith(
          CreateProjectResult value, $Res Function(CreateProjectResult) then) =
      _$CreateProjectResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateProjectResultCopyWithImpl<$Res>
    implements $CreateProjectResultCopyWith<$Res> {
  _$CreateProjectResultCopyWithImpl(this._value, this._then);

  final CreateProjectResult _value;
  // ignore: unused_field
  final $Res Function(CreateProjectResult) _then;
}

/// @nodoc
abstract class _$$CreateProjectResultSuccessCopyWith<$Res> {
  factory _$$CreateProjectResultSuccessCopyWith(
          _$CreateProjectResultSuccess value,
          $Res Function(_$CreateProjectResultSuccess) then) =
      __$$CreateProjectResultSuccessCopyWithImpl<$Res>;
  $Res call({CreateProjectSuccessResult createProjectSuccessResult});

  $CreateProjectSuccessResultCopyWith<$Res> get createProjectSuccessResult;
}

/// @nodoc
class __$$CreateProjectResultSuccessCopyWithImpl<$Res>
    extends _$CreateProjectResultCopyWithImpl<$Res>
    implements _$$CreateProjectResultSuccessCopyWith<$Res> {
  __$$CreateProjectResultSuccessCopyWithImpl(
      _$CreateProjectResultSuccess _value,
      $Res Function(_$CreateProjectResultSuccess) _then)
      : super(_value, (v) => _then(v as _$CreateProjectResultSuccess));

  @override
  _$CreateProjectResultSuccess get _value =>
      super._value as _$CreateProjectResultSuccess;

  @override
  $Res call({
    Object? createProjectSuccessResult = freezed,
  }) {
    return _then(_$CreateProjectResultSuccess(
      createProjectSuccessResult: createProjectSuccessResult == freezed
          ? _value.createProjectSuccessResult
          : createProjectSuccessResult // ignore: cast_nullable_to_non_nullable
              as CreateProjectSuccessResult,
    ));
  }

  @override
  $CreateProjectSuccessResultCopyWith<$Res> get createProjectSuccessResult {
    return $CreateProjectSuccessResultCopyWith<$Res>(
        _value.createProjectSuccessResult, (value) {
      return _then(_value.copyWith(createProjectSuccessResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CreateProjectResultSuccess extends _$CreateProjectResultSuccess {
  const _$_$CreateProjectResultSuccess(
      {required this.createProjectSuccessResult})
      : super._();

  factory _$_$CreateProjectResultSuccess.fromJson(Map<String, dynamic> json) =>
      _$_$_$CreateProjectResultSuccessFromJson(json);

  @override
  final CreateProjectSuccessResult createProjectSuccessResult;

  @override
  String toString() {
    return 'CreateProjectResult.success(createProjectSuccessResult: $createProjectSuccessResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreateProjectResultSuccess &&
            (identical(other.createProjectSuccessResult,
                    createProjectSuccessResult) ||
                const DeepCollectionEquality().equals(
                    other.createProjectSuccessResult,
                    createProjectSuccessResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(createProjectSuccessResult);

  @JsonKey(ignore: true)
  @override
  _$$CreateProjectResultSuccessCopyWith<_$CreateProjectResultSuccess>
      get copyWith => __$$CreateProjectResultSuccessCopyWithImpl<
          _$CreateProjectResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CreateProjectSuccessResult createProjectSuccessResult)
        success,
    required TResult Function(
            CreateProjectFailureResult createProjectFailureResult)
        failure,
  }) {
    return success(createProjectSuccessResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateProjectSuccessResult createProjectSuccessResult)?
        success,
    TResult Function(CreateProjectFailureResult createProjectFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(createProjectSuccessResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CreateProjectResultSuccess value) success,
    required TResult Function(_$CreateProjectResultFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CreateProjectResultSuccess value)? success,
    TResult Function(_$CreateProjectResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreateProjectResultSuccessToJson(this)
      ..['runtimeType'] = 'success';
  }
}

abstract class _$CreateProjectResultSuccess extends CreateProjectResult {
  const factory _$CreateProjectResultSuccess(
          {required CreateProjectSuccessResult createProjectSuccessResult}) =
      _$_$CreateProjectResultSuccess;
  const _$CreateProjectResultSuccess._() : super._();

  factory _$CreateProjectResultSuccess.fromJson(Map<String, dynamic> json) =
      _$_$CreateProjectResultSuccess.fromJson;

  CreateProjectSuccessResult get createProjectSuccessResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CreateProjectResultSuccessCopyWith<_$CreateProjectResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateProjectResultFailureCopyWith<$Res> {
  factory _$$CreateProjectResultFailureCopyWith(
          _$CreateProjectResultFailure value,
          $Res Function(_$CreateProjectResultFailure) then) =
      __$$CreateProjectResultFailureCopyWithImpl<$Res>;
  $Res call({CreateProjectFailureResult createProjectFailureResult});

  $CreateProjectFailureResultCopyWith<$Res> get createProjectFailureResult;
}

/// @nodoc
class __$$CreateProjectResultFailureCopyWithImpl<$Res>
    extends _$CreateProjectResultCopyWithImpl<$Res>
    implements _$$CreateProjectResultFailureCopyWith<$Res> {
  __$$CreateProjectResultFailureCopyWithImpl(
      _$CreateProjectResultFailure _value,
      $Res Function(_$CreateProjectResultFailure) _then)
      : super(_value, (v) => _then(v as _$CreateProjectResultFailure));

  @override
  _$CreateProjectResultFailure get _value =>
      super._value as _$CreateProjectResultFailure;

  @override
  $Res call({
    Object? createProjectFailureResult = freezed,
  }) {
    return _then(_$CreateProjectResultFailure(
      createProjectFailureResult: createProjectFailureResult == freezed
          ? _value.createProjectFailureResult
          : createProjectFailureResult // ignore: cast_nullable_to_non_nullable
              as CreateProjectFailureResult,
    ));
  }

  @override
  $CreateProjectFailureResultCopyWith<$Res> get createProjectFailureResult {
    return $CreateProjectFailureResultCopyWith<$Res>(
        _value.createProjectFailureResult, (value) {
      return _then(_value.copyWith(createProjectFailureResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CreateProjectResultFailure extends _$CreateProjectResultFailure {
  const _$_$CreateProjectResultFailure(
      {required this.createProjectFailureResult})
      : super._();

  factory _$_$CreateProjectResultFailure.fromJson(Map<String, dynamic> json) =>
      _$_$_$CreateProjectResultFailureFromJson(json);

  @override
  final CreateProjectFailureResult createProjectFailureResult;

  @override
  String toString() {
    return 'CreateProjectResult.failure(createProjectFailureResult: $createProjectFailureResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreateProjectResultFailure &&
            (identical(other.createProjectFailureResult,
                    createProjectFailureResult) ||
                const DeepCollectionEquality().equals(
                    other.createProjectFailureResult,
                    createProjectFailureResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(createProjectFailureResult);

  @JsonKey(ignore: true)
  @override
  _$$CreateProjectResultFailureCopyWith<_$CreateProjectResultFailure>
      get copyWith => __$$CreateProjectResultFailureCopyWithImpl<
          _$CreateProjectResultFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CreateProjectSuccessResult createProjectSuccessResult)
        success,
    required TResult Function(
            CreateProjectFailureResult createProjectFailureResult)
        failure,
  }) {
    return failure(createProjectFailureResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateProjectSuccessResult createProjectSuccessResult)?
        success,
    TResult Function(CreateProjectFailureResult createProjectFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(createProjectFailureResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CreateProjectResultSuccess value) success,
    required TResult Function(_$CreateProjectResultFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CreateProjectResultSuccess value)? success,
    TResult Function(_$CreateProjectResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreateProjectResultFailureToJson(this)
      ..['runtimeType'] = 'failure';
  }
}

abstract class _$CreateProjectResultFailure extends CreateProjectResult {
  const factory _$CreateProjectResultFailure(
          {required CreateProjectFailureResult createProjectFailureResult}) =
      _$_$CreateProjectResultFailure;
  const _$CreateProjectResultFailure._() : super._();

  factory _$CreateProjectResultFailure.fromJson(Map<String, dynamic> json) =
      _$_$CreateProjectResultFailure.fromJson;

  CreateProjectFailureResult get createProjectFailureResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CreateProjectResultFailureCopyWith<_$CreateProjectResultFailure>
      get copyWith => throw _privateConstructorUsedError;
}

CreateProjectSuccessResult _$CreateProjectSuccessResultFromJson(
    Map<String, dynamic> json) {
  return _$CreateProjectSuccessResultCtor.fromJson(json);
}

/// @nodoc
class _$CreateProjectSuccessResultTearOff {
  const _$CreateProjectSuccessResultTearOff();

  _$CreateProjectSuccessResultCtor call(
      {required int statusCode, required ProjectEntity result}) {
    return _$CreateProjectSuccessResultCtor(
      statusCode: statusCode,
      result: result,
    );
  }

  CreateProjectSuccessResult fromJson(Map<String, Object> json) {
    return CreateProjectSuccessResult.fromJson(json);
  }
}

/// @nodoc
const $CreateProjectSuccessResult = _$CreateProjectSuccessResultTearOff();

/// @nodoc
mixin _$CreateProjectSuccessResult {
  int get statusCode => throw _privateConstructorUsedError;
  ProjectEntity get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProjectSuccessResultCopyWith<CreateProjectSuccessResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProjectSuccessResultCopyWith<$Res> {
  factory $CreateProjectSuccessResultCopyWith(CreateProjectSuccessResult value,
          $Res Function(CreateProjectSuccessResult) then) =
      _$CreateProjectSuccessResultCopyWithImpl<$Res>;
  $Res call({int statusCode, ProjectEntity result});

  $ProjectEntityCopyWith<$Res> get result;
}

/// @nodoc
class _$CreateProjectSuccessResultCopyWithImpl<$Res>
    implements $CreateProjectSuccessResultCopyWith<$Res> {
  _$CreateProjectSuccessResultCopyWithImpl(this._value, this._then);

  final CreateProjectSuccessResult _value;
  // ignore: unused_field
  final $Res Function(CreateProjectSuccessResult) _then;

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
abstract class _$$CreateProjectSuccessResultCtorCopyWith<$Res>
    implements $CreateProjectSuccessResultCopyWith<$Res> {
  factory _$$CreateProjectSuccessResultCtorCopyWith(
          _$CreateProjectSuccessResultCtor value,
          $Res Function(_$CreateProjectSuccessResultCtor) then) =
      __$$CreateProjectSuccessResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, ProjectEntity result});

  @override
  $ProjectEntityCopyWith<$Res> get result;
}

/// @nodoc
class __$$CreateProjectSuccessResultCtorCopyWithImpl<$Res>
    extends _$CreateProjectSuccessResultCopyWithImpl<$Res>
    implements _$$CreateProjectSuccessResultCtorCopyWith<$Res> {
  __$$CreateProjectSuccessResultCtorCopyWithImpl(
      _$CreateProjectSuccessResultCtor _value,
      $Res Function(_$CreateProjectSuccessResultCtor) _then)
      : super(_value, (v) => _then(v as _$CreateProjectSuccessResultCtor));

  @override
  _$CreateProjectSuccessResultCtor get _value =>
      super._value as _$CreateProjectSuccessResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? result = freezed,
  }) {
    return _then(_$CreateProjectSuccessResultCtor(
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
class _$_$CreateProjectSuccessResultCtor
    extends _$CreateProjectSuccessResultCtor {
  const _$_$CreateProjectSuccessResultCtor(
      {required this.statusCode, required this.result})
      : super._();

  factory _$_$CreateProjectSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CreateProjectSuccessResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final ProjectEntity result;

  @override
  String toString() {
    return 'CreateProjectSuccessResult(statusCode: $statusCode, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreateProjectSuccessResultCtor &&
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
  _$$CreateProjectSuccessResultCtorCopyWith<_$CreateProjectSuccessResultCtor>
      get copyWith => __$$CreateProjectSuccessResultCtorCopyWithImpl<
          _$CreateProjectSuccessResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreateProjectSuccessResultCtorToJson(this);
  }
}

abstract class _$CreateProjectSuccessResultCtor
    extends CreateProjectSuccessResult {
  const factory _$CreateProjectSuccessResultCtor(
      {required int statusCode,
      required ProjectEntity result}) = _$_$CreateProjectSuccessResultCtor;
  const _$CreateProjectSuccessResultCtor._() : super._();

  factory _$CreateProjectSuccessResultCtor.fromJson(Map<String, dynamic> json) =
      _$_$CreateProjectSuccessResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  ProjectEntity get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CreateProjectSuccessResultCtorCopyWith<_$CreateProjectSuccessResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}

CreateProjectFailureResult _$CreateProjectFailureResultFromJson(
    Map<String, dynamic> json) {
  return _$CreateProjectFailureResultCtor.fromJson(json);
}

/// @nodoc
class _$CreateProjectFailureResultTearOff {
  const _$CreateProjectFailureResultTearOff();

  _$CreateProjectFailureResultCtor call(
      {required int statusCode, required String message}) {
    return _$CreateProjectFailureResultCtor(
      statusCode: statusCode,
      message: message,
    );
  }

  CreateProjectFailureResult fromJson(Map<String, Object> json) {
    return CreateProjectFailureResult.fromJson(json);
  }
}

/// @nodoc
const $CreateProjectFailureResult = _$CreateProjectFailureResultTearOff();

/// @nodoc
mixin _$CreateProjectFailureResult {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProjectFailureResultCopyWith<CreateProjectFailureResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProjectFailureResultCopyWith<$Res> {
  factory $CreateProjectFailureResultCopyWith(CreateProjectFailureResult value,
          $Res Function(CreateProjectFailureResult) then) =
      _$CreateProjectFailureResultCopyWithImpl<$Res>;
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$CreateProjectFailureResultCopyWithImpl<$Res>
    implements $CreateProjectFailureResultCopyWith<$Res> {
  _$CreateProjectFailureResultCopyWithImpl(this._value, this._then);

  final CreateProjectFailureResult _value;
  // ignore: unused_field
  final $Res Function(CreateProjectFailureResult) _then;

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
abstract class _$$CreateProjectFailureResultCtorCopyWith<$Res>
    implements $CreateProjectFailureResultCopyWith<$Res> {
  factory _$$CreateProjectFailureResultCtorCopyWith(
          _$CreateProjectFailureResultCtor value,
          $Res Function(_$CreateProjectFailureResultCtor) then) =
      __$$CreateProjectFailureResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$CreateProjectFailureResultCtorCopyWithImpl<$Res>
    extends _$CreateProjectFailureResultCopyWithImpl<$Res>
    implements _$$CreateProjectFailureResultCtorCopyWith<$Res> {
  __$$CreateProjectFailureResultCtorCopyWithImpl(
      _$CreateProjectFailureResultCtor _value,
      $Res Function(_$CreateProjectFailureResultCtor) _then)
      : super(_value, (v) => _then(v as _$CreateProjectFailureResultCtor));

  @override
  _$CreateProjectFailureResultCtor get _value =>
      super._value as _$CreateProjectFailureResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CreateProjectFailureResultCtor(
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
class _$_$CreateProjectFailureResultCtor
    extends _$CreateProjectFailureResultCtor {
  const _$_$CreateProjectFailureResultCtor(
      {required this.statusCode, required this.message})
      : super._();

  factory _$_$CreateProjectFailureResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CreateProjectFailureResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'CreateProjectFailureResult(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreateProjectFailureResultCtor &&
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
  _$$CreateProjectFailureResultCtorCopyWith<_$CreateProjectFailureResultCtor>
      get copyWith => __$$CreateProjectFailureResultCtorCopyWithImpl<
          _$CreateProjectFailureResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreateProjectFailureResultCtorToJson(this);
  }
}

abstract class _$CreateProjectFailureResultCtor
    extends CreateProjectFailureResult {
  const factory _$CreateProjectFailureResultCtor(
      {required int statusCode,
      required String message}) = _$_$CreateProjectFailureResultCtor;
  const _$CreateProjectFailureResultCtor._() : super._();

  factory _$CreateProjectFailureResultCtor.fromJson(Map<String, dynamic> json) =
      _$_$CreateProjectFailureResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CreateProjectFailureResultCtorCopyWith<_$CreateProjectFailureResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}
