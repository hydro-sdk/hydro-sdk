// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'packageManifest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PackageManifest _$PackageManifestFromJson(Map<String, dynamic> json) {
  return _$PackageManifestCtor.fromJson(json);
}

/// @nodoc
class _$PackageManifestTearOff {
  const _$PackageManifestTearOff();

// ignore: unused_element
  _$PackageManifestCtor call(
      {@required String mountableChunk,
      @required List<PackageManifestEntry> entries,
      @required String signature}) {
    return _$PackageManifestCtor(
      mountableChunk: mountableChunk,
      entries: entries,
      signature: signature,
    );
  }

// ignore: unused_element
  PackageManifest fromJson(Map<String, Object> json) {
    return PackageManifest.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PackageManifest = _$PackageManifestTearOff();

/// @nodoc
mixin _$PackageManifest {
  String get mountableChunk;
  List<PackageManifestEntry> get entries;
  String get signature;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PackageManifestCopyWith<PackageManifest> get copyWith;
}

/// @nodoc
abstract class $PackageManifestCopyWith<$Res> {
  factory $PackageManifestCopyWith(
          PackageManifest value, $Res Function(PackageManifest) then) =
      _$PackageManifestCopyWithImpl<$Res>;
  $Res call(
      {String mountableChunk,
      List<PackageManifestEntry> entries,
      String signature});
}

/// @nodoc
class _$PackageManifestCopyWithImpl<$Res>
    implements $PackageManifestCopyWith<$Res> {
  _$PackageManifestCopyWithImpl(this._value, this._then);

  final PackageManifest _value;
  // ignore: unused_field
  final $Res Function(PackageManifest) _then;

  @override
  $Res call({
    Object mountableChunk = freezed,
    Object entries = freezed,
    Object signature = freezed,
  }) {
    return _then(_value.copyWith(
      mountableChunk: mountableChunk == freezed
          ? _value.mountableChunk
          : mountableChunk as String,
      entries: entries == freezed
          ? _value.entries
          : entries as List<PackageManifestEntry>,
      signature: signature == freezed ? _value.signature : signature as String,
    ));
  }
}

/// @nodoc
abstract class _$$PackageManifestCtorCopyWith<$Res>
    implements $PackageManifestCopyWith<$Res> {
  factory _$$PackageManifestCtorCopyWith(_$PackageManifestCtor value,
          $Res Function(_$PackageManifestCtor) then) =
      __$$PackageManifestCtorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String mountableChunk,
      List<PackageManifestEntry> entries,
      String signature});
}

/// @nodoc
class __$$PackageManifestCtorCopyWithImpl<$Res>
    extends _$PackageManifestCopyWithImpl<$Res>
    implements _$$PackageManifestCtorCopyWith<$Res> {
  __$$PackageManifestCtorCopyWithImpl(
      _$PackageManifestCtor _value, $Res Function(_$PackageManifestCtor) _then)
      : super(_value, (v) => _then(v as _$PackageManifestCtor));

  @override
  _$PackageManifestCtor get _value => super._value as _$PackageManifestCtor;

  @override
  $Res call({
    Object mountableChunk = freezed,
    Object entries = freezed,
    Object signature = freezed,
  }) {
    return _then(_$PackageManifestCtor(
      mountableChunk: mountableChunk == freezed
          ? _value.mountableChunk
          : mountableChunk as String,
      entries: entries == freezed
          ? _value.entries
          : entries as List<PackageManifestEntry>,
      signature: signature == freezed ? _value.signature : signature as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$PackageManifestCtor implements _$PackageManifestCtor {
  const _$_$PackageManifestCtor(
      {@required this.mountableChunk,
      @required this.entries,
      @required this.signature})
      : assert(mountableChunk != null),
        assert(entries != null),
        assert(signature != null);

  factory _$_$PackageManifestCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$PackageManifestCtorFromJson(json);

  @override
  final String mountableChunk;
  @override
  final List<PackageManifestEntry> entries;
  @override
  final String signature;

  @override
  String toString() {
    return 'PackageManifest(mountableChunk: $mountableChunk, entries: $entries, signature: $signature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$PackageManifestCtor &&
            (identical(other.mountableChunk, mountableChunk) ||
                const DeepCollectionEquality()
                    .equals(other.mountableChunk, mountableChunk)) &&
            (identical(other.entries, entries) ||
                const DeepCollectionEquality()
                    .equals(other.entries, entries)) &&
            (identical(other.signature, signature) ||
                const DeepCollectionEquality()
                    .equals(other.signature, signature)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mountableChunk) ^
      const DeepCollectionEquality().hash(entries) ^
      const DeepCollectionEquality().hash(signature);

  @JsonKey(ignore: true)
  @override
  _$$PackageManifestCtorCopyWith<_$PackageManifestCtor> get copyWith =>
      __$$PackageManifestCtorCopyWithImpl<_$PackageManifestCtor>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$PackageManifestCtorToJson(this);
  }
}

abstract class _$PackageManifestCtor implements PackageManifest {
  const factory _$PackageManifestCtor(
      {@required String mountableChunk,
      @required List<PackageManifestEntry> entries,
      @required String signature}) = _$_$PackageManifestCtor;

  factory _$PackageManifestCtor.fromJson(Map<String, dynamic> json) =
      _$_$PackageManifestCtor.fromJson;

  @override
  String get mountableChunk;
  @override
  List<PackageManifestEntry> get entries;
  @override
  String get signature;
  @override
  @JsonKey(ignore: true)
  _$$PackageManifestCtorCopyWith<_$PackageManifestCtor> get copyWith;
}
