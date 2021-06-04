// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidBooleanLiteral.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidBooleanLiteral _$SwidBooleanLiteralFromJson(Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$SwidBooleanLiteralTearOff {
  const _$SwidBooleanLiteralTearOff();

// ignore: unused_element
  _$Data call({required String value}) {
    return _$Data(
      value: value,
    );
  }

// ignore: unused_element
  SwidBooleanLiteral fromJson(Map<String, Object> json) {
    return SwidBooleanLiteral.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidBooleanLiteral = _$SwidBooleanLiteralTearOff();

/// @nodoc
mixin _$SwidBooleanLiteral {
  String get value;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SwidBooleanLiteralCopyWith<SwidBooleanLiteral> get copyWith;
}

/// @nodoc
abstract class $SwidBooleanLiteralCopyWith<$Res> {
  factory $SwidBooleanLiteralCopyWith(
          SwidBooleanLiteral value, $Res Function(SwidBooleanLiteral) then) =
      _$SwidBooleanLiteralCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class _$SwidBooleanLiteralCopyWithImpl<$Res>
    implements $SwidBooleanLiteralCopyWith<$Res> {
  _$SwidBooleanLiteralCopyWithImpl(this._value, this._then);

  final SwidBooleanLiteral _value;
  // ignore: unused_field
  final $Res Function(SwidBooleanLiteral?) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as String?,
    ));
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res>
    implements $SwidBooleanLiteralCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call({String? value});
}

/// @nodoc
class __$$DataCopyWithImpl<$Res> extends _$SwidBooleanLiteralCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$Data(
      value: value == freezed ? _value.value : (value as String?)!,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$Data implements _$Data {
  const _$_$Data({required this.value}) : assert(value != null);

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'SwidBooleanLiteral(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$Data &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data implements SwidBooleanLiteral {
  const factory _$Data({required String value}) = _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith;
}
