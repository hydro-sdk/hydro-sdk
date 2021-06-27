// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tsFunctionInvocationPositionalParameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TsFunctionInvocationPositionalParameters
    _$TsFunctionInvocationPositionalParametersFromJson(
        Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$TsFunctionInvocationPositionalParametersTearOff {
  const _$TsFunctionInvocationPositionalParametersTearOff();

  _$Data call({required List<String?> positionalReferences}) {
    return _$Data(
      positionalReferences: positionalReferences,
    );
  }

  TsFunctionInvocationPositionalParameters fromJson(Map<String, Object> json) {
    return TsFunctionInvocationPositionalParameters.fromJson(json);
  }
}

/// @nodoc
const $TsFunctionInvocationPositionalParameters =
    _$TsFunctionInvocationPositionalParametersTearOff();

/// @nodoc
mixin _$TsFunctionInvocationPositionalParameters {
  List<String?> get positionalReferences => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TsFunctionInvocationPositionalParametersCopyWith<
          TsFunctionInvocationPositionalParameters>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TsFunctionInvocationPositionalParametersCopyWith<$Res> {
  factory $TsFunctionInvocationPositionalParametersCopyWith(
          TsFunctionInvocationPositionalParameters value,
          $Res Function(TsFunctionInvocationPositionalParameters) then) =
      _$TsFunctionInvocationPositionalParametersCopyWithImpl<$Res>;
  $Res call({List<String?> positionalReferences});
}

/// @nodoc
class _$TsFunctionInvocationPositionalParametersCopyWithImpl<$Res>
    implements $TsFunctionInvocationPositionalParametersCopyWith<$Res> {
  _$TsFunctionInvocationPositionalParametersCopyWithImpl(
      this._value, this._then);

  final TsFunctionInvocationPositionalParameters _value;
  // ignore: unused_field
  final $Res Function(TsFunctionInvocationPositionalParameters) _then;

  @override
  $Res call({
    Object? positionalReferences = freezed,
  }) {
    return _then(_value.copyWith(
      positionalReferences: positionalReferences == freezed
          ? _value.positionalReferences
          : positionalReferences // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ));
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res>
    implements $TsFunctionInvocationPositionalParametersCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call({List<String?> positionalReferences});
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
          : positionalReferences // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$Data implements _$Data {
  _$_$Data({required this.positionalReferences});

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
  List<String?> get positionalReferences => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith => throw _privateConstructorUsedError;
}
