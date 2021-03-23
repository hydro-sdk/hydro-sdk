// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'projectConfigComponentChunk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProjectConfigComponentChunk _$ProjectConfigComponentChunkFromJson(
    Map<String, dynamic> json) {
  return _$ProjectConfigComponentChunkCtor.fromJson(json);
}

/// @nodoc
class _$ProjectConfigComponentChunkTearOff {
  const _$ProjectConfigComponentChunkTearOff();

// ignore: unused_element
  _$ProjectConfigComponentChunkCtor call(
      {@required ProjectConfigComponentChunkType type,
      @required String entryPoint,
      @JsonKey(defaultValue: null) @nullable String baseUrl}) {
    return _$ProjectConfigComponentChunkCtor(
      type: type,
      entryPoint: entryPoint,
      baseUrl: baseUrl,
    );
  }

// ignore: unused_element
  ProjectConfigComponentChunk fromJson(Map<String, Object> json) {
    return ProjectConfigComponentChunk.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProjectConfigComponentChunk = _$ProjectConfigComponentChunkTearOff();

/// @nodoc
mixin _$ProjectConfigComponentChunk {
  ProjectConfigComponentChunkType get type;
  String get entryPoint;
  @JsonKey(defaultValue: null)
  @nullable
  String get baseUrl;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProjectConfigComponentChunkCopyWith<ProjectConfigComponentChunk>
      get copyWith;
}

/// @nodoc
abstract class $ProjectConfigComponentChunkCopyWith<$Res> {
  factory $ProjectConfigComponentChunkCopyWith(
          ProjectConfigComponentChunk value,
          $Res Function(ProjectConfigComponentChunk) then) =
      _$ProjectConfigComponentChunkCopyWithImpl<$Res>;
  $Res call(
      {ProjectConfigComponentChunkType type,
      String entryPoint,
      @JsonKey(defaultValue: null) @nullable String baseUrl});
}

/// @nodoc
class _$ProjectConfigComponentChunkCopyWithImpl<$Res>
    implements $ProjectConfigComponentChunkCopyWith<$Res> {
  _$ProjectConfigComponentChunkCopyWithImpl(this._value, this._then);

  final ProjectConfigComponentChunk _value;
  // ignore: unused_field
  final $Res Function(ProjectConfigComponentChunk) _then;

  @override
  $Res call({
    Object type = freezed,
    Object entryPoint = freezed,
    Object baseUrl = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type as ProjectConfigComponentChunkType,
      entryPoint:
          entryPoint == freezed ? _value.entryPoint : entryPoint as String,
      baseUrl: baseUrl == freezed ? _value.baseUrl : baseUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$$ProjectConfigComponentChunkCtorCopyWith<$Res>
    implements $ProjectConfigComponentChunkCopyWith<$Res> {
  factory _$$ProjectConfigComponentChunkCtorCopyWith(
          _$ProjectConfigComponentChunkCtor value,
          $Res Function(_$ProjectConfigComponentChunkCtor) then) =
      __$$ProjectConfigComponentChunkCtorCopyWithImpl<$Res>;
  @override
  $Res call(
      {ProjectConfigComponentChunkType type,
      String entryPoint,
      @JsonKey(defaultValue: null) @nullable String baseUrl});
}

/// @nodoc
class __$$ProjectConfigComponentChunkCtorCopyWithImpl<$Res>
    extends _$ProjectConfigComponentChunkCopyWithImpl<$Res>
    implements _$$ProjectConfigComponentChunkCtorCopyWith<$Res> {
  __$$ProjectConfigComponentChunkCtorCopyWithImpl(
      _$ProjectConfigComponentChunkCtor _value,
      $Res Function(_$ProjectConfigComponentChunkCtor) _then)
      : super(_value, (v) => _then(v as _$ProjectConfigComponentChunkCtor));

  @override
  _$ProjectConfigComponentChunkCtor get _value =>
      super._value as _$ProjectConfigComponentChunkCtor;

  @override
  $Res call({
    Object type = freezed,
    Object entryPoint = freezed,
    Object baseUrl = freezed,
  }) {
    return _then(_$ProjectConfigComponentChunkCtor(
      type: type == freezed
          ? _value.type
          : type as ProjectConfigComponentChunkType,
      entryPoint:
          entryPoint == freezed ? _value.entryPoint : entryPoint as String,
      baseUrl: baseUrl == freezed ? _value.baseUrl : baseUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$ProjectConfigComponentChunkCtor
    implements _$ProjectConfigComponentChunkCtor {
  const _$_$ProjectConfigComponentChunkCtor(
      {@required this.type,
      @required this.entryPoint,
      @JsonKey(defaultValue: null) @nullable this.baseUrl})
      : assert(type != null),
        assert(entryPoint != null);

  factory _$_$ProjectConfigComponentChunkCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$ProjectConfigComponentChunkCtorFromJson(json);

  @override
  final ProjectConfigComponentChunkType type;
  @override
  final String entryPoint;
  @override
  @JsonKey(defaultValue: null)
  @nullable
  final String baseUrl;

  @override
  String toString() {
    return 'ProjectConfigComponentChunk(type: $type, entryPoint: $entryPoint, baseUrl: $baseUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ProjectConfigComponentChunkCtor &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.entryPoint, entryPoint) ||
                const DeepCollectionEquality()
                    .equals(other.entryPoint, entryPoint)) &&
            (identical(other.baseUrl, baseUrl) ||
                const DeepCollectionEquality().equals(other.baseUrl, baseUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(entryPoint) ^
      const DeepCollectionEquality().hash(baseUrl);

  @JsonKey(ignore: true)
  @override
  _$$ProjectConfigComponentChunkCtorCopyWith<_$ProjectConfigComponentChunkCtor>
      get copyWith => __$$ProjectConfigComponentChunkCtorCopyWithImpl<
          _$ProjectConfigComponentChunkCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$ProjectConfigComponentChunkCtorToJson(this);
  }
}

abstract class _$ProjectConfigComponentChunkCtor
    implements ProjectConfigComponentChunk {
  const factory _$ProjectConfigComponentChunkCtor(
          {@required ProjectConfigComponentChunkType type,
          @required String entryPoint,
          @JsonKey(defaultValue: null) @nullable String baseUrl}) =
      _$_$ProjectConfigComponentChunkCtor;

  factory _$ProjectConfigComponentChunkCtor.fromJson(
      Map<String, dynamic> json) = _$_$ProjectConfigComponentChunkCtor.fromJson;

  @override
  ProjectConfigComponentChunkType get type;
  @override
  String get entryPoint;
  @override
  @JsonKey(defaultValue: null)
  @nullable
  String get baseUrl;
  @override
  @JsonKey(ignore: true)
  _$$ProjectConfigComponentChunkCtorCopyWith<_$ProjectConfigComponentChunkCtor>
      get copyWith;
}
