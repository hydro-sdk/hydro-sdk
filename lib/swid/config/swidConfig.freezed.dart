// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidConfig.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidConfig _$SwidConfigFromJson(Map<String, dynamic> json) {
  return _$SwidConfigCtor.fromJson(json);
}

/// @nodoc
class _$SwidConfigTearOff {
  const _$SwidConfigTearOff();

// ignore: unused_element
  _$SwidConfigCtor call(
      {@required String inputPackagePath,
      @required List<String> interfaces,
      @required SwidConfigEmitOptions emitOptions}) {
    return _$SwidConfigCtor(
      inputPackagePath: inputPackagePath,
      interfaces: interfaces,
      emitOptions: emitOptions,
    );
  }

// ignore: unused_element
  SwidConfig fromJson(Map<String, Object> json) {
    return SwidConfig.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidConfig = _$SwidConfigTearOff();

/// @nodoc
mixin _$SwidConfig {
  String get inputPackagePath;
  List<String> get interfaces;
  SwidConfigEmitOptions get emitOptions;

  Map<String, dynamic> toJson();
  $SwidConfigCopyWith<SwidConfig> get copyWith;
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
    Object inputPackagePath = freezed,
    Object interfaces = freezed,
    Object emitOptions = freezed,
  }) {
    return _then(_value.copyWith(
      inputPackagePath: inputPackagePath == freezed
          ? _value.inputPackagePath
          : inputPackagePath as String,
      interfaces: interfaces == freezed
          ? _value.interfaces
          : interfaces as List<String>,
      emitOptions: emitOptions == freezed
          ? _value.emitOptions
          : emitOptions as SwidConfigEmitOptions,
    ));
  }

  @override
  $SwidConfigEmitOptionsCopyWith<$Res> get emitOptions {
    if (_value.emitOptions == null) {
      return null;
    }
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
    Object inputPackagePath = freezed,
    Object interfaces = freezed,
    Object emitOptions = freezed,
  }) {
    return _then(_$SwidConfigCtor(
      inputPackagePath: inputPackagePath == freezed
          ? _value.inputPackagePath
          : inputPackagePath as String,
      interfaces: interfaces == freezed
          ? _value.interfaces
          : interfaces as List<String>,
      emitOptions: emitOptions == freezed
          ? _value.emitOptions
          : emitOptions as SwidConfigEmitOptions,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$SwidConfigCtor implements _$SwidConfigCtor {
  const _$_$SwidConfigCtor(
      {@required this.inputPackagePath,
      @required this.interfaces,
      @required this.emitOptions})
      : assert(inputPackagePath != null),
        assert(interfaces != null),
        assert(emitOptions != null);

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
      {@required String inputPackagePath,
      @required List<String> interfaces,
      @required SwidConfigEmitOptions emitOptions}) = _$_$SwidConfigCtor;

  factory _$SwidConfigCtor.fromJson(Map<String, dynamic> json) =
      _$_$SwidConfigCtor.fromJson;

  @override
  String get inputPackagePath;
  @override
  List<String> get interfaces;
  @override
  SwidConfigEmitOptions get emitOptions;
  @override
  _$$SwidConfigCtorCopyWith<_$SwidConfigCtor> get copyWith;
}
