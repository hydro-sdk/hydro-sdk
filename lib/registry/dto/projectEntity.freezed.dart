// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'projectEntity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProjectEntity _$ProjectEntityFromJson(Map<String, dynamic> json) {
  return _$ProjectEntityCtor.fromJson(json);
}

/// @nodoc
class _$ProjectEntityTearOff {
  const _$ProjectEntityTearOff();

// ignore: unused_element
  _$ProjectEntityCtor call(
      {required String id,
      required String createdAt,
      required String modifiedAt,
      required bool isPublic,
      required String name,
      required String description,
      required int sessionLimit,
      required int otaDownloadLimit}) {
    return _$ProjectEntityCtor(
      id: id,
      createdAt: createdAt,
      modifiedAt: modifiedAt,
      isPublic: isPublic,
      name: name,
      description: description,
      sessionLimit: sessionLimit,
      otaDownloadLimit: otaDownloadLimit,
    );
  }

// ignore: unused_element
  ProjectEntity fromJson(Map<String, Object> json) {
    return ProjectEntity.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProjectEntity = _$ProjectEntityTearOff();

/// @nodoc
mixin _$ProjectEntity {
  String get id;
  String get createdAt;
  String get modifiedAt;
  bool get isPublic;
  String get name;
  String get description;
  int get sessionLimit;
  int get otaDownloadLimit;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProjectEntityCopyWith<ProjectEntity> get copyWith;
}

/// @nodoc
abstract class $ProjectEntityCopyWith<$Res> {
  factory $ProjectEntityCopyWith(
          ProjectEntity value, $Res Function(ProjectEntity) then) =
      _$ProjectEntityCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? createdAt,
      String? modifiedAt,
      bool? isPublic,
      String? name,
      String? description,
      int? sessionLimit,
      int? otaDownloadLimit});
}

/// @nodoc
class _$ProjectEntityCopyWithImpl<$Res>
    implements $ProjectEntityCopyWith<$Res> {
  _$ProjectEntityCopyWithImpl(this._value, this._then);

  final ProjectEntity _value;
  // ignore: unused_field
  final $Res Function(ProjectEntity?) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? modifiedAt = freezed,
    Object? isPublic = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? sessionLimit = freezed,
    Object? otaDownloadLimit = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String?,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String?,
      modifiedAt:
          modifiedAt == freezed ? _value.modifiedAt : modifiedAt as String?,
      isPublic: isPublic == freezed ? _value.isPublic : isPublic as bool?,
      name: name == freezed ? _value.name : name as String?,
      description:
          description == freezed ? _value.description : description as String?,
      sessionLimit:
          sessionLimit == freezed ? _value.sessionLimit : sessionLimit as int?,
      otaDownloadLimit: otaDownloadLimit == freezed
          ? _value.otaDownloadLimit
          : otaDownloadLimit as int?,
    ));
  }
}

/// @nodoc
abstract class _$$ProjectEntityCtorCopyWith<$Res>
    implements $ProjectEntityCopyWith<$Res> {
  factory _$$ProjectEntityCtorCopyWith(
          _$ProjectEntityCtor value, $Res Function(_$ProjectEntityCtor) then) =
      __$$ProjectEntityCtorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? createdAt,
      String? modifiedAt,
      bool? isPublic,
      String? name,
      String? description,
      int? sessionLimit,
      int? otaDownloadLimit});
}

