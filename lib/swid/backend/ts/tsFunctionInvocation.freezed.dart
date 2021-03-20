// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tsFunctionInvocation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TsFunctionInvocation _$TsFunctionInvocationFromJson(Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$TsFunctionInvocationTearOff {
  const _$TsFunctionInvocationTearOff();

// ignore: unused_element
  _$Data call(
      {@required
          String functionReference,
      @required
          TsFunctionInvocationPositionalParameters
              tsFunctionInvocationPositionalParameters,
      @required
          List<TsFunctionInvocationNamedParameters>
              tsFunctionInvocationNamedParameters}) {
    return _$Data(
      functionReference: functionReference,
      tsFunctionInvocationPositionalParameters:
          tsFunctionInvocationPositionalParameters,
      tsFunctionInvocationNamedParameters: tsFunctionInvocationNamedParameters,
    );
  }

// ignore: unused_element
  TsFunctionInvocation fromJson(Map<String, Object> json) {
    return TsFunctionInvocation.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TsFunctionInvocation = _$TsFunctionInvocationTearOff();

/// @nodoc
mixin _$TsFunctionInvocation {
  String get functionReference;
  TsFunctionInvocationPositionalParameters
      get tsFunctionInvocationPositionalParameters;
  List<TsFunctionInvocationNamedParameters>
      get tsFunctionInvocationNamedParameters;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TsFunctionInvocationCopyWith<TsFunctionInvocation> get copyWith;
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
    Object functionReference = freezed,
    Object tsFunctionInvocationPositionalParameters = freezed,
    Object tsFunctionInvocationNamedParameters = freezed,
  }) {
    return _then(_value.copyWith(
      functionReference: functionReference == freezed
          ? _value.functionReference
          : functionReference as String,
      tsFunctionInvocationPositionalParameters:
          tsFunctionInvocationPositionalParameters == freezed
              ? _value.tsFunctionInvocationPositionalParameters
              : tsFunctionInvocationPositionalParameters
                  as TsFunctionInvocationPositionalParameters,
      tsFunctionInvocationNamedParameters:
          tsFunctionInvocationNamedParameters == freezed
              ? _value.tsFunctionInvocationNamedParameters
              : tsFunctionInvocationNamedParameters
                  as List<TsFunctionInvocationNamedParameters>,
    ));
  }

  @override
  $TsFunctionInvocationPositionalParametersCopyWith<$Res>
      get tsFunctionInvocationPositionalParameters {
    if (_value.tsFunctionInvocationPositionalParameters == null) {
      return null;
    }
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
    Object functionReference = freezed,
    Object tsFunctionInvocationPositionalParameters = freezed,
    Object tsFunctionInvocationNamedParameters = freezed,
  }) {
    return _then(_$Data(
      functionReference: functionReference == freezed
          ? _value.functionReference
          : functionReference as String,
      tsFunctionInvocationPositionalParameters:
          tsFunctionInvocationPositionalParameters == freezed
              ? _value.tsFunctionInvocationPositionalParameters
              : tsFunctionInvocationPositionalParameters
                  as TsFunctionInvocationPositionalParameters,
      tsFunctionInvocationNamedParameters:
          tsFunctionInvocationNamedParameters == freezed
              ? _value.tsFunctionInvocationNamedParameters
              : tsFunctionInvocationNamedParameters
                  as List<TsFunctionInvocationNamedParameters>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$Data implements _$Data {
  _$_$Data(
      {@required this.functionReference,
      @required this.tsFunctionInvocationPositionalParameters,
      @required this.tsFunctionInvocationNamedParameters})
      : assert(functionReference != null),
        assert(tsFunctionInvocationPositionalParameters != null),
        assert(tsFunctionInvocationNamedParameters != null);

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
      {@required
          String functionReference,
      @required
          TsFunctionInvocationPositionalParameters
              tsFunctionInvocationPositionalParameters,
      @required
          List<TsFunctionInvocationNamedParameters>
              tsFunctionInvocationNamedParameters}) = _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get functionReference;
  @override
  TsFunctionInvocationPositionalParameters
      get tsFunctionInvocationPositionalParameters;
  @override
  List<TsFunctionInvocationNamedParameters>
      get tsFunctionInvocationNamedParameters;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith;
}
