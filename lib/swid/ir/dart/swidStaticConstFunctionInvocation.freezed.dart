// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidStaticConstFunctionInvocation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidStaticConstFunctionInvocation _$SwidStaticConstFunctionInvocationFromJson(
    Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$SwidStaticConstFunctionInvocationTearOff {
  const _$SwidStaticConstFunctionInvocationTearOff();

// ignore: unused_element
  _$Data call(
      {@required String value,
      @required List<SwidLiteral> normalParameters,
      @required Map<String, SwidLiteral> namedParameters,
      @required bool isConstructorInvocation}) {
    return _$Data(
      value: value,
      normalParameters: normalParameters,
      namedParameters: namedParameters,
      isConstructorInvocation: isConstructorInvocation,
    );
  }

// ignore: unused_element
  SwidStaticConstFunctionInvocation fromJson(Map<String, Object> json) {
    return SwidStaticConstFunctionInvocation.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidStaticConstFunctionInvocation =
    _$SwidStaticConstFunctionInvocationTearOff();

/// @nodoc
mixin _$SwidStaticConstFunctionInvocation {
  String get value;
  List<SwidLiteral> get normalParameters;
  Map<String, SwidLiteral> get namedParameters;
  bool get isConstructorInvocation;

  Map<String, dynamic> toJson();
  $SwidStaticConstFunctionInvocationCopyWith<SwidStaticConstFunctionInvocation>
      get copyWith;
}

/// @nodoc
abstract class $SwidStaticConstFunctionInvocationCopyWith<$Res> {
  factory $SwidStaticConstFunctionInvocationCopyWith(
          SwidStaticConstFunctionInvocation value,
          $Res Function(SwidStaticConstFunctionInvocation) then) =
      _$SwidStaticConstFunctionInvocationCopyWithImpl<$Res>;
  $Res call(
      {String value,
      List<SwidLiteral> normalParameters,
      Map<String, SwidLiteral> namedParameters,
      bool isConstructorInvocation});
}

/// @nodoc
class _$SwidStaticConstFunctionInvocationCopyWithImpl<$Res>
    implements $SwidStaticConstFunctionInvocationCopyWith<$Res> {
  _$SwidStaticConstFunctionInvocationCopyWithImpl(this._value, this._then);

  final SwidStaticConstFunctionInvocation _value;
  // ignore: unused_field
  final $Res Function(SwidStaticConstFunctionInvocation) _then;

  @override
  $Res call({
    Object value = freezed,
    Object normalParameters = freezed,
    Object namedParameters = freezed,
    Object isConstructorInvocation = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as String,
      normalParameters: normalParameters == freezed
          ? _value.normalParameters
          : normalParameters as List<SwidLiteral>,
      namedParameters: namedParameters == freezed
          ? _value.namedParameters
          : namedParameters as Map<String, SwidLiteral>,
      isConstructorInvocation: isConstructorInvocation == freezed
          ? _value.isConstructorInvocation
          : isConstructorInvocation as bool,
    ));
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res>
    implements $SwidStaticConstFunctionInvocationCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String value,
      List<SwidLiteral> normalParameters,
      Map<String, SwidLiteral> namedParameters,
      bool isConstructorInvocation});
}

/// @nodoc
class __$$DataCopyWithImpl<$Res>
    extends _$SwidStaticConstFunctionInvocationCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object value = freezed,
    Object normalParameters = freezed,
    Object namedParameters = freezed,
    Object isConstructorInvocation = freezed,
  }) {
    return _then(_$Data(
      value: value == freezed ? _value.value : value as String,
      normalParameters: normalParameters == freezed
          ? _value.normalParameters
          : normalParameters as List<SwidLiteral>,
      namedParameters: namedParameters == freezed
          ? _value.namedParameters
          : namedParameters as Map<String, SwidLiteral>,
      isConstructorInvocation: isConstructorInvocation == freezed
          ? _value.isConstructorInvocation
          : isConstructorInvocation as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$Data implements _$Data {
  _$_$Data(
      {@required this.value,
      @required this.normalParameters,
      @required this.namedParameters,
      @required this.isConstructorInvocation})
      : assert(value != null),
        assert(normalParameters != null),
        assert(namedParameters != null),
        assert(isConstructorInvocation != null);

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final String value;
  @override
  final List<SwidLiteral> normalParameters;
  @override
  final Map<String, SwidLiteral> namedParameters;
  @override
  final bool isConstructorInvocation;

  @override
  String toString() {
    return 'SwidStaticConstFunctionInvocation(value: $value, normalParameters: $normalParameters, namedParameters: $namedParameters, isConstructorInvocation: $isConstructorInvocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$Data &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.normalParameters, normalParameters) ||
                const DeepCollectionEquality()
                    .equals(other.normalParameters, normalParameters)) &&
            (identical(other.namedParameters, namedParameters) ||
                const DeepCollectionEquality()
                    .equals(other.namedParameters, namedParameters)) &&
            (identical(
                    other.isConstructorInvocation, isConstructorInvocation) ||
                const DeepCollectionEquality().equals(
                    other.isConstructorInvocation, isConstructorInvocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(normalParameters) ^
      const DeepCollectionEquality().hash(namedParameters) ^
      const DeepCollectionEquality().hash(isConstructorInvocation);

  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data implements SwidStaticConstFunctionInvocation {
  factory _$Data(
      {@required String value,
      @required List<SwidLiteral> normalParameters,
      @required Map<String, SwidLiteral> namedParameters,
      @required bool isConstructorInvocation}) = _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get value;
  @override
  List<SwidLiteral> get normalParameters;
  @override
  Map<String, SwidLiteral> get namedParameters;
  @override
  bool get isConstructorInvocation;
  @override
  _$$DataCopyWith<_$Data> get copyWith;
}
