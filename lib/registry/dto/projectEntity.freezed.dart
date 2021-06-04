// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'projectEntity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectEntity _$ProjectEntityFromJson(Map<String, dynamic> json) {
  return _$ProjectEntityCtor.fromJson(json);
}

/// @nodoc
class _$ProjectEntityTearOff {
  const _$ProjectEntityTearOff();

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

  ProjectEntity fromJson(Map<String, Object> json) {
    return ProjectEntity.fromJson(json);
  }
}

/// @nodoc
const $ProjectEntity = _$ProjectEntityTearOff();

/// @nodoc
mixin _$ProjectEntity {
  String get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get modifiedAt => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get sessionLimit => throw _privateConstructorUsedError;
  int get otaDownloadLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectEntityCopyWith<ProjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEntityCopyWith<$Res> {
  factory $ProjectEntityCopyWith(
          ProjectEntity value, $Res Function(ProjectEntity) then) =
      _$ProjectEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String createdAt,
      String modifiedAt,
      bool isPublic,
      String name,
      String description,
      int sessionLimit,
      int otaDownloadLimit});
}

/// @nodoc
class _$ProjectEntityCopyWithImpl<$Res>
    implements $ProjectEntityCopyWith<$Res> {
  _$ProjectEntityCopyWithImpl(this._value, this._then);

  final ProjectEntity _value;
  // ignore: unused_field
  final $Res Function(ProjectEntity) _then;

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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedAt: modifiedAt == freezed
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sessionLimit: sessionLimit == freezed
          ? _value.sessionLimit
          : sessionLimit // ignore: cast_nullable_to_non_nullable
              as int,
      otaDownloadLimit: otaDownloadLimit == freezed
          ? _value.otaDownloadLimit
          : otaDownloadLimit // ignore: cast_nullable_to_non_nullable
              as int,
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
      {String id,
      String createdAt,
      String modifiedAt,
      bool isPublic,
      String name,
      String description,
      int sessionLimit,
      int otaDownloadLimit});
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedAt: modifiedAt == freezed
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sessionLimit: sessionLimit == freezed
          ? _value.sessionLimit
          : sessionLimit // ignore: cast_nullable_to_non_nullable
              as int,
      otaDownloadLimit: otaDownloadLimit == freezed
          ? _value.otaDownloadLimit
          : otaDownloadLimit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$ProjectEntityCtor implements _$ProjectEntityCtor {
  const _$_$ProjectEntityCtor(
      {required this.id,
      required this.createdAt,
      required this.modifiedAt,
      required this.isPublic,
      required this.name,
      required this.description,
      required this.sessionLimit,
      required this.otaDownloadLimit});

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
  String get id => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  String get modifiedAt => throw _privateConstructorUsedError;
  @override
  bool get isPublic => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  int get sessionLimit => throw _privateConstructorUsedError;
  @override
  int get otaDownloadLimit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ProjectEntityCtorCopyWith<_$ProjectEntityCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
