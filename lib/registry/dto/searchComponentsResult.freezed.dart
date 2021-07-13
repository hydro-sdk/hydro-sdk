// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'searchComponentsResult.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchComponentsResult _$SearchComponentsResultFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'success':
      return _$SearchComponentsResultSuccess.fromJson(json);
    case 'failure':
      return _$SearchComponentsResultFromSearchComponentsResultFailureCtor
          .fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$SearchComponentsResultTearOff {
  const _$SearchComponentsResultTearOff();

  _$SearchComponentsResultSuccess success(
      {required SearchComponentsResultSuccessResult
          searchComponentsResultSuccessResult}) {
    return _$SearchComponentsResultSuccess(
      searchComponentsResultSuccessResult: searchComponentsResultSuccessResult,
    );
  }

  _$SearchComponentsResultFromSearchComponentsResultFailureCtor failure(
      {required SearchComponentsResultFailure searchComponentsResultFailure}) {
    return _$SearchComponentsResultFromSearchComponentsResultFailureCtor(
      searchComponentsResultFailure: searchComponentsResultFailure,
    );
  }

  SearchComponentsResult fromJson(Map<String, Object> json) {
    return SearchComponentsResult.fromJson(json);
  }
}

/// @nodoc
const $SearchComponentsResult = _$SearchComponentsResultTearOff();

