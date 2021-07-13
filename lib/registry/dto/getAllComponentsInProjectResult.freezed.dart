// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'getAllComponentsInProjectResult.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetAllComponentsInProjectResult _$GetAllComponentsInProjectResultFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'success':
      return _$GetAllComponentsInProjectResultSuccess.fromJson(json);
    case 'failure':
      return _$GetAllComponentsInProjectResultFailure.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$GetAllComponentsInProjectResultTearOff {
  const _$GetAllComponentsInProjectResultTearOff();

  _$GetAllComponentsInProjectResultSuccess success(
      {required GetAllComponentsInProjectSuccessResult
          getAllComponentsInProjectSuccessResult}) {
    return _$GetAllComponentsInProjectResultSuccess(
      getAllComponentsInProjectSuccessResult:
          getAllComponentsInProjectSuccessResult,
    );
  }

  _$GetAllComponentsInProjectResultFailure failure(
      {required GetAllComponentsInProjectFailureResult
          getAllComponentsInProjectFailureResult}) {
    return _$GetAllComponentsInProjectResultFailure(
      getAllComponentsInProjectFailureResult:
          getAllComponentsInProjectFailureResult,
    );
  }

  GetAllComponentsInProjectResult fromJson(Map<String, Object> json) {
    return GetAllComponentsInProjectResult.fromJson(json);
  }
}

/// @nodoc
const $GetAllComponentsInProjectResult =
    _$GetAllComponentsInProjectResultTearOff();

