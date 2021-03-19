// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'projectConfigComponent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProjectConfigComponent _$ProjectConfigComponentFromJson(
    Map<String, dynamic> json) {
  return _$ProjectConfigComponentCtor.fromJson(json);
}

/// @nodoc
class _$ProjectConfigComponentTearOff {
  const _$ProjectConfigComponentTearOff();

// ignore: unused_element
  _$ProjectConfigComponentCtor call(
      {@required String name,
      @required List<ProjectConfigComponentChunk> chunks}) {
    return _$ProjectConfigComponentCtor(
      name: name,
      chunks: chunks,
    );
  }

// ignore: unused_element
  ProjectConfigComponent fromJson(Map<String, Object> json) {
    return ProjectConfigComponent.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProjectConfigComponent = _$ProjectConfigComponentTearOff();

/// @nodoc
mixin _$ProjectConfigComponent {
  String get name;
  List<ProjectConfigComponentChunk> get chunks;

  Map<String, dynamic> toJson();
  $ProjectConfigComponentCopyWith<ProjectConfigComponent> get copyWith;
}

/// @nodoc
abstract class $ProjectConfigComponentCopyWith<$Res> {
  factory $ProjectConfigComponentCopyWith(ProjectConfigComponent value,
          $Res Function(ProjectConfigComponent) then) =
      _$ProjectConfigComponentCopyWithImpl<$Res>;
  $Res call({String name, List<ProjectConfigComponentChunk> chunks});
}

/// @nodoc
class _$ProjectConfigComponentCopyWithImpl<$Res>
    implements $ProjectConfigComponentCopyWith<$Res> {
  _$ProjectConfigComponentCopyWithImpl(this._value, this._then);

  final ProjectConfigComponent _value;
  // ignore: unused_field
  final $Res Function(ProjectConfigComponent) _then;

  @override
  $Res call({
    Object name = freezed,
    Object chunks = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      chunks: chunks == freezed
          ? _value.chunks
          : chunks as List<ProjectConfigComponentChunk>,
    ));
  }
}

/// @nodoc
abstract class _$$ProjectConfigComponentCtorCopyWith<$Res>
    implements $ProjectConfigComponentCopyWith<$Res> {
  factory _$$ProjectConfigComponentCtorCopyWith(
          _$ProjectConfigComponentCtor value,
          $Res Function(_$ProjectConfigComponentCtor) then) =
      __$$ProjectConfigComponentCtorCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<ProjectConfigComponentChunk> chunks});
}

/// @nodoc
class __$$ProjectConfigComponentCtorCopyWithImpl<$Res>
    extends _$ProjectConfigComponentCopyWithImpl<$Res>
    implements _$$ProjectConfigComponentCtorCopyWith<$Res> {
  __$$ProjectConfigComponentCtorCopyWithImpl(
      _$ProjectConfigComponentCtor _value,
      $Res Function(_$ProjectConfigComponentCtor) _then)
      : super(_value, (v) => _then(v as _$ProjectConfigComponentCtor));

  @override
  _$ProjectConfigComponentCtor get _value =>
      super._value as _$ProjectConfigComponentCtor;

  @override
  $Res call({
    Object name = freezed,
    Object chunks = freezed,
  }) {
    return _then(_$ProjectConfigComponentCtor(
      name: name == freezed ? _value.name : name as String,
      chunks: chunks == freezed
          ? _value.chunks
          : chunks as List<ProjectConfigComponentChunk>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$ProjectConfigComponentCtor implements _$ProjectConfigComponentCtor {
  const _$_$ProjectConfigComponentCtor(
      {@required this.name, @required this.chunks})
      : assert(name != null),
        assert(chunks != null);

  factory _$_$ProjectConfigComponentCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$ProjectConfigComponentCtorFromJson(json);

  @override
  final String name;
  @override
  final List<ProjectConfigComponentChunk> chunks;

  @override
  String toString() {
    return 'ProjectConfigComponent(name: $name, chunks: $chunks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ProjectConfigComponentCtor &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.chunks, chunks) ||
                const DeepCollectionEquality().equals(other.chunks, chunks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(chunks);

  @override
  _$$ProjectConfigComponentCtorCopyWith<_$ProjectConfigComponentCtor>
      get copyWith => __$$ProjectConfigComponentCtorCopyWithImpl<
          _$ProjectConfigComponentCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$ProjectConfigComponentCtorToJson(this);
  }
}

abstract class _$ProjectConfigComponentCtor implements ProjectConfigComponent {
  const factory _$ProjectConfigComponentCtor(
          {@required String name,
          @required List<ProjectConfigComponentChunk> chunks}) =
      _$_$ProjectConfigComponentCtor;

  factory _$ProjectConfigComponentCtor.fromJson(Map<String, dynamic> json) =
      _$_$ProjectConfigComponentCtor.fromJson;

  @override
  String get name;
  @override
  List<ProjectConfigComponentChunk> get chunks;
  @override
  _$$ProjectConfigComponentCtorCopyWith<_$ProjectConfigComponentCtor>
      get copyWith;
}
