// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'canUpdateComponentsResult.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CanUpdateComponentsResult _$CanUpdateComponentsResultFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'success':
      return _$CanUpdateComponentsResultSuccess.fromJson(json);
    case 'failure':
      return _$CanUpdateComponentsResultFailure.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$CanUpdateComponentsResultTearOff {
  const _$CanUpdateComponentsResultTearOff();

  _$CanUpdateComponentsResultSuccess success(
      {required CanUpdateComponentsSuccessResult
          canUpdateComponentsSuccessResult}) {
    return _$CanUpdateComponentsResultSuccess(
      canUpdateComponentsSuccessResult: canUpdateComponentsSuccessResult,
    );
  }

  _$CanUpdateComponentsResultFailure failure(
      {required CanUpdateComponentsFailureResult
          canUpdateComponentsFailureResult}) {
    return _$CanUpdateComponentsResultFailure(
      canUpdateComponentsFailureResult: canUpdateComponentsFailureResult,
    );
  }

  CanUpdateComponentsResult fromJson(Map<String, Object> json) {
    return CanUpdateComponentsResult.fromJson(json);
  }
}

/// @nodoc
const $CanUpdateComponentsResult = _$CanUpdateComponentsResultTearOff();

/// @nodoc
mixin _$CanUpdateComponentsResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CanUpdateComponentsSuccessResult canUpdateComponentsSuccessResult)
        success,
    required TResult Function(
            CanUpdateComponentsFailureResult canUpdateComponentsFailureResult)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CanUpdateComponentsSuccessResult canUpdateComponentsSuccessResult)?
        success,
    TResult Function(
            CanUpdateComponentsFailureResult canUpdateComponentsFailureResult)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CanUpdateComponentsResultSuccess value) success,
    required TResult Function(_$CanUpdateComponentsResultFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CanUpdateComponentsResultSuccess value)? success,
    TResult Function(_$CanUpdateComponentsResultFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CanUpdateComponentsResultCopyWith<$Res> {
  factory $CanUpdateComponentsResultCopyWith(CanUpdateComponentsResult value,
          $Res Function(CanUpdateComponentsResult) then) =
      _$CanUpdateComponentsResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$CanUpdateComponentsResultCopyWithImpl<$Res>
    implements $CanUpdateComponentsResultCopyWith<$Res> {
  _$CanUpdateComponentsResultCopyWithImpl(this._value, this._then);

  final CanUpdateComponentsResult _value;
  // ignore: unused_field
  final $Res Function(CanUpdateComponentsResult) _then;
}

/// @nodoc
abstract class _$$CanUpdateComponentsResultSuccessCopyWith<$Res> {
  factory _$$CanUpdateComponentsResultSuccessCopyWith(
          _$CanUpdateComponentsResultSuccess value,
          $Res Function(_$CanUpdateComponentsResultSuccess) then) =
      __$$CanUpdateComponentsResultSuccessCopyWithImpl<$Res>;
  $Res call(
      {CanUpdateComponentsSuccessResult canUpdateComponentsSuccessResult});

  $CanUpdateComponentsSuccessResultCopyWith<$Res>
      get canUpdateComponentsSuccessResult;
}

/// @nodoc
class __$$CanUpdateComponentsResultSuccessCopyWithImpl<$Res>
    extends _$CanUpdateComponentsResultCopyWithImpl<$Res>
    implements _$$CanUpdateComponentsResultSuccessCopyWith<$Res> {
  __$$CanUpdateComponentsResultSuccessCopyWithImpl(
      _$CanUpdateComponentsResultSuccess _value,
      $Res Function(_$CanUpdateComponentsResultSuccess) _then)
      : super(_value, (v) => _then(v as _$CanUpdateComponentsResultSuccess));

  @override
  _$CanUpdateComponentsResultSuccess get _value =>
      super._value as _$CanUpdateComponentsResultSuccess;

  @override
  $Res call({
    Object? canUpdateComponentsSuccessResult = freezed,
  }) {
    return _then(_$CanUpdateComponentsResultSuccess(
      canUpdateComponentsSuccessResult: canUpdateComponentsSuccessResult ==
              freezed
          ? _value.canUpdateComponentsSuccessResult
          : canUpdateComponentsSuccessResult // ignore: cast_nullable_to_non_nullable
              as CanUpdateComponentsSuccessResult,
    ));
  }

  @override
  $CanUpdateComponentsSuccessResultCopyWith<$Res>
      get canUpdateComponentsSuccessResult {
    return $CanUpdateComponentsSuccessResultCopyWith<$Res>(
        _value.canUpdateComponentsSuccessResult, (value) {
      return _then(_value.copyWith(canUpdateComponentsSuccessResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CanUpdateComponentsResultSuccess
    extends _$CanUpdateComponentsResultSuccess {
  const _$_$CanUpdateComponentsResultSuccess(
      {required this.canUpdateComponentsSuccessResult})
      : super._();

  factory _$_$CanUpdateComponentsResultSuccess.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CanUpdateComponentsResultSuccessFromJson(json);

  @override
  final CanUpdateComponentsSuccessResult canUpdateComponentsSuccessResult;

  @override
  String toString() {
    return 'CanUpdateComponentsResult.success(canUpdateComponentsSuccessResult: $canUpdateComponentsSuccessResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CanUpdateComponentsResultSuccess &&
            (identical(other.canUpdateComponentsSuccessResult,
                    canUpdateComponentsSuccessResult) ||
                const DeepCollectionEquality().equals(
                    other.canUpdateComponentsSuccessResult,
                    canUpdateComponentsSuccessResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(canUpdateComponentsSuccessResult);

  @JsonKey(ignore: true)
  @override
  _$$CanUpdateComponentsResultSuccessCopyWith<
          _$CanUpdateComponentsResultSuccess>
      get copyWith => __$$CanUpdateComponentsResultSuccessCopyWithImpl<
          _$CanUpdateComponentsResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CanUpdateComponentsSuccessResult canUpdateComponentsSuccessResult)
        success,
    required TResult Function(
            CanUpdateComponentsFailureResult canUpdateComponentsFailureResult)
        failure,
  }) {
    return success(canUpdateComponentsSuccessResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CanUpdateComponentsSuccessResult canUpdateComponentsSuccessResult)?
        success,
    TResult Function(
            CanUpdateComponentsFailureResult canUpdateComponentsFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(canUpdateComponentsSuccessResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CanUpdateComponentsResultSuccess value) success,
    required TResult Function(_$CanUpdateComponentsResultFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CanUpdateComponentsResultSuccess value)? success,
    TResult Function(_$CanUpdateComponentsResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CanUpdateComponentsResultSuccessToJson(this)
      ..['runtimeType'] = 'success';
  }
}

abstract class _$CanUpdateComponentsResultSuccess
    extends CanUpdateComponentsResult {
  const factory _$CanUpdateComponentsResultSuccess(
          {required CanUpdateComponentsSuccessResult
              canUpdateComponentsSuccessResult}) =
      _$_$CanUpdateComponentsResultSuccess;
  const _$CanUpdateComponentsResultSuccess._() : super._();

  factory _$CanUpdateComponentsResultSuccess.fromJson(
          Map<String, dynamic> json) =
      _$_$CanUpdateComponentsResultSuccess.fromJson;

  CanUpdateComponentsSuccessResult get canUpdateComponentsSuccessResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CanUpdateComponentsResultSuccessCopyWith<
          _$CanUpdateComponentsResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CanUpdateComponentsResultFailureCopyWith<$Res> {
  factory _$$CanUpdateComponentsResultFailureCopyWith(
          _$CanUpdateComponentsResultFailure value,
          $Res Function(_$CanUpdateComponentsResultFailure) then) =
      __$$CanUpdateComponentsResultFailureCopyWithImpl<$Res>;
  $Res call(
      {CanUpdateComponentsFailureResult canUpdateComponentsFailureResult});

  $CanUpdateComponentsFailureResultCopyWith<$Res>
      get canUpdateComponentsFailureResult;
}

/// @nodoc
class __$$CanUpdateComponentsResultFailureCopyWithImpl<$Res>
    extends _$CanUpdateComponentsResultCopyWithImpl<$Res>
    implements _$$CanUpdateComponentsResultFailureCopyWith<$Res> {
  __$$CanUpdateComponentsResultFailureCopyWithImpl(
      _$CanUpdateComponentsResultFailure _value,
      $Res Function(_$CanUpdateComponentsResultFailure) _then)
      : super(_value, (v) => _then(v as _$CanUpdateComponentsResultFailure));

  @override
  _$CanUpdateComponentsResultFailure get _value =>
      super._value as _$CanUpdateComponentsResultFailure;

  @override
  $Res call({
    Object? canUpdateComponentsFailureResult = freezed,
  }) {
    return _then(_$CanUpdateComponentsResultFailure(
      canUpdateComponentsFailureResult: canUpdateComponentsFailureResult ==
              freezed
          ? _value.canUpdateComponentsFailureResult
          : canUpdateComponentsFailureResult // ignore: cast_nullable_to_non_nullable
              as CanUpdateComponentsFailureResult,
    ));
  }

  @override
  $CanUpdateComponentsFailureResultCopyWith<$Res>
      get canUpdateComponentsFailureResult {
    return $CanUpdateComponentsFailureResultCopyWith<$Res>(
        _value.canUpdateComponentsFailureResult, (value) {
      return _then(_value.copyWith(canUpdateComponentsFailureResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CanUpdateComponentsResultFailure
    extends _$CanUpdateComponentsResultFailure {
  const _$_$CanUpdateComponentsResultFailure(
      {required this.canUpdateComponentsFailureResult})
      : super._();

  factory _$_$CanUpdateComponentsResultFailure.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CanUpdateComponentsResultFailureFromJson(json);

  @override
  final CanUpdateComponentsFailureResult canUpdateComponentsFailureResult;

  @override
  String toString() {
    return 'CanUpdateComponentsResult.failure(canUpdateComponentsFailureResult: $canUpdateComponentsFailureResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CanUpdateComponentsResultFailure &&
            (identical(other.canUpdateComponentsFailureResult,
                    canUpdateComponentsFailureResult) ||
                const DeepCollectionEquality().equals(
                    other.canUpdateComponentsFailureResult,
                    canUpdateComponentsFailureResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(canUpdateComponentsFailureResult);

  @JsonKey(ignore: true)
  @override
  _$$CanUpdateComponentsResultFailureCopyWith<
          _$CanUpdateComponentsResultFailure>
      get copyWith => __$$CanUpdateComponentsResultFailureCopyWithImpl<
          _$CanUpdateComponentsResultFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CanUpdateComponentsSuccessResult canUpdateComponentsSuccessResult)
        success,
    required TResult Function(
            CanUpdateComponentsFailureResult canUpdateComponentsFailureResult)
        failure,
  }) {
    return failure(canUpdateComponentsFailureResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CanUpdateComponentsSuccessResult canUpdateComponentsSuccessResult)?
        success,
    TResult Function(
            CanUpdateComponentsFailureResult canUpdateComponentsFailureResult)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(canUpdateComponentsFailureResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CanUpdateComponentsResultSuccess value) success,
    required TResult Function(_$CanUpdateComponentsResultFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CanUpdateComponentsResultSuccess value)? success,
    TResult Function(_$CanUpdateComponentsResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CanUpdateComponentsResultFailureToJson(this)
      ..['runtimeType'] = 'failure';
  }
}

abstract class _$CanUpdateComponentsResultFailure
    extends CanUpdateComponentsResult {
  const factory _$CanUpdateComponentsResultFailure(
          {required CanUpdateComponentsFailureResult
              canUpdateComponentsFailureResult}) =
      _$_$CanUpdateComponentsResultFailure;
  const _$CanUpdateComponentsResultFailure._() : super._();

  factory _$CanUpdateComponentsResultFailure.fromJson(
          Map<String, dynamic> json) =
      _$_$CanUpdateComponentsResultFailure.fromJson;

  CanUpdateComponentsFailureResult get canUpdateComponentsFailureResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CanUpdateComponentsResultFailureCopyWith<
          _$CanUpdateComponentsResultFailure>
      get copyWith => throw _privateConstructorUsedError;
}

CanUpdateComponentsSuccessResult _$CanUpdateComponentsSuccessResultFromJson(
    Map<String, dynamic> json) {
  return _$CanUpdateComponentsSuccessResultCtor.fromJson(json);
}

/// @nodoc
class _$CanUpdateComponentsSuccessResultTearOff {
  const _$CanUpdateComponentsSuccessResultTearOff();

  _$CanUpdateComponentsSuccessResultCtor call(
      {required int statusCode, required List<ComponentReadDto> result}) {
    return _$CanUpdateComponentsSuccessResultCtor(
      statusCode: statusCode,
      result: result,
    );
  }

  CanUpdateComponentsSuccessResult fromJson(Map<String, Object> json) {
    return CanUpdateComponentsSuccessResult.fromJson(json);
  }
}

/// @nodoc
const $CanUpdateComponentsSuccessResult =
    _$CanUpdateComponentsSuccessResultTearOff();

/// @nodoc
mixin _$CanUpdateComponentsSuccessResult {
  int get statusCode => throw _privateConstructorUsedError;
  List<ComponentReadDto> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CanUpdateComponentsSuccessResultCopyWith<CanUpdateComponentsSuccessResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CanUpdateComponentsSuccessResultCopyWith<$Res> {
  factory $CanUpdateComponentsSuccessResultCopyWith(
          CanUpdateComponentsSuccessResult value,
          $Res Function(CanUpdateComponentsSuccessResult) then) =
      _$CanUpdateComponentsSuccessResultCopyWithImpl<$Res>;
  $Res call({int statusCode, List<ComponentReadDto> result});
}

/// @nodoc
class _$CanUpdateComponentsSuccessResultCopyWithImpl<$Res>
    implements $CanUpdateComponentsSuccessResultCopyWith<$Res> {
  _$CanUpdateComponentsSuccessResultCopyWithImpl(this._value, this._then);

  final CanUpdateComponentsSuccessResult _value;
  // ignore: unused_field
  final $Res Function(CanUpdateComponentsSuccessResult) _then;

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
abstract class _$$CanUpdateComponentsSuccessResultCtorCopyWith<$Res>
    implements $CanUpdateComponentsSuccessResultCopyWith<$Res> {
  factory _$$CanUpdateComponentsSuccessResultCtorCopyWith(
          _$CanUpdateComponentsSuccessResultCtor value,
          $Res Function(_$CanUpdateComponentsSuccessResultCtor) then) =
      __$$CanUpdateComponentsSuccessResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, List<ComponentReadDto> result});
}

/// @nodoc
class __$$CanUpdateComponentsSuccessResultCtorCopyWithImpl<$Res>
    extends _$CanUpdateComponentsSuccessResultCopyWithImpl<$Res>
    implements _$$CanUpdateComponentsSuccessResultCtorCopyWith<$Res> {
  __$$CanUpdateComponentsSuccessResultCtorCopyWithImpl(
      _$CanUpdateComponentsSuccessResultCtor _value,
      $Res Function(_$CanUpdateComponentsSuccessResultCtor) _then)
      : super(
            _value, (v) => _then(v as _$CanUpdateComponentsSuccessResultCtor));

  @override
  _$CanUpdateComponentsSuccessResultCtor get _value =>
      super._value as _$CanUpdateComponentsSuccessResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? result = freezed,
  }) {
    return _then(_$CanUpdateComponentsSuccessResultCtor(
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
class _$_$CanUpdateComponentsSuccessResultCtor
    extends _$CanUpdateComponentsSuccessResultCtor {
  const _$_$CanUpdateComponentsSuccessResultCtor(
      {required this.statusCode, required this.result})
      : super._();

  factory _$_$CanUpdateComponentsSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CanUpdateComponentsSuccessResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final List<ComponentReadDto> result;

  @override
  String toString() {
    return 'CanUpdateComponentsSuccessResult(statusCode: $statusCode, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CanUpdateComponentsSuccessResultCtor &&
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
  _$$CanUpdateComponentsSuccessResultCtorCopyWith<
          _$CanUpdateComponentsSuccessResultCtor>
      get copyWith => __$$CanUpdateComponentsSuccessResultCtorCopyWithImpl<
          _$CanUpdateComponentsSuccessResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CanUpdateComponentsSuccessResultCtorToJson(this);
  }
}

abstract class _$CanUpdateComponentsSuccessResultCtor
    extends CanUpdateComponentsSuccessResult {
  const factory _$CanUpdateComponentsSuccessResultCtor(
          {required int statusCode, required List<ComponentReadDto> result}) =
      _$_$CanUpdateComponentsSuccessResultCtor;
  const _$CanUpdateComponentsSuccessResultCtor._() : super._();

  factory _$CanUpdateComponentsSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$CanUpdateComponentsSuccessResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  List<ComponentReadDto> get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CanUpdateComponentsSuccessResultCtorCopyWith<
          _$CanUpdateComponentsSuccessResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}

CanUpdateComponentsFailureResult _$CanUpdateComponentsFailureResultFromJson(
    Map<String, dynamic> json) {
  return _$CanUpdateComponentsFailureResultCtor.fromJson(json);
}

/// @nodoc
class _$CanUpdateComponentsFailureResultTearOff {
  const _$CanUpdateComponentsFailureResultTearOff();

  _$CanUpdateComponentsFailureResultCtor call(
      {required int statusCode, required String message}) {
    return _$CanUpdateComponentsFailureResultCtor(
      statusCode: statusCode,
      message: message,
    );
  }

  CanUpdateComponentsFailureResult fromJson(Map<String, Object> json) {
    return CanUpdateComponentsFailureResult.fromJson(json);
  }
}

/// @nodoc
const $CanUpdateComponentsFailureResult =
    _$CanUpdateComponentsFailureResultTearOff();

/// @nodoc
mixin _$CanUpdateComponentsFailureResult {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CanUpdateComponentsFailureResultCopyWith<CanUpdateComponentsFailureResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CanUpdateComponentsFailureResultCopyWith<$Res> {
  factory $CanUpdateComponentsFailureResultCopyWith(
          CanUpdateComponentsFailureResult value,
          $Res Function(CanUpdateComponentsFailureResult) then) =
      _$CanUpdateComponentsFailureResultCopyWithImpl<$Res>;
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$CanUpdateComponentsFailureResultCopyWithImpl<$Res>
    implements $CanUpdateComponentsFailureResultCopyWith<$Res> {
  _$CanUpdateComponentsFailureResultCopyWithImpl(this._value, this._then);

  final CanUpdateComponentsFailureResult _value;
  // ignore: unused_field
  final $Res Function(CanUpdateComponentsFailureResult) _then;

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
abstract class _$$CanUpdateComponentsFailureResultCtorCopyWith<$Res>
    implements $CanUpdateComponentsFailureResultCopyWith<$Res> {
  factory _$$CanUpdateComponentsFailureResultCtorCopyWith(
          _$CanUpdateComponentsFailureResultCtor value,
          $Res Function(_$CanUpdateComponentsFailureResultCtor) then) =
      __$$CanUpdateComponentsFailureResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$CanUpdateComponentsFailureResultCtorCopyWithImpl<$Res>
    extends _$CanUpdateComponentsFailureResultCopyWithImpl<$Res>
    implements _$$CanUpdateComponentsFailureResultCtorCopyWith<$Res> {
  __$$CanUpdateComponentsFailureResultCtorCopyWithImpl(
      _$CanUpdateComponentsFailureResultCtor _value,
      $Res Function(_$CanUpdateComponentsFailureResultCtor) _then)
      : super(
            _value, (v) => _then(v as _$CanUpdateComponentsFailureResultCtor));

  @override
  _$CanUpdateComponentsFailureResultCtor get _value =>
      super._value as _$CanUpdateComponentsFailureResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CanUpdateComponentsFailureResultCtor(
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
class _$_$CanUpdateComponentsFailureResultCtor
    extends _$CanUpdateComponentsFailureResultCtor {
  const _$_$CanUpdateComponentsFailureResultCtor(
      {required this.statusCode, required this.message})
      : super._();

  factory _$_$CanUpdateComponentsFailureResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CanUpdateComponentsFailureResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'CanUpdateComponentsFailureResult(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CanUpdateComponentsFailureResultCtor &&
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
  _$$CanUpdateComponentsFailureResultCtorCopyWith<
          _$CanUpdateComponentsFailureResultCtor>
      get copyWith => __$$CanUpdateComponentsFailureResultCtorCopyWithImpl<
          _$CanUpdateComponentsFailureResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CanUpdateComponentsFailureResultCtorToJson(this);
  }
}

abstract class _$CanUpdateComponentsFailureResultCtor
    extends CanUpdateComponentsFailureResult {
  const factory _$CanUpdateComponentsFailureResultCtor(
      {required int statusCode,
      required String message}) = _$_$CanUpdateComponentsFailureResultCtor;
  const _$CanUpdateComponentsFailureResultCtor._() : super._();

  factory _$CanUpdateComponentsFailureResultCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$CanUpdateComponentsFailureResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CanUpdateComponentsFailureResultCtorCopyWith<
          _$CanUpdateComponentsFailureResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}
