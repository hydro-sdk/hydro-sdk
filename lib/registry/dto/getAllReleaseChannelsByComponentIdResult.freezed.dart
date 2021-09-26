// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'getAllReleaseChannelsByComponentIdResult.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetAllReleaseChannelsByComponentIdResult
    _$GetAllReleaseChannelsByComponentIdResultFromJson(
        Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'success':
      return _$GetAllReleaseChannelsByComponentIdResultSuccess.fromJson(json);
    case 'failure':
      return _$GetAllReleaseChannelsByComponentIdResultFailure.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$GetAllReleaseChannelsByComponentIdResultTearOff {
  const _$GetAllReleaseChannelsByComponentIdResultTearOff();

  _$GetAllReleaseChannelsByComponentIdResultSuccess success(
      {required GetAllReleaseChannelsByComponentIdSuccessResult
          getAllReleaseChannelsByComponentIdSuccessResult}) {
    return _$GetAllReleaseChannelsByComponentIdResultSuccess(
      getAllReleaseChannelsByComponentIdSuccessResult:
          getAllReleaseChannelsByComponentIdSuccessResult,
    );
  }

  _$GetAllReleaseChannelsByComponentIdResultFailure failure(
      {required GetAllReleaseChannelsByComponentIdFailureResult
          getAllReleaseChannelsByComponentIdFailureResult}) {
    return _$GetAllReleaseChannelsByComponentIdResultFailure(
      getAllReleaseChannelsByComponentIdFailureResult:
          getAllReleaseChannelsByComponentIdFailureResult,
    );
  }

  GetAllReleaseChannelsByComponentIdResult fromJson(Map<String, Object> json) {
    return GetAllReleaseChannelsByComponentIdResult.fromJson(json);
  }
}

/// @nodoc
const $GetAllReleaseChannelsByComponentIdResult =
    _$GetAllReleaseChannelsByComponentIdResultTearOff();

/// @nodoc
mixin _$GetAllReleaseChannelsByComponentIdResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetAllReleaseChannelsByComponentIdSuccessResult
                getAllReleaseChannelsByComponentIdSuccessResult)
        success,
    required TResult Function(
            GetAllReleaseChannelsByComponentIdFailureResult
                getAllReleaseChannelsByComponentIdFailureResult)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetAllReleaseChannelsByComponentIdSuccessResult
                getAllReleaseChannelsByComponentIdSuccessResult)?
        success,
    TResult Function(
            GetAllReleaseChannelsByComponentIdFailureResult
                getAllReleaseChannelsByComponentIdFailureResult)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _$GetAllReleaseChannelsByComponentIdResultSuccess value)
        success,
    required TResult Function(
            _$GetAllReleaseChannelsByComponentIdResultFailure value)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetAllReleaseChannelsByComponentIdResultSuccess value)?
        success,
    TResult Function(_$GetAllReleaseChannelsByComponentIdResultFailure value)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllReleaseChannelsByComponentIdResultCopyWith<$Res> {
  factory $GetAllReleaseChannelsByComponentIdResultCopyWith(
          GetAllReleaseChannelsByComponentIdResult value,
          $Res Function(GetAllReleaseChannelsByComponentIdResult) then) =
      _$GetAllReleaseChannelsByComponentIdResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAllReleaseChannelsByComponentIdResultCopyWithImpl<$Res>
    implements $GetAllReleaseChannelsByComponentIdResultCopyWith<$Res> {
  _$GetAllReleaseChannelsByComponentIdResultCopyWithImpl(
      this._value, this._then);

  final GetAllReleaseChannelsByComponentIdResult _value;
  // ignore: unused_field
  final $Res Function(GetAllReleaseChannelsByComponentIdResult) _then;
}

/// @nodoc
abstract class _$$GetAllReleaseChannelsByComponentIdResultSuccessCopyWith<
    $Res> {
  factory _$$GetAllReleaseChannelsByComponentIdResultSuccessCopyWith(
          _$GetAllReleaseChannelsByComponentIdResultSuccess value,
          $Res Function(_$GetAllReleaseChannelsByComponentIdResultSuccess)
              then) =
      __$$GetAllReleaseChannelsByComponentIdResultSuccessCopyWithImpl<$Res>;
  $Res call(
      {GetAllReleaseChannelsByComponentIdSuccessResult
          getAllReleaseChannelsByComponentIdSuccessResult});

  $GetAllReleaseChannelsByComponentIdSuccessResultCopyWith<$Res>
      get getAllReleaseChannelsByComponentIdSuccessResult;
}

/// @nodoc
class __$$GetAllReleaseChannelsByComponentIdResultSuccessCopyWithImpl<$Res>
    extends _$GetAllReleaseChannelsByComponentIdResultCopyWithImpl<$Res>
    implements
        _$$GetAllReleaseChannelsByComponentIdResultSuccessCopyWith<$Res> {
  __$$GetAllReleaseChannelsByComponentIdResultSuccessCopyWithImpl(
      _$GetAllReleaseChannelsByComponentIdResultSuccess _value,
      $Res Function(_$GetAllReleaseChannelsByComponentIdResultSuccess) _then)
      : super(
            _value,
            (v) =>
                _then(v as _$GetAllReleaseChannelsByComponentIdResultSuccess));

  @override
  _$GetAllReleaseChannelsByComponentIdResultSuccess get _value =>
      super._value as _$GetAllReleaseChannelsByComponentIdResultSuccess;

  @override
  $Res call({
    Object? getAllReleaseChannelsByComponentIdSuccessResult = freezed,
  }) {
    return _then(_$GetAllReleaseChannelsByComponentIdResultSuccess(
      getAllReleaseChannelsByComponentIdSuccessResult:
          getAllReleaseChannelsByComponentIdSuccessResult == freezed
              ? _value.getAllReleaseChannelsByComponentIdSuccessResult
              : getAllReleaseChannelsByComponentIdSuccessResult // ignore: cast_nullable_to_non_nullable
                  as GetAllReleaseChannelsByComponentIdSuccessResult,
    ));
  }

  @override
  $GetAllReleaseChannelsByComponentIdSuccessResultCopyWith<$Res>
      get getAllReleaseChannelsByComponentIdSuccessResult {
    return $GetAllReleaseChannelsByComponentIdSuccessResultCopyWith<$Res>(
        _value.getAllReleaseChannelsByComponentIdSuccessResult, (value) {
      return _then(_value.copyWith(
          getAllReleaseChannelsByComponentIdSuccessResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetAllReleaseChannelsByComponentIdResultSuccess
    extends _$GetAllReleaseChannelsByComponentIdResultSuccess {
  const _$_$GetAllReleaseChannelsByComponentIdResultSuccess(
      {required this.getAllReleaseChannelsByComponentIdSuccessResult})
      : super._();

  factory _$_$GetAllReleaseChannelsByComponentIdResultSuccess.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetAllReleaseChannelsByComponentIdResultSuccessFromJson(json);

  @override
  final GetAllReleaseChannelsByComponentIdSuccessResult
      getAllReleaseChannelsByComponentIdSuccessResult;

  @override
  String toString() {
    return 'GetAllReleaseChannelsByComponentIdResult.success(getAllReleaseChannelsByComponentIdSuccessResult: $getAllReleaseChannelsByComponentIdSuccessResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetAllReleaseChannelsByComponentIdResultSuccess &&
            (identical(other.getAllReleaseChannelsByComponentIdSuccessResult,
                    getAllReleaseChannelsByComponentIdSuccessResult) ||
                const DeepCollectionEquality().equals(
                    other.getAllReleaseChannelsByComponentIdSuccessResult,
                    getAllReleaseChannelsByComponentIdSuccessResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality()
          .hash(getAllReleaseChannelsByComponentIdSuccessResult);

  @JsonKey(ignore: true)
  @override
  _$$GetAllReleaseChannelsByComponentIdResultSuccessCopyWith<
          _$GetAllReleaseChannelsByComponentIdResultSuccess>
      get copyWith =>
          __$$GetAllReleaseChannelsByComponentIdResultSuccessCopyWithImpl<
                  _$GetAllReleaseChannelsByComponentIdResultSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetAllReleaseChannelsByComponentIdSuccessResult
                getAllReleaseChannelsByComponentIdSuccessResult)
        success,
    required TResult Function(
            GetAllReleaseChannelsByComponentIdFailureResult
                getAllReleaseChannelsByComponentIdFailureResult)
        failure,
  }) {
    return success(getAllReleaseChannelsByComponentIdSuccessResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetAllReleaseChannelsByComponentIdSuccessResult
                getAllReleaseChannelsByComponentIdSuccessResult)?
        success,
    TResult Function(
            GetAllReleaseChannelsByComponentIdFailureResult
                getAllReleaseChannelsByComponentIdFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(getAllReleaseChannelsByComponentIdSuccessResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _$GetAllReleaseChannelsByComponentIdResultSuccess value)
        success,
    required TResult Function(
            _$GetAllReleaseChannelsByComponentIdResultFailure value)
        failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetAllReleaseChannelsByComponentIdResultSuccess value)?
        success,
    TResult Function(_$GetAllReleaseChannelsByComponentIdResultFailure value)?
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
    return _$_$_$GetAllReleaseChannelsByComponentIdResultSuccessToJson(this)
      ..['runtimeType'] = 'success';
  }
}

abstract class _$GetAllReleaseChannelsByComponentIdResultSuccess
    extends GetAllReleaseChannelsByComponentIdResult {
  const factory _$GetAllReleaseChannelsByComponentIdResultSuccess(
          {required GetAllReleaseChannelsByComponentIdSuccessResult
              getAllReleaseChannelsByComponentIdSuccessResult}) =
      _$_$GetAllReleaseChannelsByComponentIdResultSuccess;
  const _$GetAllReleaseChannelsByComponentIdResultSuccess._() : super._();

  factory _$GetAllReleaseChannelsByComponentIdResultSuccess.fromJson(
          Map<String, dynamic> json) =
      _$_$GetAllReleaseChannelsByComponentIdResultSuccess.fromJson;

  GetAllReleaseChannelsByComponentIdSuccessResult
      get getAllReleaseChannelsByComponentIdSuccessResult =>
          throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetAllReleaseChannelsByComponentIdResultSuccessCopyWith<
          _$GetAllReleaseChannelsByComponentIdResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllReleaseChannelsByComponentIdResultFailureCopyWith<
    $Res> {
  factory _$$GetAllReleaseChannelsByComponentIdResultFailureCopyWith(
          _$GetAllReleaseChannelsByComponentIdResultFailure value,
          $Res Function(_$GetAllReleaseChannelsByComponentIdResultFailure)
              then) =
      __$$GetAllReleaseChannelsByComponentIdResultFailureCopyWithImpl<$Res>;
  $Res call(
      {GetAllReleaseChannelsByComponentIdFailureResult
          getAllReleaseChannelsByComponentIdFailureResult});

  $GetAllReleaseChannelsByComponentIdFailureResultCopyWith<$Res>
      get getAllReleaseChannelsByComponentIdFailureResult;
}

/// @nodoc
class __$$GetAllReleaseChannelsByComponentIdResultFailureCopyWithImpl<$Res>
    extends _$GetAllReleaseChannelsByComponentIdResultCopyWithImpl<$Res>
    implements
        _$$GetAllReleaseChannelsByComponentIdResultFailureCopyWith<$Res> {
  __$$GetAllReleaseChannelsByComponentIdResultFailureCopyWithImpl(
      _$GetAllReleaseChannelsByComponentIdResultFailure _value,
      $Res Function(_$GetAllReleaseChannelsByComponentIdResultFailure) _then)
      : super(
            _value,
            (v) =>
                _then(v as _$GetAllReleaseChannelsByComponentIdResultFailure));

  @override
  _$GetAllReleaseChannelsByComponentIdResultFailure get _value =>
      super._value as _$GetAllReleaseChannelsByComponentIdResultFailure;

  @override
  $Res call({
    Object? getAllReleaseChannelsByComponentIdFailureResult = freezed,
  }) {
    return _then(_$GetAllReleaseChannelsByComponentIdResultFailure(
      getAllReleaseChannelsByComponentIdFailureResult:
          getAllReleaseChannelsByComponentIdFailureResult == freezed
              ? _value.getAllReleaseChannelsByComponentIdFailureResult
              : getAllReleaseChannelsByComponentIdFailureResult // ignore: cast_nullable_to_non_nullable
                  as GetAllReleaseChannelsByComponentIdFailureResult,
    ));
  }

  @override
  $GetAllReleaseChannelsByComponentIdFailureResultCopyWith<$Res>
      get getAllReleaseChannelsByComponentIdFailureResult {
    return $GetAllReleaseChannelsByComponentIdFailureResultCopyWith<$Res>(
        _value.getAllReleaseChannelsByComponentIdFailureResult, (value) {
      return _then(_value.copyWith(
          getAllReleaseChannelsByComponentIdFailureResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetAllReleaseChannelsByComponentIdResultFailure
    extends _$GetAllReleaseChannelsByComponentIdResultFailure {
  const _$_$GetAllReleaseChannelsByComponentIdResultFailure(
      {required this.getAllReleaseChannelsByComponentIdFailureResult})
      : super._();

  factory _$_$GetAllReleaseChannelsByComponentIdResultFailure.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetAllReleaseChannelsByComponentIdResultFailureFromJson(json);

  @override
  final GetAllReleaseChannelsByComponentIdFailureResult
      getAllReleaseChannelsByComponentIdFailureResult;

  @override
  String toString() {
    return 'GetAllReleaseChannelsByComponentIdResult.failure(getAllReleaseChannelsByComponentIdFailureResult: $getAllReleaseChannelsByComponentIdFailureResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetAllReleaseChannelsByComponentIdResultFailure &&
            (identical(other.getAllReleaseChannelsByComponentIdFailureResult,
                    getAllReleaseChannelsByComponentIdFailureResult) ||
                const DeepCollectionEquality().equals(
                    other.getAllReleaseChannelsByComponentIdFailureResult,
                    getAllReleaseChannelsByComponentIdFailureResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality()
          .hash(getAllReleaseChannelsByComponentIdFailureResult);

  @JsonKey(ignore: true)
  @override
  _$$GetAllReleaseChannelsByComponentIdResultFailureCopyWith<
          _$GetAllReleaseChannelsByComponentIdResultFailure>
      get copyWith =>
          __$$GetAllReleaseChannelsByComponentIdResultFailureCopyWithImpl<
                  _$GetAllReleaseChannelsByComponentIdResultFailure>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetAllReleaseChannelsByComponentIdSuccessResult
                getAllReleaseChannelsByComponentIdSuccessResult)
        success,
    required TResult Function(
            GetAllReleaseChannelsByComponentIdFailureResult
                getAllReleaseChannelsByComponentIdFailureResult)
        failure,
  }) {
    return failure(getAllReleaseChannelsByComponentIdFailureResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetAllReleaseChannelsByComponentIdSuccessResult
                getAllReleaseChannelsByComponentIdSuccessResult)?
        success,
    TResult Function(
            GetAllReleaseChannelsByComponentIdFailureResult
                getAllReleaseChannelsByComponentIdFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(getAllReleaseChannelsByComponentIdFailureResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _$GetAllReleaseChannelsByComponentIdResultSuccess value)
        success,
    required TResult Function(
            _$GetAllReleaseChannelsByComponentIdResultFailure value)
        failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetAllReleaseChannelsByComponentIdResultSuccess value)?
        success,
    TResult Function(_$GetAllReleaseChannelsByComponentIdResultFailure value)?
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
    return _$_$_$GetAllReleaseChannelsByComponentIdResultFailureToJson(this)
      ..['runtimeType'] = 'failure';
  }
}

abstract class _$GetAllReleaseChannelsByComponentIdResultFailure
    extends GetAllReleaseChannelsByComponentIdResult {
  const factory _$GetAllReleaseChannelsByComponentIdResultFailure(
          {required GetAllReleaseChannelsByComponentIdFailureResult
              getAllReleaseChannelsByComponentIdFailureResult}) =
      _$_$GetAllReleaseChannelsByComponentIdResultFailure;
  const _$GetAllReleaseChannelsByComponentIdResultFailure._() : super._();

  factory _$GetAllReleaseChannelsByComponentIdResultFailure.fromJson(
          Map<String, dynamic> json) =
      _$_$GetAllReleaseChannelsByComponentIdResultFailure.fromJson;

  GetAllReleaseChannelsByComponentIdFailureResult
      get getAllReleaseChannelsByComponentIdFailureResult =>
          throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetAllReleaseChannelsByComponentIdResultFailureCopyWith<
          _$GetAllReleaseChannelsByComponentIdResultFailure>
      get copyWith => throw _privateConstructorUsedError;
}

GetAllReleaseChannelsByComponentIdSuccessResult
    _$GetAllReleaseChannelsByComponentIdSuccessResultFromJson(
        Map<String, dynamic> json) {
  return _$GetAllReleaseChannelsByComponentIdSuccessResultCtor.fromJson(json);
}

/// @nodoc
class _$GetAllReleaseChannelsByComponentIdSuccessResultTearOff {
  const _$GetAllReleaseChannelsByComponentIdSuccessResultTearOff();

  _$GetAllReleaseChannelsByComponentIdSuccessResultCtor call(
      {required int statusCode, required List<ReleaseChannelReadDto> result}) {
    return _$GetAllReleaseChannelsByComponentIdSuccessResultCtor(
      statusCode: statusCode,
      result: result,
    );
  }

  GetAllReleaseChannelsByComponentIdSuccessResult fromJson(
      Map<String, Object> json) {
    return GetAllReleaseChannelsByComponentIdSuccessResult.fromJson(json);
  }
}

/// @nodoc
const $GetAllReleaseChannelsByComponentIdSuccessResult =
    _$GetAllReleaseChannelsByComponentIdSuccessResultTearOff();

/// @nodoc
mixin _$GetAllReleaseChannelsByComponentIdSuccessResult {
  int get statusCode => throw _privateConstructorUsedError;
  List<ReleaseChannelReadDto> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllReleaseChannelsByComponentIdSuccessResultCopyWith<
          GetAllReleaseChannelsByComponentIdSuccessResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllReleaseChannelsByComponentIdSuccessResultCopyWith<$Res> {
  factory $GetAllReleaseChannelsByComponentIdSuccessResultCopyWith(
          GetAllReleaseChannelsByComponentIdSuccessResult value,
          $Res Function(GetAllReleaseChannelsByComponentIdSuccessResult) then) =
      _$GetAllReleaseChannelsByComponentIdSuccessResultCopyWithImpl<$Res>;
  $Res call({int statusCode, List<ReleaseChannelReadDto> result});
}

/// @nodoc
class _$GetAllReleaseChannelsByComponentIdSuccessResultCopyWithImpl<$Res>
    implements $GetAllReleaseChannelsByComponentIdSuccessResultCopyWith<$Res> {
  _$GetAllReleaseChannelsByComponentIdSuccessResultCopyWithImpl(
      this._value, this._then);

  final GetAllReleaseChannelsByComponentIdSuccessResult _value;
  // ignore: unused_field
  final $Res Function(GetAllReleaseChannelsByComponentIdSuccessResult) _then;

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
              as List<ReleaseChannelReadDto>,
    ));
  }
}

/// @nodoc
abstract class _$$GetAllReleaseChannelsByComponentIdSuccessResultCtorCopyWith<
        $Res>
    implements $GetAllReleaseChannelsByComponentIdSuccessResultCopyWith<$Res> {
  factory _$$GetAllReleaseChannelsByComponentIdSuccessResultCtorCopyWith(
          _$GetAllReleaseChannelsByComponentIdSuccessResultCtor value,
          $Res Function(_$GetAllReleaseChannelsByComponentIdSuccessResultCtor)
              then) =
      __$$GetAllReleaseChannelsByComponentIdSuccessResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, List<ReleaseChannelReadDto> result});
}

/// @nodoc
class __$$GetAllReleaseChannelsByComponentIdSuccessResultCtorCopyWithImpl<$Res>
    extends _$GetAllReleaseChannelsByComponentIdSuccessResultCopyWithImpl<$Res>
    implements
        _$$GetAllReleaseChannelsByComponentIdSuccessResultCtorCopyWith<$Res> {
  __$$GetAllReleaseChannelsByComponentIdSuccessResultCtorCopyWithImpl(
      _$GetAllReleaseChannelsByComponentIdSuccessResultCtor _value,
      $Res Function(_$GetAllReleaseChannelsByComponentIdSuccessResultCtor)
          _then)
      : super(
            _value,
            (v) => _then(
                v as _$GetAllReleaseChannelsByComponentIdSuccessResultCtor));

  @override
  _$GetAllReleaseChannelsByComponentIdSuccessResultCtor get _value =>
      super._value as _$GetAllReleaseChannelsByComponentIdSuccessResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? result = freezed,
  }) {
    return _then(_$GetAllReleaseChannelsByComponentIdSuccessResultCtor(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ReleaseChannelReadDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$GetAllReleaseChannelsByComponentIdSuccessResultCtor
    extends _$GetAllReleaseChannelsByComponentIdSuccessResultCtor {
  const _$_$GetAllReleaseChannelsByComponentIdSuccessResultCtor(
      {required this.statusCode, required this.result})
      : super._();

  factory _$_$GetAllReleaseChannelsByComponentIdSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetAllReleaseChannelsByComponentIdSuccessResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final List<ReleaseChannelReadDto> result;

  @override
  String toString() {
    return 'GetAllReleaseChannelsByComponentIdSuccessResult(statusCode: $statusCode, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetAllReleaseChannelsByComponentIdSuccessResultCtor &&
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
  _$$GetAllReleaseChannelsByComponentIdSuccessResultCtorCopyWith<
          _$GetAllReleaseChannelsByComponentIdSuccessResultCtor>
      get copyWith =>
          __$$GetAllReleaseChannelsByComponentIdSuccessResultCtorCopyWithImpl<
                  _$GetAllReleaseChannelsByComponentIdSuccessResultCtor>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetAllReleaseChannelsByComponentIdSuccessResultCtorToJson(
        this);
  }
}

abstract class _$GetAllReleaseChannelsByComponentIdSuccessResultCtor
    extends GetAllReleaseChannelsByComponentIdSuccessResult {
  const factory _$GetAllReleaseChannelsByComponentIdSuccessResultCtor(
          {required int statusCode,
          required List<ReleaseChannelReadDto> result}) =
      _$_$GetAllReleaseChannelsByComponentIdSuccessResultCtor;
  const _$GetAllReleaseChannelsByComponentIdSuccessResultCtor._() : super._();

  factory _$GetAllReleaseChannelsByComponentIdSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$GetAllReleaseChannelsByComponentIdSuccessResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  List<ReleaseChannelReadDto> get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GetAllReleaseChannelsByComponentIdSuccessResultCtorCopyWith<
          _$GetAllReleaseChannelsByComponentIdSuccessResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}

GetAllReleaseChannelsByComponentIdFailureResult
    _$GetAllReleaseChannelsByComponentIdFailureResultFromJson(
        Map<String, dynamic> json) {
  return _$GetAllReleaseChannelsByComponentIdFailureResultCtor.fromJson(json);
}

/// @nodoc
class _$GetAllReleaseChannelsByComponentIdFailureResultTearOff {
  const _$GetAllReleaseChannelsByComponentIdFailureResultTearOff();

  _$GetAllReleaseChannelsByComponentIdFailureResultCtor call(
      {required int statusCode, required String message}) {
    return _$GetAllReleaseChannelsByComponentIdFailureResultCtor(
      statusCode: statusCode,
      message: message,
    );
  }

  GetAllReleaseChannelsByComponentIdFailureResult fromJson(
      Map<String, Object> json) {
    return GetAllReleaseChannelsByComponentIdFailureResult.fromJson(json);
  }
}

/// @nodoc
const $GetAllReleaseChannelsByComponentIdFailureResult =
    _$GetAllReleaseChannelsByComponentIdFailureResultTearOff();

/// @nodoc
mixin _$GetAllReleaseChannelsByComponentIdFailureResult {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllReleaseChannelsByComponentIdFailureResultCopyWith<
          GetAllReleaseChannelsByComponentIdFailureResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllReleaseChannelsByComponentIdFailureResultCopyWith<$Res> {
  factory $GetAllReleaseChannelsByComponentIdFailureResultCopyWith(
          GetAllReleaseChannelsByComponentIdFailureResult value,
          $Res Function(GetAllReleaseChannelsByComponentIdFailureResult) then) =
      _$GetAllReleaseChannelsByComponentIdFailureResultCopyWithImpl<$Res>;
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$GetAllReleaseChannelsByComponentIdFailureResultCopyWithImpl<$Res>
    implements $GetAllReleaseChannelsByComponentIdFailureResultCopyWith<$Res> {
  _$GetAllReleaseChannelsByComponentIdFailureResultCopyWithImpl(
      this._value, this._then);

  final GetAllReleaseChannelsByComponentIdFailureResult _value;
  // ignore: unused_field
  final $Res Function(GetAllReleaseChannelsByComponentIdFailureResult) _then;

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
abstract class _$$GetAllReleaseChannelsByComponentIdFailureResultCtorCopyWith<
        $Res>
    implements $GetAllReleaseChannelsByComponentIdFailureResultCopyWith<$Res> {
  factory _$$GetAllReleaseChannelsByComponentIdFailureResultCtorCopyWith(
          _$GetAllReleaseChannelsByComponentIdFailureResultCtor value,
          $Res Function(_$GetAllReleaseChannelsByComponentIdFailureResultCtor)
              then) =
      __$$GetAllReleaseChannelsByComponentIdFailureResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$GetAllReleaseChannelsByComponentIdFailureResultCtorCopyWithImpl<$Res>
    extends _$GetAllReleaseChannelsByComponentIdFailureResultCopyWithImpl<$Res>
    implements
        _$$GetAllReleaseChannelsByComponentIdFailureResultCtorCopyWith<$Res> {
  __$$GetAllReleaseChannelsByComponentIdFailureResultCtorCopyWithImpl(
      _$GetAllReleaseChannelsByComponentIdFailureResultCtor _value,
      $Res Function(_$GetAllReleaseChannelsByComponentIdFailureResultCtor)
          _then)
      : super(
            _value,
            (v) => _then(
                v as _$GetAllReleaseChannelsByComponentIdFailureResultCtor));

  @override
  _$GetAllReleaseChannelsByComponentIdFailureResultCtor get _value =>
      super._value as _$GetAllReleaseChannelsByComponentIdFailureResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$GetAllReleaseChannelsByComponentIdFailureResultCtor(
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
class _$_$GetAllReleaseChannelsByComponentIdFailureResultCtor
    extends _$GetAllReleaseChannelsByComponentIdFailureResultCtor {
  const _$_$GetAllReleaseChannelsByComponentIdFailureResultCtor(
      {required this.statusCode, required this.message})
      : super._();

  factory _$_$GetAllReleaseChannelsByComponentIdFailureResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$GetAllReleaseChannelsByComponentIdFailureResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'GetAllReleaseChannelsByComponentIdFailureResult(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetAllReleaseChannelsByComponentIdFailureResultCtor &&
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
  _$$GetAllReleaseChannelsByComponentIdFailureResultCtorCopyWith<
          _$GetAllReleaseChannelsByComponentIdFailureResultCtor>
      get copyWith =>
          __$$GetAllReleaseChannelsByComponentIdFailureResultCtorCopyWithImpl<
                  _$GetAllReleaseChannelsByComponentIdFailureResultCtor>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetAllReleaseChannelsByComponentIdFailureResultCtorToJson(
        this);
  }
}

abstract class _$GetAllReleaseChannelsByComponentIdFailureResultCtor
    extends GetAllReleaseChannelsByComponentIdFailureResult {
  const factory _$GetAllReleaseChannelsByComponentIdFailureResultCtor(
          {required int statusCode, required String message}) =
      _$_$GetAllReleaseChannelsByComponentIdFailureResultCtor;
  const _$GetAllReleaseChannelsByComponentIdFailureResultCtor._() : super._();

  factory _$GetAllReleaseChannelsByComponentIdFailureResultCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$GetAllReleaseChannelsByComponentIdFailureResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GetAllReleaseChannelsByComponentIdFailureResultCtorCopyWith<
          _$GetAllReleaseChannelsByComponentIdFailureResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}
