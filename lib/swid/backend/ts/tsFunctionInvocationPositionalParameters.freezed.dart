// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tsFunctionInvocationPositionalParameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TsFunctionInvocationPositionalParameters
    _$TsFunctionInvocationPositionalParametersFromJson(
        Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$TsFunctionInvocationPositionalParametersTearOff {
  const _$TsFunctionInvocationPositionalParametersTearOff();

// ignore: unused_element
  _$Data call({required List<String> positionalReferences}) {
    return _$Data(
      positionalReferences: positionalReferences,
    );
  }

// ignore: unused_element
  TsFunctionInvocationPositionalParameters fromJson(Map<String, Object> json) {
    return TsFunctionInvocationPositionalParameters.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TsFunctionInvocationPositionalParameters =
    _$TsFunctionInvocationPositionalParametersTearOff();

/// @nodoc
mixin _$TsFunctionInvocationPositionalParameters {
  List<String?> get positionalReferences;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TsFunctionInvocationPositionalParametersCopyWith<
      TsFunctionInvocationPositionalParameters> get copyWith;
}

/// @nodoc
abstract class $TsFunctionInvocationPositionalParametersCopyWith<$Res> {
  factory $TsFunctionInvocationPositionalParametersCopyWith(
          TsFunctionInvocationPositionalParameters value,
          $Res Function(TsFunctionInvocationPositionalParameters) then) =
      _$TsFunctionInvocationPositionalParametersCopyWithImpl<$Res>;
  $Res call({List<String>? positionalReferences});
}

/// @nodoc
class _$TsFunctionInvocationPositionalParametersCopyWithImpl<$Res>
    implements $TsFunctionInvocationPositionalParametersCopyWith<$Res> {
  _$TsFunctionInvocationPositionalParametersCopyWithImpl(
      this._value, this._then);

  final TsFunctionInvocationPositionalParameters _value;
  // ignore: unused_field
  final $Res Function(TsFunctionInvocationPositionalParameters?) _then;

  @override
  $Res call({
    Object? positionalReferences = freezed,
  }) {
    return _then(_value.copyWith(
      positionalReferences: positionalReferences == freezed
          ? _value.positionalReferences as List<String>?
          : positionalReferences as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res>
    implements $TsFunctionInvocationPositionalParametersCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call({List<String>? positionalReferences});
}

/// @nodoc
class __$$DataCopyWithImpl<$Res>
    extends _$TsFunctionInvocationPositionalParametersCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object? positionalReferences = freezed,
  }) {
    return _then(_$Data(
      positionalReferences: positionalReferences == freezed
          ? _value.positionalReferences
          : (positionalReferences as List<String>?)!,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$Data implements _$Data {
  _$_$Data({required this.positionalReferences})
      : assert(positionalReferences != null);

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final List<String?> positionalReferences;

  @override
  String toString() {
    return 'TsFunctionInvocationPositionalParameters(positionalReferences: $positionalReferences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$Data &&
            (identical(other.positionalReferences, positionalReferences) ||
                const DeepCollectionEquality()
                    .equals(other.positionalReferences, positionalReferences)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(positionalReferences);

  @JsonKey(ignore: true)
  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data implements TsFunctionInvocationPositionalParameters {
  factory _$Data({required List<String?> positionalReferences}) = _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  List<String?> get positionalReferences;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith;
}
