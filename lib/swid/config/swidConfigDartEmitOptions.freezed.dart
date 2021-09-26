// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidConfigDartEmitOptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwidConfigDartEmitOptions _$SwidConfigDartEmitOptionsFromJson(
    Map<String, dynamic> json) {
  return _$SwidConfigDartEmitOptionsCtor.fromJson(json);
}

/// @nodoc
class _$SwidConfigDartEmitOptionsTearOff {
  const _$SwidConfigDartEmitOptionsTearOff();

  _$SwidConfigDartEmitOptionsCtor call(
      {required List<String> prefixPaths, required String hostPackageName}) {
    return _$SwidConfigDartEmitOptionsCtor(
      prefixPaths: prefixPaths,
      hostPackageName: hostPackageName,
    );
  }

  SwidConfigDartEmitOptions fromJson(Map<String, Object> json) {
    return SwidConfigDartEmitOptions.fromJson(json);
  }
}

/// @nodoc
const $SwidConfigDartEmitOptions = _$SwidConfigDartEmitOptionsTearOff();

/// @nodoc
mixin _$SwidConfigDartEmitOptions {
  List<String> get prefixPaths => throw _privateConstructorUsedError;
  String get hostPackageName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwidConfigDartEmitOptionsCopyWith<SwidConfigDartEmitOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidConfigDartEmitOptionsCopyWith<$Res> {
  factory $SwidConfigDartEmitOptionsCopyWith(SwidConfigDartEmitOptions value,
          $Res Function(SwidConfigDartEmitOptions) then) =
      _$SwidConfigDartEmitOptionsCopyWithImpl<$Res>;
  $Res call({List<String> prefixPaths, String hostPackageName});
}

/// @nodoc
class _$SwidConfigDartEmitOptionsCopyWithImpl<$Res>
    implements $SwidConfigDartEmitOptionsCopyWith<$Res> {
  _$SwidConfigDartEmitOptionsCopyWithImpl(this._value, this._then);

  final SwidConfigDartEmitOptions _value;
  // ignore: unused_field
  final $Res Function(SwidConfigDartEmitOptions) _then;

  @override
  $Res call({
    Object? prefixPaths = freezed,
    Object? hostPackageName = freezed,
  }) {
    return _then(_value.copyWith(
      prefixPaths: prefixPaths == freezed
          ? _value.prefixPaths
          : prefixPaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hostPackageName: hostPackageName == freezed
          ? _value.hostPackageName
          : hostPackageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$SwidConfigDartEmitOptionsCtorCopyWith<$Res>
    implements $SwidConfigDartEmitOptionsCopyWith<$Res> {
  factory _$$SwidConfigDartEmitOptionsCtorCopyWith(
          _$SwidConfigDartEmitOptionsCtor value,
          $Res Function(_$SwidConfigDartEmitOptionsCtor) then) =
      __$$SwidConfigDartEmitOptionsCtorCopyWithImpl<$Res>;
  @override
  $Res call({List<String> prefixPaths, String hostPackageName});
}

/// @nodoc
class __$$SwidConfigDartEmitOptionsCtorCopyWithImpl<$Res>
    extends _$SwidConfigDartEmitOptionsCopyWithImpl<$Res>
    implements _$$SwidConfigDartEmitOptionsCtorCopyWith<$Res> {
  __$$SwidConfigDartEmitOptionsCtorCopyWithImpl(
      _$SwidConfigDartEmitOptionsCtor _value,
      $Res Function(_$SwidConfigDartEmitOptionsCtor) _then)
      : super(_value, (v) => _then(v as _$SwidConfigDartEmitOptionsCtor));

  @override
  _$SwidConfigDartEmitOptionsCtor get _value =>
      super._value as _$SwidConfigDartEmitOptionsCtor;

  @override
  $Res call({
    Object? prefixPaths = freezed,
    Object? hostPackageName = freezed,
  }) {
    return _then(_$SwidConfigDartEmitOptionsCtor(
      prefixPaths: prefixPaths == freezed
          ? _value.prefixPaths
          : prefixPaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hostPackageName: hostPackageName == freezed
          ? _value.hostPackageName
          : hostPackageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SwidConfigDartEmitOptionsCtor
    implements _$SwidConfigDartEmitOptionsCtor {
  const _$_$SwidConfigDartEmitOptionsCtor(
      {required this.prefixPaths, required this.hostPackageName});

  factory _$_$SwidConfigDartEmitOptionsCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$SwidConfigDartEmitOptionsCtorFromJson(json);

  @override
  final List<String> prefixPaths;
  @override
  final String hostPackageName;

  @override
  String toString() {
    return 'SwidConfigDartEmitOptions(prefixPaths: $prefixPaths, hostPackageName: $hostPackageName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidConfigDartEmitOptionsCtor &&
            (identical(other.prefixPaths, prefixPaths) ||
                const DeepCollectionEquality()
                    .equals(other.prefixPaths, prefixPaths)) &&
            (identical(other.hostPackageName, hostPackageName) ||
                const DeepCollectionEquality()
                    .equals(other.hostPackageName, hostPackageName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(prefixPaths) ^
      const DeepCollectionEquality().hash(hostPackageName);

  @JsonKey(ignore: true)
  @override
  _$$SwidConfigDartEmitOptionsCtorCopyWith<_$SwidConfigDartEmitOptionsCtor>
      get copyWith => __$$SwidConfigDartEmitOptionsCtorCopyWithImpl<
          _$SwidConfigDartEmitOptionsCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidConfigDartEmitOptionsCtorToJson(this);
  }
}

abstract class _$SwidConfigDartEmitOptionsCtor
    implements SwidConfigDartEmitOptions {
  const factory _$SwidConfigDartEmitOptionsCtor(
      {required List<String> prefixPaths,
      required String hostPackageName}) = _$_$SwidConfigDartEmitOptionsCtor;

  factory _$SwidConfigDartEmitOptionsCtor.fromJson(Map<String, dynamic> json) =
      _$_$SwidConfigDartEmitOptionsCtor.fromJson;

  @override
  List<String> get prefixPaths => throw _privateConstructorUsedError;
  @override
  String get hostPackageName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidConfigDartEmitOptionsCtorCopyWith<_$SwidConfigDartEmitOptionsCtor>
      get copyWith => throw _privateConstructorUsedError;
}