/// @nodoc
mixin _$SearchComponentsResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SearchComponentsResultSuccessResult
                searchComponentsResultSuccessResult)
        success,
    required TResult Function(
            SearchComponentsResultFailure searchComponentsResultFailure)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SearchComponentsResultSuccessResult
                searchComponentsResultSuccessResult)?
        success,
    TResult Function(
            SearchComponentsResultFailure searchComponentsResultFailure)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SearchComponentsResultSuccess value) success,
    required TResult Function(
            _$SearchComponentsResultFromSearchComponentsResultFailureCtor value)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SearchComponentsResultSuccess value)? success,
    TResult Function(
            _$SearchComponentsResultFromSearchComponentsResultFailureCtor
                value)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchComponentsResultCopyWith<$Res> {
  factory $SearchComponentsResultCopyWith(SearchComponentsResult value,
          $Res Function(SearchComponentsResult) then) =
      _$SearchComponentsResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchComponentsResultCopyWithImpl<$Res>
    implements $SearchComponentsResultCopyWith<$Res> {
  _$SearchComponentsResultCopyWithImpl(this._value, this._then);

  final SearchComponentsResult _value;
  // ignore: unused_field
  final $Res Function(SearchComponentsResult) _then;
}

/// @nodoc
abstract class _$$SearchComponentsResultSuccessCopyWith<$Res> {
  factory _$$SearchComponentsResultSuccessCopyWith(
          _$SearchComponentsResultSuccess value,
          $Res Function(_$SearchComponentsResultSuccess) then) =
      __$$SearchComponentsResultSuccessCopyWithImpl<$Res>;
  $Res call(
      {SearchComponentsResultSuccessResult
          searchComponentsResultSuccessResult});

  $SearchComponentsResultSuccessResultCopyWith<$Res>
      get searchComponentsResultSuccessResult;
}

/// @nodoc
class __$$SearchComponentsResultSuccessCopyWithImpl<$Res>
    extends _$SearchComponentsResultCopyWithImpl<$Res>
    implements _$$SearchComponentsResultSuccessCopyWith<$Res> {
  __$$SearchComponentsResultSuccessCopyWithImpl(
      _$SearchComponentsResultSuccess _value,
      $Res Function(_$SearchComponentsResultSuccess) _then)
      : super(_value, (v) => _then(v as _$SearchComponentsResultSuccess));

  @override
  _$SearchComponentsResultSuccess get _value =>
      super._value as _$SearchComponentsResultSuccess;

  @override
  $Res call({
    Object? searchComponentsResultSuccessResult = freezed,
  }) {
    return _then(_$SearchComponentsResultSuccess(
      searchComponentsResultSuccessResult: searchComponentsResultSuccessResult ==
              freezed
          ? _value.searchComponentsResultSuccessResult
          : searchComponentsResultSuccessResult // ignore: cast_nullable_to_non_nullable
              as SearchComponentsResultSuccessResult,
    ));
  }

  @override
  $SearchComponentsResultSuccessResultCopyWith<$Res>
      get searchComponentsResultSuccessResult {
    return $SearchComponentsResultSuccessResultCopyWith<$Res>(
        _value.searchComponentsResultSuccessResult, (value) {
      return _then(_value.copyWith(searchComponentsResultSuccessResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SearchComponentsResultSuccess
    extends _$SearchComponentsResultSuccess {
  const _$_$SearchComponentsResultSuccess(
      {required this.searchComponentsResultSuccessResult})
      : super._();

  factory _$_$SearchComponentsResultSuccess.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$SearchComponentsResultSuccessFromJson(json);

  @override
  final SearchComponentsResultSuccessResult searchComponentsResultSuccessResult;

  @override
  String toString() {
    return 'SearchComponentsResult.success(searchComponentsResultSuccessResult: $searchComponentsResultSuccessResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SearchComponentsResultSuccess &&
            (identical(other.searchComponentsResultSuccessResult,
                    searchComponentsResultSuccessResult) ||
                const DeepCollectionEquality().equals(
                    other.searchComponentsResultSuccessResult,
                    searchComponentsResultSuccessResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchComponentsResultSuccessResult);

  @JsonKey(ignore: true)
  @override
  _$$SearchComponentsResultSuccessCopyWith<_$SearchComponentsResultSuccess>
      get copyWith => __$$SearchComponentsResultSuccessCopyWithImpl<
          _$SearchComponentsResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SearchComponentsResultSuccessResult
                searchComponentsResultSuccessResult)
        success,
    required TResult Function(
            SearchComponentsResultFailure searchComponentsResultFailure)
        failure,
  }) {
    return success(searchComponentsResultSuccessResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SearchComponentsResultSuccessResult
                searchComponentsResultSuccessResult)?
        success,
    TResult Function(
            SearchComponentsResultFailure searchComponentsResultFailure)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(searchComponentsResultSuccessResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SearchComponentsResultSuccess value) success,
    required TResult Function(
            _$SearchComponentsResultFromSearchComponentsResultFailureCtor value)
        failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SearchComponentsResultSuccess value)? success,
    TResult Function(
            _$SearchComponentsResultFromSearchComponentsResultFailureCtor
                value)?
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
    return _$_$_$SearchComponentsResultSuccessToJson(this)
      ..['runtimeType'] = 'success';
  }
}

abstract class _$SearchComponentsResultSuccess extends SearchComponentsResult {
  const factory _$SearchComponentsResultSuccess(
          {required SearchComponentsResultSuccessResult
              searchComponentsResultSuccessResult}) =
      _$_$SearchComponentsResultSuccess;
  const _$SearchComponentsResultSuccess._() : super._();

  factory _$SearchComponentsResultSuccess.fromJson(Map<String, dynamic> json) =
      _$_$SearchComponentsResultSuccess.fromJson;

  SearchComponentsResultSuccessResult get searchComponentsResultSuccessResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SearchComponentsResultSuccessCopyWith<_$SearchComponentsResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchComponentsResultFromSearchComponentsResultFailureCtorCopyWith<
    $Res> {
  factory _$$SearchComponentsResultFromSearchComponentsResultFailureCtorCopyWith(
          _$SearchComponentsResultFromSearchComponentsResultFailureCtor value,
          $Res Function(
                  _$SearchComponentsResultFromSearchComponentsResultFailureCtor)
              then) =
      __$$SearchComponentsResultFromSearchComponentsResultFailureCtorCopyWithImpl<
          $Res>;
  $Res call({SearchComponentsResultFailure searchComponentsResultFailure});

  $SearchComponentsResultFailureCopyWith<$Res>
      get searchComponentsResultFailure;
}

/// @nodoc
class __$$SearchComponentsResultFromSearchComponentsResultFailureCtorCopyWithImpl<
        $Res> extends _$SearchComponentsResultCopyWithImpl<$Res>
    implements
        _$$SearchComponentsResultFromSearchComponentsResultFailureCtorCopyWith<
            $Res> {
  __$$SearchComponentsResultFromSearchComponentsResultFailureCtorCopyWithImpl(
      _$SearchComponentsResultFromSearchComponentsResultFailureCtor _value,
      $Res Function(
              _$SearchComponentsResultFromSearchComponentsResultFailureCtor)
          _then)
      : super(
            _value,
            (v) => _then(v
                as _$SearchComponentsResultFromSearchComponentsResultFailureCtor));

  @override
  _$SearchComponentsResultFromSearchComponentsResultFailureCtor get _value =>
      super._value
          as _$SearchComponentsResultFromSearchComponentsResultFailureCtor;

  @override
  $Res call({
    Object? searchComponentsResultFailure = freezed,
  }) {
    return _then(_$SearchComponentsResultFromSearchComponentsResultFailureCtor(
      searchComponentsResultFailure: searchComponentsResultFailure == freezed
          ? _value.searchComponentsResultFailure
          : searchComponentsResultFailure // ignore: cast_nullable_to_non_nullable
              as SearchComponentsResultFailure,
    ));
  }

  @override
  $SearchComponentsResultFailureCopyWith<$Res>
      get searchComponentsResultFailure {
    return $SearchComponentsResultFailureCopyWith<$Res>(
        _value.searchComponentsResultFailure, (value) {
      return _then(_value.copyWith(searchComponentsResultFailure: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SearchComponentsResultFromSearchComponentsResultFailureCtor
    extends _$SearchComponentsResultFromSearchComponentsResultFailureCtor {
  const _$_$SearchComponentsResultFromSearchComponentsResultFailureCtor(
      {required this.searchComponentsResultFailure})
      : super._();

  factory _$_$SearchComponentsResultFromSearchComponentsResultFailureCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$SearchComponentsResultFromSearchComponentsResultFailureCtorFromJson(
          json);

  @override
  final SearchComponentsResultFailure searchComponentsResultFailure;

  @override
  String toString() {
    return 'SearchComponentsResult.failure(searchComponentsResultFailure: $searchComponentsResultFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SearchComponentsResultFromSearchComponentsResultFailureCtor &&
            (identical(other.searchComponentsResultFailure,
                    searchComponentsResultFailure) ||
                const DeepCollectionEquality().equals(
                    other.searchComponentsResultFailure,
                    searchComponentsResultFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchComponentsResultFailure);

  @JsonKey(ignore: true)
  @override
  _$$SearchComponentsResultFromSearchComponentsResultFailureCtorCopyWith<
          _$SearchComponentsResultFromSearchComponentsResultFailureCtor>
      get copyWith =>
          __$$SearchComponentsResultFromSearchComponentsResultFailureCtorCopyWithImpl<
                  _$SearchComponentsResultFromSearchComponentsResultFailureCtor>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SearchComponentsResultSuccessResult
                searchComponentsResultSuccessResult)
        success,
    required TResult Function(
            SearchComponentsResultFailure searchComponentsResultFailure)
        failure,
  }) {
    return failure(searchComponentsResultFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SearchComponentsResultSuccessResult
                searchComponentsResultSuccessResult)?
        success,
    TResult Function(
            SearchComponentsResultFailure searchComponentsResultFailure)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(searchComponentsResultFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SearchComponentsResultSuccess value) success,
    required TResult Function(
            _$SearchComponentsResultFromSearchComponentsResultFailureCtor value)
        failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SearchComponentsResultSuccess value)? success,
    TResult Function(
            _$SearchComponentsResultFromSearchComponentsResultFailureCtor
                value)?
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
    return _$_$_$SearchComponentsResultFromSearchComponentsResultFailureCtorToJson(
        this)
      ..['runtimeType'] = 'failure';
  }
}

abstract class _$SearchComponentsResultFromSearchComponentsResultFailureCtor
    extends SearchComponentsResult {
  const factory _$SearchComponentsResultFromSearchComponentsResultFailureCtor(
          {required SearchComponentsResultFailure
              searchComponentsResultFailure}) =
      _$_$SearchComponentsResultFromSearchComponentsResultFailureCtor;
  const _$SearchComponentsResultFromSearchComponentsResultFailureCtor._()
      : super._();

  factory _$SearchComponentsResultFromSearchComponentsResultFailureCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$SearchComponentsResultFromSearchComponentsResultFailureCtor.fromJson;

  SearchComponentsResultFailure get searchComponentsResultFailure =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SearchComponentsResultFromSearchComponentsResultFailureCtorCopyWith<
          _$SearchComponentsResultFromSearchComponentsResultFailureCtor>
      get copyWith => throw _privateConstructorUsedError;
}

SearchComponentsResultSuccessResult
    _$SearchComponentsResultSuccessResultFromJson(Map<String, dynamic> json) {
  return _$SearchComponentsResultSuccessResultCtor.fromJson(json);
}

/// @nodoc
class _$SearchComponentsResultSuccessResultTearOff {
  const _$SearchComponentsResultSuccessResultTearOff();

  _$SearchComponentsResultSuccessResultCtor call(
      {required int statusCode, required List<ComponentSearchDto> result}) {
    return _$SearchComponentsResultSuccessResultCtor(
      statusCode: statusCode,
      result: result,
    );
  }

  SearchComponentsResultSuccessResult fromJson(Map<String, Object> json) {
    return SearchComponentsResultSuccessResult.fromJson(json);
  }
}

/// @nodoc
const $SearchComponentsResultSuccessResult =
    _$SearchComponentsResultSuccessResultTearOff();

/// @nodoc
mixin _$SearchComponentsResultSuccessResult {
  int get statusCode => throw _privateConstructorUsedError;
  List<ComponentSearchDto> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchComponentsResultSuccessResultCopyWith<
          SearchComponentsResultSuccessResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchComponentsResultSuccessResultCopyWith<$Res> {
  factory $SearchComponentsResultSuccessResultCopyWith(
          SearchComponentsResultSuccessResult value,
          $Res Function(SearchComponentsResultSuccessResult) then) =
      _$SearchComponentsResultSuccessResultCopyWithImpl<$Res>;
  $Res call({int statusCode, List<ComponentSearchDto> result});
}

/// @nodoc
class _$SearchComponentsResultSuccessResultCopyWithImpl<$Res>
    implements $SearchComponentsResultSuccessResultCopyWith<$Res> {
  _$SearchComponentsResultSuccessResultCopyWithImpl(this._value, this._then);

  final SearchComponentsResultSuccessResult _value;
  // ignore: unused_field
  final $Res Function(SearchComponentsResultSuccessResult) _then;

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
              as List<ComponentSearchDto>,
    ));
  }
}

/// @nodoc
abstract class _$$SearchComponentsResultSuccessResultCtorCopyWith<$Res>
    implements $SearchComponentsResultSuccessResultCopyWith<$Res> {
  factory _$$SearchComponentsResultSuccessResultCtorCopyWith(
          _$SearchComponentsResultSuccessResultCtor value,
          $Res Function(_$SearchComponentsResultSuccessResultCtor) then) =
      __$$SearchComponentsResultSuccessResultCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, List<ComponentSearchDto> result});
}

/// @nodoc
class __$$SearchComponentsResultSuccessResultCtorCopyWithImpl<$Res>
    extends _$SearchComponentsResultSuccessResultCopyWithImpl<$Res>
    implements _$$SearchComponentsResultSuccessResultCtorCopyWith<$Res> {
  __$$SearchComponentsResultSuccessResultCtorCopyWithImpl(
      _$SearchComponentsResultSuccessResultCtor _value,
      $Res Function(_$SearchComponentsResultSuccessResultCtor) _then)
      : super(_value,
            (v) => _then(v as _$SearchComponentsResultSuccessResultCtor));

  @override
  _$SearchComponentsResultSuccessResultCtor get _value =>
      super._value as _$SearchComponentsResultSuccessResultCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? result = freezed,
  }) {
    return _then(_$SearchComponentsResultSuccessResultCtor(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ComponentSearchDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SearchComponentsResultSuccessResultCtor
    extends _$SearchComponentsResultSuccessResultCtor {
  const _$_$SearchComponentsResultSuccessResultCtor(
      {required this.statusCode, required this.result})
      : super._();

  factory _$_$SearchComponentsResultSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$SearchComponentsResultSuccessResultCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final List<ComponentSearchDto> result;

  @override
  String toString() {
    return 'SearchComponentsResultSuccessResult(statusCode: $statusCode, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SearchComponentsResultSuccessResultCtor &&
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
  _$$SearchComponentsResultSuccessResultCtorCopyWith<
          _$SearchComponentsResultSuccessResultCtor>
      get copyWith => __$$SearchComponentsResultSuccessResultCtorCopyWithImpl<
          _$SearchComponentsResultSuccessResultCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SearchComponentsResultSuccessResultCtorToJson(this);
  }
}

abstract class _$SearchComponentsResultSuccessResultCtor
    extends SearchComponentsResultSuccessResult {
  const factory _$SearchComponentsResultSuccessResultCtor(
          {required int statusCode, required List<ComponentSearchDto> result}) =
      _$_$SearchComponentsResultSuccessResultCtor;
  const _$SearchComponentsResultSuccessResultCtor._() : super._();

  factory _$SearchComponentsResultSuccessResultCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$SearchComponentsResultSuccessResultCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  List<ComponentSearchDto> get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SearchComponentsResultSuccessResultCtorCopyWith<
          _$SearchComponentsResultSuccessResultCtor>
      get copyWith => throw _privateConstructorUsedError;
}

SearchComponentsResultFailure _$SearchComponentsResultFailureFromJson(
    Map<String, dynamic> json) {
  return _$SearchComponentsResultFailureCtor.fromJson(json);
}

/// @nodoc
class _$SearchComponentsResultFailureTearOff {
  const _$SearchComponentsResultFailureTearOff();

  _$SearchComponentsResultFailureCtor call(
      {required int statusCode, required String message}) {
    return _$SearchComponentsResultFailureCtor(
      statusCode: statusCode,
      message: message,
    );
  }

  SearchComponentsResultFailure fromJson(Map<String, Object> json) {
    return SearchComponentsResultFailure.fromJson(json);
  }
}

/// @nodoc
const $SearchComponentsResultFailure = _$SearchComponentsResultFailureTearOff();

/// @nodoc
mixin _$SearchComponentsResultFailure {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchComponentsResultFailureCopyWith<SearchComponentsResultFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchComponentsResultFailureCopyWith<$Res> {
  factory $SearchComponentsResultFailureCopyWith(
          SearchComponentsResultFailure value,
          $Res Function(SearchComponentsResultFailure) then) =
      _$SearchComponentsResultFailureCopyWithImpl<$Res>;
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$SearchComponentsResultFailureCopyWithImpl<$Res>
    implements $SearchComponentsResultFailureCopyWith<$Res> {
  _$SearchComponentsResultFailureCopyWithImpl(this._value, this._then);

  final SearchComponentsResultFailure _value;
  // ignore: unused_field
  final $Res Function(SearchComponentsResultFailure) _then;

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
abstract class _$$SearchComponentsResultFailureCtorCopyWith<$Res>
    implements $SearchComponentsResultFailureCopyWith<$Res> {
  factory _$$SearchComponentsResultFailureCtorCopyWith(
          _$SearchComponentsResultFailureCtor value,
          $Res Function(_$SearchComponentsResultFailureCtor) then) =
      __$$SearchComponentsResultFailureCtorCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$SearchComponentsResultFailureCtorCopyWithImpl<$Res>
    extends _$SearchComponentsResultFailureCopyWithImpl<$Res>
    implements _$$SearchComponentsResultFailureCtorCopyWith<$Res> {
  __$$SearchComponentsResultFailureCtorCopyWithImpl(
      _$SearchComponentsResultFailureCtor _value,
      $Res Function(_$SearchComponentsResultFailureCtor) _then)
      : super(_value, (v) => _then(v as _$SearchComponentsResultFailureCtor));

  @override
  _$SearchComponentsResultFailureCtor get _value =>
      super._value as _$SearchComponentsResultFailureCtor;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SearchComponentsResultFailureCtor(
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
class _$_$SearchComponentsResultFailureCtor
    extends _$SearchComponentsResultFailureCtor {
  const _$_$SearchComponentsResultFailureCtor(
      {required this.statusCode, required this.message})
      : super._();

  factory _$_$SearchComponentsResultFailureCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$SearchComponentsResultFailureCtorFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'SearchComponentsResultFailure(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SearchComponentsResultFailureCtor &&
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
  _$$SearchComponentsResultFailureCtorCopyWith<
          _$SearchComponentsResultFailureCtor>
      get copyWith => __$$SearchComponentsResultFailureCtorCopyWithImpl<
          _$SearchComponentsResultFailureCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SearchComponentsResultFailureCtorToJson(this);
  }
}

abstract class _$SearchComponentsResultFailureCtor
    extends SearchComponentsResultFailure {
  const factory _$SearchComponentsResultFailureCtor(
      {required int statusCode,
      required String message}) = _$_$SearchComponentsResultFailureCtor;
  const _$SearchComponentsResultFailureCtor._() : super._();

  factory _$SearchComponentsResultFailureCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$SearchComponentsResultFailureCtor.fromJson;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SearchComponentsResultFailureCtorCopyWith<
          _$SearchComponentsResultFailureCtor>
      get copyWith => throw _privateConstructorUsedError;
}
