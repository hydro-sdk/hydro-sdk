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
      @required List<PackageManifestEntry> entries}) {
    return _$PackageManifestCtor(
      mountableChunk: mountableChunk,
      entries: entries,
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

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PackageManifestCopyWith<PackageManifest> get copyWith;
}

/// @nodoc
abstract class $PackageManifestCopyWith<$Res> {
  factory $PackageManifestCopyWith(
          PackageManifest value, $Res Function(PackageManifest) then) =
      _$PackageManifestCopyWithImpl<$Res>;
  $Res call({String mountableChunk, List<PackageManifestEntry> entries});
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
  }) {
    return _then(_value.copyWith(
      mountableChunk: mountableChunk == freezed
          ? _value.mountableChunk
          : mountableChunk as String,
      entries: entries == freezed
          ? _value.entries
          : entries as List<PackageManifestEntry>,
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
  $Res call({String mountableChunk, List<PackageManifestEntry> entries});
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
  }) {
    return _then(_$PackageManifestCtor(
      mountableChunk: mountableChunk == freezed
          ? _value.mountableChunk
          : mountableChunk as String,
      entries: entries == freezed
          ? _value.entries
          : entries as List<PackageManifestEntry>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$PackageManifestCtor implements _$PackageManifestCtor {
  const _$_$PackageManifestCtor(
      {@required this.mountableChunk, @required this.entries})
      : assert(mountableChunk != null),
        assert(entries != null);

  factory _$_$PackageManifestCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$PackageManifestCtorFromJson(json);

  @override
  final String mountableChunk;
  @override
  final List<PackageManifestEntry> entries;

  @override
  String toString() {
    return 'PackageManifest(mountableChunk: $mountableChunk, entries: $entries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$PackageManifestCtor &&
            (identical(other.mountableChunk, mountableChunk) ||
                const DeepCollectionEquality()
                    .equals(other.mountableChunk, mountableChunk)) &&
            (identical(other.entries, entries) ||
                const DeepCollectionEquality().equals(other.entries, entries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mountableChunk) ^
      const DeepCollectionEquality().hash(entries);

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
      @required List<PackageManifestEntry> entries}) = _$_$PackageManifestCtor;

  factory _$PackageManifestCtor.fromJson(Map<String, dynamic> json) =
      _$_$PackageManifestCtor.fromJson;

  @override
  String get mountableChunk;
  @override
  List<PackageManifestEntry> get entries;
  @override
  @JsonKey(ignore: true)
  _$$PackageManifestCtorCopyWith<_$PackageManifestCtor> get copyWith;
}
