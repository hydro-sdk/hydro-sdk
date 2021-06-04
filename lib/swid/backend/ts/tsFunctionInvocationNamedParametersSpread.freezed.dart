// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tsFunctionInvocationNamedParametersSpread.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TsFunctionInvocationNamedParametersSpread
    _$TsFunctionInvocationNamedParametersSpreadFromJson(
        Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$TsFunctionInvocationNamedParametersSpreadTearOff {
  const _$TsFunctionInvocationNamedParametersSpreadTearOff();

  _$Data call({required List<String> references}) {
    return _$Data(
      references: references,
    );
  }

  TsFunctionInvocationNamedParametersSpread fromJson(Map<String, Object> json) {
    return TsFunctionInvocationNamedParametersSpread.fromJson(json);
  }
}

/// @nodoc
const $TsFunctionInvocationNamedParametersSpread =
    _$TsFunctionInvocationNamedParametersSpreadTearOff();

/// @nodoc
mixin _$TsFunctionInvocationNamedParametersSpread {
  List<String> get references => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TsFunctionInvocationNamedParametersSpreadCopyWith<
          TsFunctionInvocationNamedParametersSpread>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TsFunctionInvocationNamedParametersSpreadCopyWith<$Res> {
  factory $TsFunctionInvocationNamedParametersSpreadCopyWith(
          TsFunctionInvocationNamedParametersSpread value,
          $Res Function(TsFunctionInvocationNamedParametersSpread) then) =
      _$TsFunctionInvocationNamedParametersSpreadCopyWithImpl<$Res>;
  $Res call({List<String> references});
}

/// @nodoc
class _$TsFunctionInvocationNamedParametersSpreadCopyWithImpl<$Res>
    implements $TsFunctionInvocationNamedParametersSpreadCopyWith<$Res> {
  _$TsFunctionInvocationNamedParametersSpreadCopyWithImpl(
      this._value, this._then);

  final TsFunctionInvocationNamedParametersSpread _value;
  // ignore: unused_field
  final $Res Function(TsFunctionInvocationNamedParametersSpread) _then;

  @override
  $Res call({
    Object? references = freezed,
  }) {
    return _then(_value.copyWith(
      references: references == freezed
          ? _value.references
          : references // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res>
    implements $TsFunctionInvocationNamedParametersSpreadCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call({List<String> references});
}

/// @nodoc
class __$$DataCopyWithImpl<$Res>
    extends _$TsFunctionInvocationNamedParametersSpreadCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object? references = freezed,
  }) {
    return _then(_$Data(
      references: references == freezed
          ? _value.references
          : references // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$Data implements _$Data {
  _$_$Data({required this.references});

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final List<String> references;

  @override
  String toString() {
    return 'TsFunctionInvocationNamedParametersSpread(references: $references)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$Data &&
            (identical(other.references, references) ||
                const DeepCollectionEquality()
                    .equals(other.references, references)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(references);

  @JsonKey(ignore: true)
  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data implements TsFunctionInvocationNamedParametersSpread {
  factory _$Data({required List<String> references}) = _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  List<String> get references => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith => throw _privateConstructorUsedError;
}
