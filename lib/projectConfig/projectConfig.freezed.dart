// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'projectConfig.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectConfig _$ProjectConfigFromJson(Map<String, dynamic> json) {
  return _$ProjectConfigCtor.fromJson(json);
}

/// @nodoc
class _$ProjectConfigTearOff {
  const _$ProjectConfigTearOff();

  _$ProjectConfigCtor call(
      {required String project,
      required List<ProjectConfigComponent> components}) {
    return _$ProjectConfigCtor(
      project: project,
      components: components,
    );
  }

  ProjectConfig fromJson(Map<String, Object> json) {
    return ProjectConfig.fromJson(json);
  }
}

/// @nodoc
const $ProjectConfig = _$ProjectConfigTearOff();

/// @nodoc
mixin _$ProjectConfig {
  String get project => throw _privateConstructorUsedError;
  List<ProjectConfigComponent> get components =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectConfigCopyWith<ProjectConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectConfigCopyWith<$Res> {
  factory $ProjectConfigCopyWith(
          ProjectConfig value, $Res Function(ProjectConfig) then) =
      _$ProjectConfigCopyWithImpl<$Res>;
  $Res call({String project, List<ProjectConfigComponent> components});
}

/// @nodoc
class _$ProjectConfigCopyWithImpl<$Res>
    implements $ProjectConfigCopyWith<$Res> {
  _$ProjectConfigCopyWithImpl(this._value, this._then);

  final ProjectConfig _value;
  // ignore: unused_field
  final $Res Function(ProjectConfig) _then;

  @override
  $Res call({
    Object? project = freezed,
    Object? components = freezed,
  }) {
    return _then(_value.copyWith(
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      components: components == freezed
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<ProjectConfigComponent>,
    ));
  }
}

/// @nodoc
abstract class _$$ProjectConfigCtorCopyWith<$Res>
    implements $ProjectConfigCopyWith<$Res> {
  factory _$$ProjectConfigCtorCopyWith(
          _$ProjectConfigCtor value, $Res Function(_$ProjectConfigCtor) then) =
      __$$ProjectConfigCtorCopyWithImpl<$Res>;
  @override
  $Res call({String project, List<ProjectConfigComponent> components});
}

/// @nodoc
class __$$ProjectConfigCtorCopyWithImpl<$Res>
    extends _$ProjectConfigCopyWithImpl<$Res>
    implements _$$ProjectConfigCtorCopyWith<$Res> {
  __$$ProjectConfigCtorCopyWithImpl(
      _$ProjectConfigCtor _value, $Res Function(_$ProjectConfigCtor) _then)
      : super(_value, (v) => _then(v as _$ProjectConfigCtor));

  @override
  _$ProjectConfigCtor get _value => super._value as _$ProjectConfigCtor;

  @override
  $Res call({
    Object? project = freezed,
    Object? components = freezed,
  }) {
    return _then(_$ProjectConfigCtor(
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      components: components == freezed
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<ProjectConfigComponent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$ProjectConfigCtor implements _$ProjectConfigCtor {
  const _$_$ProjectConfigCtor(
      {required this.project, required this.components});

  factory _$_$ProjectConfigCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$ProjectConfigCtorFromJson(json);

  @override
  final String project;
  @override
  final List<ProjectConfigComponent> components;

  @override
  String toString() {
    return 'ProjectConfig(project: $project, components: $components)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ProjectConfigCtor &&
            (identical(other.project, project) ||
                const DeepCollectionEquality()
                    .equals(other.project, project)) &&
            (identical(other.components, components) ||
                const DeepCollectionEquality()
                    .equals(other.components, components)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(project) ^
      const DeepCollectionEquality().hash(components);

  @JsonKey(ignore: true)
  @override
  _$$ProjectConfigCtorCopyWith<_$ProjectConfigCtor> get copyWith =>
      __$$ProjectConfigCtorCopyWithImpl<_$ProjectConfigCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$ProjectConfigCtorToJson(this);
  }
}

abstract class _$ProjectConfigCtor implements ProjectConfig {
  const factory _$ProjectConfigCtor(
          {required String project,
          required List<ProjectConfigComponent> components}) =
      _$_$ProjectConfigCtor;

  factory _$ProjectConfigCtor.fromJson(Map<String, dynamic> json) =
      _$_$ProjectConfigCtor.fromJson;

  @override
  String get project => throw _privateConstructorUsedError;
  @override
  List<ProjectConfigComponent> get components =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ProjectConfigCtorCopyWith<_$ProjectConfigCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
