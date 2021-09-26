// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidIntegerLiteral.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwidIntegerLiteral _$SwidIntegerLiteralFromJson(Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$SwidIntegerLiteralTearOff {
  const _$SwidIntegerLiteralTearOff();

  _$Data call({required String value}) {
    return _$Data(
      value: value,
    );
  }

  SwidIntegerLiteral fromJson(Map<String, Object> json) {
    return SwidIntegerLiteral.fromJson(json);
  }
}

/// @nodoc
const $SwidIntegerLiteral = _$SwidIntegerLiteralTearOff();

/// @nodoc
mixin _$SwidIntegerLiteral {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwidIntegerLiteralCopyWith<SwidIntegerLiteral> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidIntegerLiteralCopyWith<$Res> {
  factory $SwidIntegerLiteralCopyWith(
          SwidIntegerLiteral value, $Res Function(SwidIntegerLiteral) then) =
      _$SwidIntegerLiteralCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SwidIntegerLiteralCopyWithImpl<$Res>
    implements $SwidIntegerLiteralCopyWith<$Res> {
  _$SwidIntegerLiteralCopyWithImpl(this._value, this._then);

  final SwidIntegerLiteral _value;
  // ignore: unused_field
  final $Res Function(SwidIntegerLiteral) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res>
    implements $SwidIntegerLiteralCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$DataCopyWithImpl<$Res> extends _$SwidIntegerLiteralCopyWithImpl<$Res>
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
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$Data extends _$Data {
  _$_$Data({required this.value}) : super._();

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'SwidIntegerLiteral(value: $value)';
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

abstract class _$Data extends SwidIntegerLiteral {
  factory _$Data({required String value}) = _$_$Data;
  _$Data._() : super._();

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith => throw _privateConstructorUsedError;
}
