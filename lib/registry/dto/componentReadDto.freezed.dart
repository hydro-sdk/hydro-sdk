// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'componentReadDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ComponentReadDto _$ComponentReadDtoFromJson(Map<String, dynamic> json) {
  return _$ComponentReadDtoCtor.fromJson(json);
}

/// @nodoc
class _$ComponentReadDtoTearOff {
  const _$ComponentReadDtoTearOff();

// ignore: unused_element
  _$ComponentReadDtoCtor call(
      {@required String id,
      @required String projectId,
      @required int createdAt,
      @required int modifiedAt,
      @required bool isPublic,
      @required String name,
      @required String description,
      @required String deploymentPublishingKey}) {
    return _$ComponentReadDtoCtor(
      id: id,
      projectId: projectId,
      createdAt: createdAt,
      modifiedAt: modifiedAt,
      isPublic: isPublic,
      name: name,
      description: description,
      deploymentPublishingKey: deploymentPublishingKey,
    );
  }

// ignore: unused_element
  ComponentReadDto fromJson(Map<String, Object> json) {
    return ComponentReadDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ComponentReadDto = _$ComponentReadDtoTearOff();

/// @nodoc
mixin _$ComponentReadDto {
  String get id;
  String get projectId;
  int get createdAt;
  int get modifiedAt;
  bool get isPublic;
  String get name;
  String get description;
  String get deploymentPublishingKey;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ComponentReadDtoCopyWith<ComponentReadDto> get copyWith;
}

/// @nodoc
abstract class $ComponentReadDtoCopyWith<$Res> {
  factory $ComponentReadDtoCopyWith(
          ComponentReadDto value, $Res Function(ComponentReadDto) then) =
      _$ComponentReadDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String projectId,
      int createdAt,
      int modifiedAt,
      bool isPublic,
      String name,
      String description,
      String deploymentPublishingKey});
}

/// @nodoc
class _$ComponentReadDtoCopyWithImpl<$Res>
    implements $ComponentReadDtoCopyWith<$Res> {
  _$ComponentReadDtoCopyWithImpl(this._value, this._then);

  final ComponentReadDto _value;
  // ignore: unused_field
  final $Res Function(ComponentReadDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object createdAt = freezed,
    Object modifiedAt = freezed,
    Object isPublic = freezed,
    Object name = freezed,
    Object description = freezed,
    Object deploymentPublishingKey = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      projectId: projectId == freezed ? _value.projectId : projectId as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as int,
      modifiedAt: modifiedAt == freezed ? _value.modifiedAt : modifiedAt as int,
      isPublic: isPublic == freezed ? _value.isPublic : isPublic as bool,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      deploymentPublishingKey: deploymentPublishingKey == freezed
          ? _value.deploymentPublishingKey
          : deploymentPublishingKey as String,
    ));
  }
}

/// @nodoc
abstract class _$$ComponentReadDtoCtorCopyWith<$Res>
    implements $ComponentReadDtoCopyWith<$Res> {
  factory _$$ComponentReadDtoCtorCopyWith(_$ComponentReadDtoCtor value,
          $Res Function(_$ComponentReadDtoCtor) then) =
      __$$ComponentReadDtoCtorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String projectId,
      int createdAt,
      int modifiedAt,
      bool isPublic,
      String name,
      String description,
      String deploymentPublishingKey});
}