/// @nodoc
class __$$ProjectEntityCtorCopyWithImpl<$Res>
    extends _$ProjectEntityCopyWithImpl<$Res>
    implements _$$ProjectEntityCtorCopyWith<$Res> {
  __$$ProjectEntityCtorCopyWithImpl(
      _$ProjectEntityCtor _value, $Res Function(_$ProjectEntityCtor) _then)
      : super(_value, (v) => _then(v as _$ProjectEntityCtor));

  @override
  _$ProjectEntityCtor get _value => super._value as _$ProjectEntityCtor;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? modifiedAt = freezed,
    Object? isPublic = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? sessionLimit = freezed,
    Object? otaDownloadLimit = freezed,
  }) {
    return _then(_$ProjectEntityCtor(
      id: id == freezed ? _value.id : (id as String?)!,
      createdAt: createdAt == freezed ? _value.createdAt : (createdAt as String?)!,
      modifiedAt:
          modifiedAt == freezed ? _value.modifiedAt : (modifiedAt as String?)!,
      isPublic: isPublic == freezed ? _value.isPublic : (isPublic as bool?)!,
      name: name == freezed ? _value.name : (name as String?)!,
      description:
          description == freezed ? _value.description : (description as String?)!,
      sessionLimit:
          sessionLimit == freezed ? _value.sessionLimit : (sessionLimit as int?)!,
      otaDownloadLimit: otaDownloadLimit == freezed
          ? _value.otaDownloadLimit
          : (otaDownloadLimit as int?)!,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$ProjectEntityCtor implements _$ProjectEntityCtor {
  const _$_$ProjectEntityCtor(
      {required this.id,
      required this.createdAt,
      required this.modifiedAt,
      required this.isPublic,
      required this.name,
      required this.description,
      required this.sessionLimit,
      required this.otaDownloadLimit})
      : assert(id != null),
        assert(createdAt != null),
        assert(modifiedAt != null),
        assert(isPublic != null),
        assert(name != null),
        assert(description != null),
        assert(sessionLimit != null),
        assert(otaDownloadLimit != null);

  factory _$_$ProjectEntityCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$ProjectEntityCtorFromJson(json);

  @override
  final String id;
  @override
  final String createdAt;
  @override
  final String modifiedAt;
  @override
  final bool isPublic;
  @override
  final String name;
  @override
  final String description;
  @override
  final int sessionLimit;
  @override
  final int otaDownloadLimit;

  @override
  String toString() {
    return 'ProjectEntity(id: $id, createdAt: $createdAt, modifiedAt: $modifiedAt, isPublic: $isPublic, name: $name, description: $description, sessionLimit: $sessionLimit, otaDownloadLimit: $otaDownloadLimit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ProjectEntityCtor &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
            (identical(other.sessionLimit, sessionLimit) ||
                const DeepCollectionEquality()
                    .equals(other.sessionLimit, sessionLimit)) &&
            (identical(other.otaDownloadLimit, otaDownloadLimit) ||
                const DeepCollectionEquality()
                    .equals(other.otaDownloadLimit, otaDownloadLimit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(modifiedAt) ^
      const DeepCollectionEquality().hash(isPublic) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(sessionLimit) ^
      const DeepCollectionEquality().hash(otaDownloadLimit);

  @JsonKey(ignore: true)
  @override
  _$$ProjectEntityCtorCopyWith<_$ProjectEntityCtor> get copyWith =>
      __$$ProjectEntityCtorCopyWithImpl<_$ProjectEntityCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$ProjectEntityCtorToJson(this);
  }
}

abstract class _$ProjectEntityCtor implements ProjectEntity {
  const factory _$ProjectEntityCtor(
      {required String id,
      required String createdAt,
      required String modifiedAt,
      required bool isPublic,
      required String name,
      required String description,
      required int sessionLimit,
      required int otaDownloadLimit}) = _$_$ProjectEntityCtor;

  factory _$ProjectEntityCtor.fromJson(Map<String, dynamic> json) =
      _$_$ProjectEntityCtor.fromJson;

  @override
  String get id;
  @override
  String get createdAt;
  @override
  String get modifiedAt;
  @override
  bool get isPublic;
  @override
  String get name;
  @override
  String get description;
  @override
  int get sessionLimit;
  @override
  int get otaDownloadLimit;
  @override
  @JsonKey(ignore: true)
  _$$ProjectEntityCtorCopyWith<_$ProjectEntityCtor> get copyWith;
}
