// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tsFunctionInvocation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TsFunctionInvocation _$TsFunctionInvocationFromJson(Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$TsFunctionInvocationTearOff {
  const _$TsFunctionInvocationTearOff();

  _$Data call(
      {required String functionReference,
      required TsFunctionInvocationPositionalParameters
          tsFunctionInvocationPositionalParameters,
      required List<TsFunctionInvocationNamedParameters>
          tsFunctionInvocationNamedParameters}) {
    return _$Data(
      functionReference: functionReference,
      tsFunctionInvocationPositionalParameters:
          tsFunctionInvocationPositionalParameters,
      tsFunctionInvocationNamedParameters: tsFunctionInvocationNamedParameters,
    );
  }

  TsFunctionInvocation fromJson(Map<String, Object> json) {
    return TsFunctionInvocation.fromJson(json);
  }
}

/// @nodoc
const $TsFunctionInvocation = _$TsFunctionInvocationTearOff();

/// @nodoc
mixin _$TsFunctionInvocation {
  String get functionReference => throw _privateConstructorUsedError;
  TsFunctionInvocationPositionalParameters
      get tsFunctionInvocationPositionalParameters =>
          throw _privateConstructorUsedError;
  List<TsFunctionInvocationNamedParameters>
      get tsFunctionInvocationNamedParameters =>
          throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TsFunctionInvocationCopyWith<TsFunctionInvocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TsFunctionInvocationCopyWith<$Res> {
  factory $TsFunctionInvocationCopyWith(TsFunctionInvocation value,
          $Res Function(TsFunctionInvocation) then) =
      _$TsFunctionInvocationCopyWithImpl<$Res>;
  $Res call(
      {String functionReference,
      TsFunctionInvocationPositionalParameters
          tsFunctionInvocationPositionalParameters,
      List<TsFunctionInvocationNamedParameters>
          tsFunctionInvocationNamedParameters});

  $TsFunctionInvocationPositionalParametersCopyWith<$Res>
      get tsFunctionInvocationPositionalParameters;
}

/// @nodoc
class _$TsFunctionInvocationCopyWithImpl<$Res>
    implements $TsFunctionInvocationCopyWith<$Res> {
  _$TsFunctionInvocationCopyWithImpl(this._value, this._then);

  final TsFunctionInvocation _value;
  // ignore: unused_field
  final $Res Function(TsFunctionInvocation) _then;

  @override
  $Res call({
    Object? functionReference = freezed,
    Object? tsFunctionInvocationPositionalParameters = freezed,
    Object? tsFunctionInvocationNamedParameters = freezed,
  }) {
    return _then(_value.copyWith(
      functionReference: functionReference == freezed
          ? _value.functionReference
          : functionReference // ignore: cast_nullable_to_non_nullable
              as String,
      tsFunctionInvocationPositionalParameters:
          tsFunctionInvocationPositionalParameters == freezed
              ? _value.tsFunctionInvocationPositionalParameters
              : tsFunctionInvocationPositionalParameters // ignore: cast_nullable_to_non_nullable
                  as TsFunctionInvocationPositionalParameters,
      tsFunctionInvocationNamedParameters: tsFunctionInvocationNamedParameters ==
              freezed
          ? _value.tsFunctionInvocationNamedParameters
          : tsFunctionInvocationNamedParameters // ignore: cast_nullable_to_non_nullable
              as List<TsFunctionInvocationNamedParameters>,
    ));
  }

  @override
  $TsFunctionInvocationPositionalParametersCopyWith<$Res>
      get tsFunctionInvocationPositionalParameters {
    return $TsFunctionInvocationPositionalParametersCopyWith<$Res>(
        _value.tsFunctionInvocationPositionalParameters, (value) {
      return _then(
          _value.copyWith(tsFunctionInvocationPositionalParameters: value));
    });
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res>
    implements $TsFunctionInvocationCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String functionReference,
      TsFunctionInvocationPositionalParameters
          tsFunctionInvocationPositionalParameters,
      List<TsFunctionInvocationNamedParameters>
          tsFunctionInvocationNamedParameters});

  @override
  $TsFunctionInvocationPositionalParametersCopyWith<$Res>
      get tsFunctionInvocationPositionalParameters;
}

/// @nodoc
class __$$DataCopyWithImpl<$Res>
    extends _$TsFunctionInvocationCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object? functionReference = freezed,
    Object? tsFunctionInvocationPositionalParameters = freezed,
    Object? tsFunctionInvocationNamedParameters = freezed,
  }) {
    return _then(_$Data(
      functionReference: functionReference == freezed
          ? _value.functionReference
          : functionReference // ignore: cast_nullable_to_non_nullable
              as String,
      tsFunctionInvocationPositionalParameters:
          tsFunctionInvocationPositionalParameters == freezed
              ? _value.tsFunctionInvocationPositionalParameters
              : tsFunctionInvocationPositionalParameters // ignore: cast_nullable_to_non_nullable
                  as TsFunctionInvocationPositionalParameters,
      tsFunctionInvocationNamedParameters: tsFunctionInvocationNamedParameters ==
              freezed
          ? _value.tsFunctionInvocationNamedParameters
          : tsFunctionInvocationNamedParameters // ignore: cast_nullable_to_non_nullable
              as List<TsFunctionInvocationNamedParameters>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$Data implements _$Data {
  _$_$Data(
      {required this.functionReference,
      required this.tsFunctionInvocationPositionalParameters,
      required this.tsFunctionInvocationNamedParameters});

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final String functionReference;
  @override
  final TsFunctionInvocationPositionalParameters
      tsFunctionInvocationPositionalParameters;
  @override
  final List<TsFunctionInvocationNamedParameters>
      tsFunctionInvocationNamedParameters;

  @override
  String toString() {
    return 'TsFunctionInvocation(functionReference: $functionReference, tsFunctionInvocationPositionalParameters: $tsFunctionInvocationPositionalParameters, tsFunctionInvocationNamedParameters: $tsFunctionInvocationNamedParameters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$Data &&
            (identical(other.functionReference, functionReference) ||
                const DeepCollectionEquality()
                    .equals(other.functionReference, functionReference)) &&
            (identical(other.tsFunctionInvocationPositionalParameters,
                    tsFunctionInvocationPositionalParameters) ||
                const DeepCollectionEquality().equals(
                    other.tsFunctionInvocationPositionalParameters,
                    tsFunctionInvocationPositionalParameters)) &&
            (identical(other.tsFunctionInvocationNamedParameters,
                    tsFunctionInvocationNamedParameters) ||
                const DeepCollectionEquality().equals(
                    other.tsFunctionInvocationNamedParameters,
                    tsFunctionInvocationNamedParameters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(functionReference) ^
      const DeepCollectionEquality()
          .hash(tsFunctionInvocationPositionalParameters) ^
      const DeepCollectionEquality().hash(tsFunctionInvocationNamedParameters);

  @JsonKey(ignore: true)
  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data implements TsFunctionInvocation {
  factory _$Data(
      {required String functionReference,
      required TsFunctionInvocationPositionalParameters
          tsFunctionInvocationPositionalParameters,
      required List<TsFunctionInvocationNamedParameters>
          tsFunctionInvocationNamedParameters}) = _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get functionReference => throw _privateConstructorUsedError;
  @override
  TsFunctionInvocationPositionalParameters
      get tsFunctionInvocationPositionalParameters =>
          throw _privateConstructorUsedError;
  @override
  List<TsFunctionInvocationNamedParameters>
      get tsFunctionInvocationNamedParameters =>
          throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith => throw _privateConstructorUsedError;
}