/// @nodoc
mixin _$GetAllComponentsInProjectResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetAllComponentsInProjectSuccessResult
                getAllComponentsInProjectSuccessResult)
        success,
    required TResult Function(
            GetAllComponentsInProjectFailureResult
                getAllComponentsInProjectFailureResult)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetAllComponentsInProjectSuccessResult
                getAllComponentsInProjectSuccessResult)?
        success,
    TResult Function(
            GetAllComponentsInProjectFailureResult
                getAllComponentsInProjectFailureResult)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetAllComponentsInProjectResultSuccess value)
        success,
    required TResult Function(_$GetAllComponentsInProjectResultFailure value)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetAllComponentsInProjectResultSuccess value)? success,
    TResult Function(_$GetAllComponentsInProjectResultFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllComponentsInProjectResultCopyWith<$Res> {
  factory $GetAllComponentsInProjectResultCopyWith(
          GetAllComponentsInProjectResult value,
          $Res Function(GetAllComponentsInProjectResult) then) =
      _$GetAllComponentsInProjectResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAllComponentsInProjectResultCopyWithImpl<$Res>
    implements $GetAllComponentsInProjectResultCopyWith<$Res> {
  _$GetAllComponentsInProjectResultCopyWithImpl(this._value, this._then);

  final GetAllComponentsInProjectResult _value;
  // ignore: unused_field
  final $Res Function(GetAllComponentsInProjectResult) _then;
}

/// @nodoc
abstract class _$$GetAllComponentsInProjectResultSuccessCopyWith<$Res> {
  factory _$$GetAllComponentsInProjectResultSuccessCopyWith(
          _$GetAllComponentsInProjectResultSuccess value,
          $Res Function(_$GetAllComponentsInProjectResultSuccess) then) =
      __$$GetAllComponentsInProjectResultSuccessCopyWithImpl<$Res>;
  $Res call(
      {GetAllComponentsInProjectSuccessResult
          getAllComponentsInProjectSuccessResult});

  $GetAllComponentsInProjectSuccessResultCopyWith<$Res>
      get getAllComponentsInProjectSuccessResult;
}

/// @nodoc
class __$$GetAllComponentsInProjectResultSuccessCopyWithImpl<$Res>
    extends _$GetAllComponentsInProjectResultCopyWithImpl<$Res>
    implements _$$GetAllComponentsInProjectResultSuccessCopyWith<$Res> {
  __$$GetAllComponentsInProjectResultSuccessCopyWithImpl(
      _$GetAllComponentsInProjectResultSuccess _value,
      $Res Function(_$GetAllComponentsInProjectResultSuccess) _then)
      : super(_value,
            (v) => _then(v as _$GetAllComponentsInProjectResultSuccess));

  @override
  _$GetAllComponentsInProjectResultSuccess get _value =>
      super._value as _$GetAllComponentsInProjectResultSuccess;

  @override
  $Res call({
    Object? getAllComponentsInProjectSuccessResult = freezed,
  }) {
    return _then(_$GetAllComponentsInProjectResultSuccess(
      getAllComponentsInProjectSuccessResult:
          getAllComponentsInProjectSuccessResult == freezed
              ? _value.getAllComponentsInProjectSuccessResult
              : getAllComponentsInProjectSuccessResult // ignore: cast_nullable_to_non_nullable
                  as GetAllComponentsInProjectSuccessResult,
    ));
  }

  @override
  $GetAllComponentsInProjectSuccessResultCopyWith<$Res>
      get getAllComponentsInProjectSuccessResult {
    return $GetAllComponentsInProjectSuccessResultCopyWith<$Res>(
        _value.getAllComponentsInProjectSuccessResult, (value) {
      return _then(
          _value.copyWith(getAllComponentsInProjectSuccessResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetAllComponentsInProjectResultSuccess
    extends _$GetAllComponentsInProjectResultSuccess {
  const _$_$GetAllComponentsInProjectResultSuccess(
      {required this.getAllComponentsInProjectSuccessResult})
      : super._();

  factory _$_$GetAllComponentsInProjectResultSuccess.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetAllComponentsInProjectResultSuccessFromJson(json);

  @override
  final GetAllComponentsInProjectSuccessResult
      getAllComponentsInProjectSuccessResult;

  @override
  String toString() {
    return 'GetAllComponentsInProjectResult.success(getAllComponentsInProjectSuccessResult: $getAllComponentsInProjectSuccessResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetAllComponentsInProjectResultSuccess &&
            (identical(other.getAllComponentsInProjectSuccessResult,
                    getAllComponentsInProjectSuccessResult) ||
                const DeepCollectionEquality().equals(
                    other.getAllComponentsInProjectSuccessResult,
                    getAllComponentsInProjectSuccessResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality()
          .hash(getAllComponentsInProjectSuccessResult);

  @JsonKey(ignore: true)
  @override
  _$$GetAllComponentsInProjectResultSuccessCopyWith<
          _$GetAllComponentsInProjectResultSuccess>
      get copyWith => __$$GetAllComponentsInProjectResultSuccessCopyWithImpl<
          _$GetAllComponentsInProjectResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetAllComponentsInProjectSuccessResult
                getAllComponentsInProjectSuccessResult)
        success,
    required TResult Function(
            GetAllComponentsInProjectFailureResult
                getAllComponentsInProjectFailureResult)
        failure,
  }) {
    return success(getAllComponentsInProjectSuccessResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetAllComponentsInProjectSuccessResult
                getAllComponentsInProjectSuccessResult)?
        success,
    TResult Function(
            GetAllComponentsInProjectFailureResult
                getAllComponentsInProjectFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(getAllComponentsInProjectSuccessResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetAllComponentsInProjectResultSuccess value)
        success,
    required TResult Function(_$GetAllComponentsInProjectResultFailure value)
        failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetAllComponentsInProjectResultSuccess value)? success,
    TResult Function(_$GetAllComponentsInProjectResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetAllComponentsInProjectResultSuccessToJson(this)
      ..['runtimeType'] = 'success';
  }
}

abstract class _$GetAllComponentsInProjectResultSuccess
    extends GetAllComponentsInProjectResult {
  const factory _$GetAllComponentsInProjectResultSuccess(
          {required GetAllComponentsInProjectSuccessResult
              getAllComponentsInProjectSuccessResult}) =
      _$_$GetAllComponentsInProjectResultSuccess;
  const _$GetAllComponentsInProjectResultSuccess._() : super._();

  factory _$GetAllComponentsInProjectResultSuccess.fromJson(
          Map<String, dynamic> json) =
      _$_$GetAllComponentsInProjectResultSuccess.fromJson;

  GetAllComponentsInProjectSuccessResult
      get getAllComponentsInProjectSuccessResult =>
          throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetAllComponentsInProjectResultSuccessCopyWith<
          _$GetAllComponentsInProjectResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllComponentsInProjectResultFailureCopyWith<$Res> {
  factory _$$GetAllComponentsInProjectResultFailureCopyWith(
          _$GetAllComponentsInProjectResultFailure value,
          $Res Function(_$GetAllComponentsInProjectResultFailure) then) =
      __$$GetAllComponentsInProjectResultFailureCopyWithImpl<$Res>;
  $Res call(
      {GetAllComponentsInProjectFailureResult
          getAllComponentsInProjectFailureResult});

  $GetAllComponentsInProjectFailureResultCopyWith<$Res>
      get getAllComponentsInProjectFailureResult;
}

/// @nodoc
class __$$GetAllComponentsInProjectResultFailureCopyWithImpl<$Res>
    extends _$GetAllComponentsInProjectResultCopyWithImpl<$Res>
    implements _$$GetAllComponentsInProjectResultFailureCopyWith<$Res> {
  __$$GetAllComponentsInProjectResultFailureCopyWithImpl(
      _$GetAllComponentsInProjectResultFailure _value,
      $Res Function(_$GetAllComponentsInProjectResultFailure) _then)
      : super(_value,
            (v) => _then(v as _$GetAllComponentsInProjectResultFailure));

  @override
  _$GetAllComponentsInProjectResultFailure get _value =>
      super._value as _$GetAllComponentsInProjectResultFailure;

  @override
  $Res call({
    Object? getAllComponentsInProjectFailureResult = freezed,
  }) {
    return _then(_$GetAllComponentsInProjectResultFailure(
      getAllComponentsInProjectFailureResult:
          getAllComponentsInProjectFailureResult == freezed
              ? _value.getAllComponentsInProjectFailureResult
              : getAllComponentsInProjectFailureResult // ignore: cast_nullable_to_non_nullable
                  as GetAllComponentsInProjectFailureResult,
    ));
  }

  @override
  $GetAllComponentsInProjectFailureResultCopyWith<$Res>
      get getAllComponentsInProjectFailureResult {
    return $GetAllComponentsInProjectFailureResultCopyWith<$Res>(
        _value.getAllComponentsInProjectFailureResult, (value) {
      return _then(
          _value.copyWith(getAllComponentsInProjectFailureResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetAllComponentsInProjectResultFailure
    extends _$GetAllComponentsInProjectResultFailure {
  const _$_$GetAllComponentsInProjectResultFailure(
      {required this.getAllComponentsInProjectFailureResult})
      : super._();

  factory _$_$GetAllComponentsInProjectResultFailure.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetAllComponentsInProjectResultFailureFromJson(json);

  @override
  final GetAllComponentsInProjectFailureResult
      getAllComponentsInProjectFailureResult;

  @override
  String toString() {
    return 'GetAllComponentsInProjectResult.failure(getAllComponentsInProjectFailureResult: $getAllComponentsInProjectFailureResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetAllComponentsInProjectResultFailure &&
            (identical(other.getAllComponentsInProjectFailureResult,
                    getAllComponentsInProjectFailureResult) ||
                const DeepCollectionEquality().equals(
                    other.getAllComponentsInProjectFailureResult,
                    getAllComponentsInProjectFailureResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality()
          .hash(getAllComponentsInProjectFailureResult);

  @JsonKey(ignore: true)
  @override
  _$$GetAllComponentsInProjectResultFailureCopyWith<
          _$GetAllComponentsInProjectResultFailure>
      get copyWith => __$$GetAllComponentsInProjectResultFailureCopyWithImpl<
          _$GetAllComponentsInProjectResultFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetAllComponentsInProjectSuccessResult
                getAllComponentsInProjectSuccessResult)
        success,
    required TResult Function(
            GetAllComponentsInProjectFailureResult
                getAllComponentsInProjectFailureResult)
        failure,
  }) {
    return failure(getAllComponentsInProjectFailureResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetAllComponentsInProjectSuccessResult
                getAllComponentsInProjectSuccessResult)?
        success,
    TResult Function(
            GetAllComponentsInProjectFailureResult
                getAllComponentsInProjectFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(getAllComponentsInProjectFailureResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetAllComponentsInProjectResultSuccess value)
        success,
    required TResult Function(_$GetAllComponentsInProjectResultFailure value)
        failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetAllComponentsInProjectResultSuccess value)? success,
    TResult Function(_$GetAllComponentsInProjectResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetAllComponentsInProjectResultFailureToJson(this)
      ..['runtimeType'] = 'failure';
  }
}

abstract class _$GetAllComponentsInProjectResultFailure
    extends GetAllComponentsInProjectResult {
  const factory _$GetAllComponentsInProjectResultFailure(
          {required GetAllComponentsInProjectFailureResult
              getAllComponentsInProjectFailureResult}) =
      _$_$GetAllComponentsInProjectResultFailure;
  const _$GetAllComponentsInProjectResultFailure._() : super._();

  factory _$GetAllComponentsInProjectResultFailure.fromJson(
          Map<String, dynamic> json) =
      _$_$GetAllComponentsInProjectResultFailure.fromJson;

  GetAllComponentsInProjectFailureResult
      get getAllComponentsInProjectFailureResult =>
          throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetAllComponentsInProjectResultFailureCopyWith<
          _$GetAllComponentsInProjectResultFailure>
      get copyWith => throw _privateConstructorUsedError;
}

GetAllComponentsInProjectSuccessResult
    _$GetAllComponentsInProjectSuccessResultFromJson(
        Map<String, dynamic> json) {
  return _$GetAllComponentsInProjectSuccessResultCtor.fromJson(json);
}

/// @nodoc
class _$GetAllComponentsInProjectSuccessResultTearOff {
  const _$GetAllComponentsInProjectSuccessResultTearOff();

  _$GetAllComponentsInProjectSuccessResultCtor call(
      {required int statusCode, required List<ComponentReadDto> result}) {
    return _$GetAllComponentsInProjectSuccessResultCtor(
      statusCode: statusCode,
      result: result,
    );
  }

  GetAllComponentsInProjectSuccessResult fromJson(Map<String, Object> json) {
    return GetAllComponentsInProjectSuccessResult.fromJson(json);
  }
}

/// @nodoc
const $GetAllComponentsInProjectSuccessResult =
    _$GetAllComponentsInProjectSuccessResultTearOff();

/// @nodoc
mixin _$GetAllComponentsInProjectSuccessResult {
  int get statusCode => throw _privateConstructorUsedError;
  List<ComponentReadDto> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllComponentsInProjectSuccessResultCopyWith<
          GetAllComponentsInProjectSuccessResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllComponentsInProjectSuccessResultCopyWith<$Res> {
  factory $GetAllComponentsInProjectSuccessResultCopyWith(
          GetAllComponentsInProjectSuccessResult value,
          $Res Function(GetAllComponentsInProjectSuccessResult) then) =
      _$GetAllComponentsInProjectSuccessResultCopyWithImpl<$Res>;
  $Res call({int statusCode, List<ComponentReadDto> result});
}

/// @nodoc
class _$GetAllComponentsInProjectSuccessResultCopyWithImpl<$Res>
    implements $GetAllComponentsInProjectSuccessResultCopyWith<$Res> {
  _$GetAllComponentsInProjectSuccessResultCopyWithImpl(this._value, this._then);

  final GetAllComponentsInProjectSuccessResult _value;
  // ignore: unused_field
  final $Res Function(GetAllComponentsInProjectSuccessResult) _then;

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
              as List<ComponentReadDto>,
    ));
  }
}

/// @nodoc
abstract class _$$GetAllComponentsInProjectSuccessResultCtorCopyWith<$Res>
    implements $GetAllComponentsInProjectSuccessResultCopyWith<$Res> {
  factory _$$GetAllComponentsInProjectSuccessResultCtorCopyWith(
          _$GetAllComponentsInProjectSuccessResultCtor value,
          $Res Function(_$GetAllComponentsInProjectSuccessResultCtor) then) =
      __$$GetAllComponentsInProjectSuccessResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, List<ComponentReadDto> result});
}

/// @nodoc
class __$$GetAllComponentsInProjectSuccessResultCtorCopyWithImpl<$Res>
    extends _$GetAllComponentsInProjectSuccessResultCopyWithImpl<$Res>
    implements _$$GetAllComponentsInProjectSuccessResultCtorCopyWith<$Res> {
  __$$GetAllComponentsInProjectSuccessResultCtorCopyWithImpl(
      _$GetAllComponentsInProjectSuccessResultCtor _value,
      $Res Function(_$GetAllComponentsInProjectSuccessResultCtor) _then)
      : super(_value,
            (v) => _then(v as _$GetAllComponentsInProjectSuccessResultCtor));

  @override
  _$GetAllComponentsInProjectSuccessResultCtor get _value =>
      super._value as _$GetAllComponentsInProjectSuccessResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? result = freezed,
  }) {
    return _then(_$GetAllComponentsInProjectSuccessResultCtor(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ComponentReadDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetAllComponentsInProjectSuccessResultCtor
    extends _$GetAllComponentsInProjectSuccessResultCtor {
  const _$_$GetAllComponentsInProjectSuccessResultCtor(
      {required this.statusCode, required this.result})
      : super._();

  factory _$_$GetAllComponentsInProjectSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetAllComponentsInProjectSuccessResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final List<ComponentReadDto> result;

  @override
  String toString() {
    return 'GetAllComponentsInProjectSuccessResult(statusCode: $statusCode, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetAllComponentsInProjectSuccessResultCtor &&
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
  _$$GetAllComponentsInProjectSuccessResultCtorCopyWith<
          _$GetAllComponentsInProjectSuccessResultCtor>
      get copyWith =>
          __$$GetAllComponentsInProjectSuccessResultCtorCopyWithImpl<
              _$GetAllComponentsInProjectSuccessResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetAllComponentsInProjectSuccessResultCtorToJson(this);
  }
}

abstract class _$GetAllComponentsInProjectSuccessResultCtor
    extends GetAllComponentsInProjectSuccessResult {
  const factory _$GetAllComponentsInProjectSuccessResultCtor(
          {required int statusCode, required List<ComponentReadDto> result}) =
      _$_$GetAllComponentsInProjectSuccessResultCtor;
  const _$GetAllComponentsInProjectSuccessResultCtor._() : super._();

  factory _$GetAllComponentsInProjectSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$GetAllComponentsInProjectSuccessResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  List<ComponentReadDto> get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GetAllComponentsInProjectSuccessResultCtorCopyWith<
          _$GetAllComponentsInProjectSuccessResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}

GetAllComponentsInProjectFailureResult
    _$GetAllComponentsInProjectFailureResultFromJson(
        Map<String, dynamic> json) {
  return _$GetAllComponentsInProjectFailureResultCtor.fromJson(json);
}

/// @nodoc
class _$GetAllComponentsInProjectFailureResultTearOff {
  const _$GetAllComponentsInProjectFailureResultTearOff();

  _$GetAllComponentsInProjectFailureResultCtor call(
      {required int statusCode, required String message}) {
    return _$GetAllComponentsInProjectFailureResultCtor(
      statusCode: statusCode,
      message: message,
    );
  }

  GetAllComponentsInProjectFailureResult fromJson(Map<String, Object> json) {
    return GetAllComponentsInProjectFailureResult.fromJson(json);
  }
}

/// @nodoc
const $GetAllComponentsInProjectFailureResult =
    _$GetAllComponentsInProjectFailureResultTearOff();

/// @nodoc
mixin _$GetAllComponentsInProjectFailureResult {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllComponentsInProjectFailureResultCopyWith<
          GetAllComponentsInProjectFailureResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllComponentsInProjectFailureResultCopyWith<$Res> {
  factory $GetAllComponentsInProjectFailureResultCopyWith(
          GetAllComponentsInProjectFailureResult value,
          $Res Function(GetAllComponentsInProjectFailureResult) then) =
      _$GetAllComponentsInProjectFailureResultCopyWithImpl<$Res>;
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$GetAllComponentsInProjectFailureResultCopyWithImpl<$Res>
    implements $GetAllComponentsInProjectFailureResultCopyWith<$Res> {
  _$GetAllComponentsInProjectFailureResultCopyWithImpl(this._value, this._then);

  final GetAllComponentsInProjectFailureResult _value;
  // ignore: unused_field
  final $Res Function(GetAllComponentsInProjectFailureResult) _then;

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
abstract class _$$GetAllComponentsInProjectFailureResultCtorCopyWith<$Res>
    implements $GetAllComponentsInProjectFailureResultCopyWith<$Res> {
  factory _$$GetAllComponentsInProjectFailureResultCtorCopyWith(
          _$GetAllComponentsInProjectFailureResultCtor value,
          $Res Function(_$GetAllComponentsInProjectFailureResultCtor) then) =
      __$$GetAllComponentsInProjectFailureResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$GetAllComponentsInProjectFailureResultCtorCopyWithImpl<$Res>
    extends _$GetAllComponentsInProjectFailureResultCopyWithImpl<$Res>
    implements _$$GetAllComponentsInProjectFailureResultCtorCopyWith<$Res> {
  __$$GetAllComponentsInProjectFailureResultCtorCopyWithImpl(
      _$GetAllComponentsInProjectFailureResultCtor _value,
      $Res Function(_$GetAllComponentsInProjectFailureResultCtor) _then)
      : super(_value,
            (v) => _then(v as _$GetAllComponentsInProjectFailureResultCtor));

  @override
  _$GetAllComponentsInProjectFailureResultCtor get _value =>
      super._value as _$GetAllComponentsInProjectFailureResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$GetAllComponentsInProjectFailureResultCtor(
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
class _$_$GetAllComponentsInProjectFailureResultCtor
    extends _$GetAllComponentsInProjectFailureResultCtor {
  const _$_$GetAllComponentsInProjectFailureResultCtor(
      {required this.statusCode, required this.message})
      : super._();

  factory _$_$GetAllComponentsInProjectFailureResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetAllComponentsInProjectFailureResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'GetAllComponentsInProjectFailureResult(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetAllComponentsInProjectFailureResultCtor &&
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
  _$$GetAllComponentsInProjectFailureResultCtorCopyWith<
          _$GetAllComponentsInProjectFailureResultCtor>
      get copyWith =>
          __$$GetAllComponentsInProjectFailureResultCtorCopyWithImpl<
              _$GetAllComponentsInProjectFailureResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetAllComponentsInProjectFailureResultCtorToJson(this);
  }
}

abstract class _$GetAllComponentsInProjectFailureResultCtor
    extends GetAllComponentsInProjectFailureResult {
  const factory _$GetAllComponentsInProjectFailureResultCtor(
          {required int statusCode, required String message}) =
      _$_$GetAllComponentsInProjectFailureResultCtor;
  const _$GetAllComponentsInProjectFailureResultCtor._() : super._();

  factory _$GetAllComponentsInProjectFailureResultCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$GetAllComponentsInProjectFailureResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GetAllComponentsInProjectFailureResultCtorCopyWith<
          _$GetAllComponentsInProjectFailureResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}
