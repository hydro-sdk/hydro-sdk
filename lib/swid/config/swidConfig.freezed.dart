// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidConfig.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwidConfig _$SwidConfigFromJson(Map<String, dynamic> json) {
  return _$SwidConfigCtor.fromJson(json);
}

/// @nodoc
class _$SwidConfigTearOff {
  const _$SwidConfigTearOff();

  _$SwidConfigCtor call(
      {required String inputPackagePath,
      required List<String> interfaces,
      required SwidConfigEmitOptions emitOptions}) {
    return _$SwidConfigCtor(
      inputPackagePath: inputPackagePath,
      interfaces: interfaces,
      emitOptions: emitOptions,
    );
  }

  SwidConfig fromJson(Map<String, Object> json) {
    return SwidConfig.fromJson(json);
  }
}

/// @nodoc
const $SwidConfig = _$SwidConfigTearOff();

/// @nodoc
mixin _$SwidConfig {
  String get inputPackagePath => throw _privateConstructorUsedError;
  List<String> get interfaces => throw _privateConstructorUsedError;
  SwidConfigEmitOptions get emitOptions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwidConfigCopyWith<SwidConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidConfigCopyWith<$Res> {
  factory $SwidConfigCopyWith(
          SwidConfig value, $Res Function(SwidConfig) then) =
      _$SwidConfigCopyWithImpl<$Res>;
  $Res call(
      {String inputPackagePath,
      List<String> interfaces,
      SwidConfigEmitOptions emitOptions});

  $SwidConfigEmitOptionsCopyWith<$Res> get emitOptions;
}

/// @nodoc
class _$SwidConfigCopyWithImpl<$Res> implements $SwidConfigCopyWith<$Res> {
  _$SwidConfigCopyWithImpl(this._value, this._then);

  final SwidConfig _value;
  // ignore: unused_field
  final $Res Function(SwidConfig) _then;

  @override
  $Res call({
    Object? inputPackagePath = freezed,
    Object? interfaces = freezed,
    Object? emitOptions = freezed,
  }) {
    return _then(_value.copyWith(
      inputPackagePath: inputPackagePath == freezed
          ? _value.inputPackagePath
          : inputPackagePath // ignore: cast_nullable_to_non_nullable
              as String,
      interfaces: interfaces == freezed
          ? _value.interfaces
          : interfaces // ignore: cast_nullable_to_non_nullable
              as List<String>,
      emitOptions: emitOptions == freezed
          ? _value.emitOptions
          : emitOptions // ignore: cast_nullable_to_non_nullable
              as SwidConfigEmitOptions,
    ));
  }

  @override
  $SwidConfigEmitOptionsCopyWith<$Res> get emitOptions {
    return $SwidConfigEmitOptionsCopyWith<$Res>(_value.emitOptions, (value) {
      return _then(_value.copyWith(emitOptions: value));
    });
  }
}

/// @nodoc
abstract class _$$SwidConfigCtorCopyWith<$Res>
    implements $SwidConfigCopyWith<$Res> {
  factory _$$SwidConfigCtorCopyWith(
          _$SwidConfigCtor value, $Res Function(_$SwidConfigCtor) then) =
      __$$SwidConfigCtorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String inputPackagePath,
      List<String> interfaces,
      SwidConfigEmitOptions emitOptions});

  @override
  $SwidConfigEmitOptionsCopyWith<$Res> get emitOptions;
}

/// @nodoc
class __$$SwidConfigCtorCopyWithImpl<$Res>
    extends _$SwidConfigCopyWithImpl<$Res>
    implements _$$SwidConfigCtorCopyWith<$Res> {
  __$$SwidConfigCtorCopyWithImpl(
      _$SwidConfigCtor _value, $Res Function(_$SwidConfigCtor) _then)
      : super(_value, (v) => _then(v as _$SwidConfigCtor));

  @override
  _$SwidConfigCtor get _value => super._value as _$SwidConfigCtor;

  @override
  $Res call({
    Object? inputPackagePath = freezed,
    Object? interfaces = freezed,
    Object? emitOptions = freezed,
  }) {
    return _then(_$SwidConfigCtor(
      inputPackagePath: inputPackagePath == freezed
          ? _value.inputPackagePath
          : inputPackagePath // ignore: cast_nullable_to_non_nullable
              as String,
      interfaces: interfaces == freezed
          ? _value.interfaces
          : interfaces // ignore: cast_nullable_to_non_nullable
              as List<String>,
      emitOptions: emitOptions == freezed
          ? _value.emitOptions
          : emitOptions // ignore: cast_nullable_to_non_nullable
              as SwidConfigEmitOptions,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SwidConfigCtor implements _$SwidConfigCtor {
  const _$_$SwidConfigCtor(
      {required this.inputPackagePath,
      required this.interfaces,
      required this.emitOptions});

  factory _$_$SwidConfigCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$SwidConfigCtorFromJson(json);

  @override
  final String inputPackagePath;
  @override
  final List<String> interfaces;
  @override
  final SwidConfigEmitOptions emitOptions;

  @override
  String toString() {
    return 'SwidConfig(inputPackagePath: $inputPackagePath, interfaces: $interfaces, emitOptions: $emitOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidConfigCtor &&
            (identical(other.inputPackagePath, inputPackagePath) ||
                const DeepCollectionEquality()
                    .equals(other.inputPackagePath, inputPackagePath)) &&
            (identical(other.interfaces, interfaces) ||
                const DeepCollectionEquality()
                    .equals(other.interfaces, interfaces)) &&
            (identical(other.emitOptions, emitOptions) ||
                const DeepCollectionEquality()
                    .equals(other.emitOptions, emitOptions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(inputPackagePath) ^
      const DeepCollectionEquality().hash(interfaces) ^
      const DeepCollectionEquality().hash(emitOptions);

  @JsonKey(ignore: true)
  @override
  _$$SwidConfigCtorCopyWith<_$SwidConfigCtor> get copyWith =>
      __$$SwidConfigCtorCopyWithImpl<_$SwidConfigCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidConfigCtorToJson(this);
  }
}

abstract class _$SwidConfigCtor implements SwidConfig {
  const factory _$SwidConfigCtor(
      {required String inputPackagePath,
      required List<String> interfaces,
      required SwidConfigEmitOptions emitOptions}) = _$_$SwidConfigCtor;

  factory _$SwidConfigCtor.fromJson(Map<String, dynamic> json) =
      _$_$SwidConfigCtor.fromJson;

  @override
  String get inputPackagePath => throw _privateConstructorUsedError;
  @override
  List<String> get interfaces => throw _privateConstructorUsedError;
  @override
  SwidConfigEmitOptions get emitOptions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidConfigCtorCopyWith<_$SwidConfigCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
