// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'otaCacheManifest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OtaCacheManifest _$OtaCacheManifestFromJson(Map<String, dynamic> json) {
  return _$OtaCacheManifestCtor.fromJson(json);
}

/// @nodoc
class _$OtaCacheManifestTearOff {
  const _$OtaCacheManifestTearOff();

  _$OtaCacheManifestCtor call({required String id}) {
    return _$OtaCacheManifestCtor(
      id: id,
    );
  }

  OtaCacheManifest fromJson(Map<String, Object> json) {
    return OtaCacheManifest.fromJson(json);
  }
}

/// @nodoc
const $OtaCacheManifest = _$OtaCacheManifestTearOff();

/// @nodoc
mixin _$OtaCacheManifest {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtaCacheManifestCopyWith<OtaCacheManifest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtaCacheManifestCopyWith<$Res> {
  factory $OtaCacheManifestCopyWith(
          OtaCacheManifest value, $Res Function(OtaCacheManifest) then) =
      _$OtaCacheManifestCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$OtaCacheManifestCopyWithImpl<$Res>
    implements $OtaCacheManifestCopyWith<$Res> {
  _$OtaCacheManifestCopyWithImpl(this._value, this._then);

  final OtaCacheManifest _value;
  // ignore: unused_field
  final $Res Function(OtaCacheManifest) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$OtaCacheManifestCtorCopyWith<$Res>
    implements $OtaCacheManifestCopyWith<$Res> {
  factory _$$OtaCacheManifestCtorCopyWith(_$OtaCacheManifestCtor value,
          $Res Function(_$OtaCacheManifestCtor) then) =
      __$$OtaCacheManifestCtorCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$OtaCacheManifestCtorCopyWithImpl<$Res>
    extends _$OtaCacheManifestCopyWithImpl<$Res>
    implements _$$OtaCacheManifestCtorCopyWith<$Res> {
  __$$OtaCacheManifestCtorCopyWithImpl(_$OtaCacheManifestCtor _value,
      $Res Function(_$OtaCacheManifestCtor) _then)
      : super(_value, (v) => _then(v as _$OtaCacheManifestCtor));

  @override
  _$OtaCacheManifestCtor get _value => super._value as _$OtaCacheManifestCtor;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$OtaCacheManifestCtor(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$OtaCacheManifestCtor extends _$OtaCacheManifestCtor {
  const _$_$OtaCacheManifestCtor({required this.id}) : super._();

  factory _$_$OtaCacheManifestCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$OtaCacheManifestCtorFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'OtaCacheManifest(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$OtaCacheManifestCtor &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$$OtaCacheManifestCtorCopyWith<_$OtaCacheManifestCtor> get copyWith =>
      __$$OtaCacheManifestCtorCopyWithImpl<_$OtaCacheManifestCtor>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$OtaCacheManifestCtorToJson(this);
  }
}

abstract class _$OtaCacheManifestCtor extends OtaCacheManifest {
  const factory _$OtaCacheManifestCtor({required String id}) =
      _$_$OtaCacheManifestCtor;
  const _$OtaCacheManifestCtor._() : super._();

  factory _$OtaCacheManifestCtor.fromJson(Map<String, dynamic> json) =
      _$_$OtaCacheManifestCtor.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$OtaCacheManifestCtorCopyWith<_$OtaCacheManifestCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