/// @nodoc
class __$$ComponentReadDtoCtorCopyWithImpl<$Res>
    extends _$ComponentReadDtoCopyWithImpl<$Res>
    implements _$$ComponentReadDtoCtorCopyWith<$Res> {
  __$$ComponentReadDtoCtorCopyWithImpl(_$ComponentReadDtoCtor _value,
      $Res Function(_$ComponentReadDtoCtor) _then)
      : super(_value, (v) => _then(v as _$ComponentReadDtoCtor));

  @override
  _$ComponentReadDtoCtor get _value => super._value as _$ComponentReadDtoCtor;

  @override
  $Res call({
    Object id = freezed,
    Object projectId = freezed,
    Object createdAt = freezed,
    Object modifiedAt = freezed,
    Object isPublic = freezed,
    Object name = freezed,
    Object description = freezed,
    Object deploymentPublishingKey = freezed,
  }) {
    return _then(_$ComponentReadDtoCtor(
      id: id == freezed ? _value.id : id as String,
      projectId: projectId == freezed ? _value.projectId : projectId as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as int,
      modifiedAt: modifiedAt == freezed ? _value.modifiedAt : modifiedAt as int,
      isPublic: isPublic == freezed ? _value.isPublic : isPublic as bool,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      deploymentPublishingKey: deploymentPublishingKey == freezed
          ? _value.deploymentPublishingKey
          : deploymentPublishingKey as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$ComponentReadDtoCtor implements _$ComponentReadDtoCtor {
  const _$_$ComponentReadDtoCtor(
      {@required this.id,
      @required this.projectId,
      @required this.createdAt,
      @required this.modifiedAt,
      @required this.isPublic,
      @required this.name,
      @required this.description,
      @required this.deploymentPublishingKey})
      : assert(id != null),
        assert(projectId != null),
        assert(createdAt != null),
        assert(modifiedAt != null),
        assert(isPublic != null),
        assert(name != null),
        assert(description != null),
        assert(deploymentPublishingKey != null);

  factory _$_$ComponentReadDtoCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$ComponentReadDtoCtorFromJson(json);

  @override
  final String id;
  @override
  final String projectId;
  @override
  final int createdAt;
  @override
  final int modifiedAt;
  @override
  final bool isPublic;
  @override
  final String name;
  @override
  final String description;
  @override
  final String deploymentPublishingKey;

  @override
  String toString() {
    return 'ComponentReadDto(id: $id, projectId: $projectId, createdAt: $createdAt, modifiedAt: $modifiedAt, isPublic: $isPublic, name: $name, description: $description, deploymentPublishingKey: $deploymentPublishingKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ComponentReadDtoCtor &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.modifiedAt, modifiedAt) ||
                const DeepCollectionEquality()
                    .equals(other.modifiedAt, modifiedAt)) &&
            (identical(other.isPublic, isPublic) ||
                const DeepCollectionEquality()
                    .equals(other.isPublic, isPublic)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(
                    other.deploymentPublishingKey, deploymentPublishingKey) ||
                const DeepCollectionEquality().equals(
                    other.deploymentPublishingKey, deploymentPublishingKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(modifiedAt) ^
      const DeepCollectionEquality().hash(isPublic) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(deploymentPublishingKey);

  @JsonKey(ignore: true)
  @override
  _$$ComponentReadDtoCtorCopyWith<_$ComponentReadDtoCtor> get copyWith =>
      __$$ComponentReadDtoCtorCopyWithImpl<_$ComponentReadDtoCtor>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$ComponentReadDtoCtorToJson(this);
  }
}

abstract class _$ComponentReadDtoCtor implements ComponentReadDto {
  const factory _$ComponentReadDtoCtor(
      {@required String id,
      @required String projectId,
      @required int createdAt,
      @required int modifiedAt,
      @required bool isPublic,
      @required String name,
      @required String description,
      @required String deploymentPublishingKey}) = _$_$ComponentReadDtoCtor;

  factory _$ComponentReadDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$ComponentReadDtoCtor.fromJson;

  @override
  String get id;
  @override
  String get projectId;
  @override
  int get createdAt;
  @override
  int get modifiedAt;
  @override
  bool get isPublic;
  @override
  String get name;
  @override
  String get description;
  @override
  String get deploymentPublishingKey;
  @override
  @JsonKey(ignore: true)
  _$$ComponentReadDtoCtorCopyWith<_$ComponentReadDtoCtor> get copyWith;
}
