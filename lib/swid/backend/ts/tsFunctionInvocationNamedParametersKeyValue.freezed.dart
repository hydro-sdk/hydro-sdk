// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tsFunctionInvocationNamedParametersKeyValue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TsFunctionInvocationNamedParametersKeyValue
    _$TsFunctionInvocationNamedParametersKeyValueFromJson(
        Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$TsFunctionInvocationNamedParametersKeyValueTearOff {
  const _$TsFunctionInvocationNamedParametersKeyValueTearOff();

// ignore: unused_element
  _$Data call({required Map<String, String> namedReferences}) {
    return _$Data(
      namedReferences: namedReferences,
    );
  }

// ignore: unused_element
  TsFunctionInvocationNamedParametersKeyValue fromJson(
      Map<String, Object> json) {
    return TsFunctionInvocationNamedParametersKeyValue.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TsFunctionInvocationNamedParametersKeyValue =
    _$TsFunctionInvocationNamedParametersKeyValueTearOff();

/// @nodoc
mixin _$TsFunctionInvocationNamedParametersKeyValue {
  Map<String, String> get namedReferences;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TsFunctionInvocationNamedParametersKeyValueCopyWith<
      TsFunctionInvocationNamedParametersKeyValue> get copyWith;
}

/// @nodoc
abstract class $TsFunctionInvocationNamedParametersKeyValueCopyWith<$Res> {
  factory $TsFunctionInvocationNamedParametersKeyValueCopyWith(
          TsFunctionInvocationNamedParametersKeyValue value,
          $Res Function(TsFunctionInvocationNamedParametersKeyValue) then) =
      _$TsFunctionInvocationNamedParametersKeyValueCopyWithImpl<$Res>;
  $Res call({Map<String, String>? namedReferences});
}

/// @nodoc
class _$TsFunctionInvocationNamedParametersKeyValueCopyWithImpl<$Res>
    implements $TsFunctionInvocationNamedParametersKeyValueCopyWith<$Res> {
  _$TsFunctionInvocationNamedParametersKeyValueCopyWithImpl(
      this._value, this._then);

  final TsFunctionInvocationNamedParametersKeyValue _value;
  // ignore: unused_field
  final $Res Function(TsFunctionInvocationNamedParametersKeyValue?) _then;

  @override
  $Res call({
    Object? namedReferences = freezed,
  }) {
    return _then(_value.copyWith(
      namedReferences: namedReferences == freezed
          ? _value.namedReferences
          : namedReferences as Map<String, String>?,
    ));
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res>
    implements $TsFunctionInvocationNamedParametersKeyValueCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, String>? namedReferences});
}

/// @nodoc
class __$$DataCopyWithImpl<$Res>
    extends _$TsFunctionInvocationNamedParametersKeyValueCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object? namedReferences = freezed,
  }) {
    return _then(_$Data(
      namedReferences: namedReferences == freezed
          ? _value.namedReferences
          : (namedReferences as Map<String, String>?)!,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$Data implements _$Data {
  _$_$Data({required this.namedReferences}) : assert(namedReferences != null);

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final Map<String, String> namedReferences;

  @override
  String toString() {
    return 'TsFunctionInvocationNamedParametersKeyValue(namedReferences: $namedReferences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$Data &&
            (identical(other.namedReferences, namedReferences) ||
                const DeepCollectionEquality()
                    .equals(other.namedReferences, namedReferences)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(namedReferences);

  @JsonKey(ignore: true)
  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data implements TsFunctionInvocationNamedParametersKeyValue {
  factory _$Data({required Map<String, String> namedReferences}) = _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  Map<String, String> get namedReferences;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith;
}
