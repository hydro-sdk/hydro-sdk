// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidConfigTsEmitOptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwidConfigTsEmitOptions _$SwidConfigTsEmitOptionsFromJson(
    Map<String, dynamic> json) {
  return _$SwidConfigTsEmitOptionsCtor.fromJson(json);
}

/// @nodoc
class _$SwidConfigTsEmitOptionsTearOff {
  const _$SwidConfigTsEmitOptionsTearOff();

  _$SwidConfigTsEmitOptionsCtor call({required List<String> prefixPaths}) {
    return _$SwidConfigTsEmitOptionsCtor(
      prefixPaths: prefixPaths,
    );
  }

  SwidConfigTsEmitOptions fromJson(Map<String, Object> json) {
    return SwidConfigTsEmitOptions.fromJson(json);
  }
}

/// @nodoc
const $SwidConfigTsEmitOptions = _$SwidConfigTsEmitOptionsTearOff();

/// @nodoc
mixin _$SwidConfigTsEmitOptions {
  List<String> get prefixPaths => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwidConfigTsEmitOptionsCopyWith<SwidConfigTsEmitOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidConfigTsEmitOptionsCopyWith<$Res> {
  factory $SwidConfigTsEmitOptionsCopyWith(SwidConfigTsEmitOptions value,
          $Res Function(SwidConfigTsEmitOptions) then) =
      _$SwidConfigTsEmitOptionsCopyWithImpl<$Res>;
  $Res call({List<String> prefixPaths});
}

/// @nodoc
class _$SwidConfigTsEmitOptionsCopyWithImpl<$Res>
    implements $SwidConfigTsEmitOptionsCopyWith<$Res> {
  _$SwidConfigTsEmitOptionsCopyWithImpl(this._value, this._then);

  final SwidConfigTsEmitOptions _value;
  // ignore: unused_field
  final $Res Function(SwidConfigTsEmitOptions) _then;

  @override
  $Res call({
    Object? prefixPaths = freezed,
  }) {
    return _then(_value.copyWith(
      prefixPaths: prefixPaths == freezed
          ? _value.prefixPaths
          : prefixPaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$SwidConfigTsEmitOptionsCtorCopyWith<$Res>
    implements $SwidConfigTsEmitOptionsCopyWith<$Res> {
  factory _$$SwidConfigTsEmitOptionsCtorCopyWith(
          _$SwidConfigTsEmitOptionsCtor value,
          $Res Function(_$SwidConfigTsEmitOptionsCtor) then) =
      __$$SwidConfigTsEmitOptionsCtorCopyWithImpl<$Res>;
  @override
  $Res call({List<String> prefixPaths});
}

/// @nodoc
class __$$SwidConfigTsEmitOptionsCtorCopyWithImpl<$Res>
    extends _$SwidConfigTsEmitOptionsCopyWithImpl<$Res>
    implements _$$SwidConfigTsEmitOptionsCtorCopyWith<$Res> {
  __$$SwidConfigTsEmitOptionsCtorCopyWithImpl(
      _$SwidConfigTsEmitOptionsCtor _value,
      $Res Function(_$SwidConfigTsEmitOptionsCtor) _then)
      : super(_value, (v) => _then(v as _$SwidConfigTsEmitOptionsCtor));

  @override
  _$SwidConfigTsEmitOptionsCtor get _value =>
      super._value as _$SwidConfigTsEmitOptionsCtor;

  @override
  $Res call({
    Object? prefixPaths = freezed,
  }) {
    return _then(_$SwidConfigTsEmitOptionsCtor(
      prefixPaths: prefixPaths == freezed
          ? _value.prefixPaths
          : prefixPaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SwidConfigTsEmitOptionsCtor implements _$SwidConfigTsEmitOptionsCtor {
  const _$_$SwidConfigTsEmitOptionsCtor({required this.prefixPaths});

  factory _$_$SwidConfigTsEmitOptionsCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$SwidConfigTsEmitOptionsCtorFromJson(json);

  @override
  final List<String> prefixPaths;

  @override
  String toString() {
    return 'SwidConfigTsEmitOptions(prefixPaths: $prefixPaths)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidConfigTsEmitOptionsCtor &&
            (identical(other.prefixPaths, prefixPaths) ||
                const DeepCollectionEquality()
                    .equals(other.prefixPaths, prefixPaths)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(prefixPaths);

  @JsonKey(ignore: true)
  @override
  _$$SwidConfigTsEmitOptionsCtorCopyWith<_$SwidConfigTsEmitOptionsCtor>
      get copyWith => __$$SwidConfigTsEmitOptionsCtorCopyWithImpl<
          _$SwidConfigTsEmitOptionsCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidConfigTsEmitOptionsCtorToJson(this);
  }
}

abstract class _$SwidConfigTsEmitOptionsCtor
    implements SwidConfigTsEmitOptions {
  const factory _$SwidConfigTsEmitOptionsCtor(
      {required List<String> prefixPaths}) = _$_$SwidConfigTsEmitOptionsCtor;

  factory _$SwidConfigTsEmitOptionsCtor.fromJson(Map<String, dynamic> json) =
      _$_$SwidConfigTsEmitOptionsCtor.fromJson;

  @override
  List<String> get prefixPaths => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidConfigTsEmitOptionsCtorCopyWith<_$SwidConfigTsEmitOptionsCtor>
      get copyWith => throw _privateConstructorUsedError;
}
