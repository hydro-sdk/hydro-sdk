// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'projectReadDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProjectReadDto _$ProjectReadDtoFromJson(Map<String, dynamic> json) {
  return _$ProjectReadDtoCtor.fromJson(json);
}

/// @nodoc
class _$ProjectReadDtoTearOff {
  const _$ProjectReadDtoTearOff();

// ignore: unused_element
  _$ProjectReadDtoCtor call(
      {@required String id,
      @required String createdAt,
      @required String modifiedAt,
      @required bool isPublic,
      @required String name,
      @required String description,
      @required int sessionLimit,
      @required int otaDownloadLimit}) {
    return _$ProjectReadDtoCtor(
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
  ProjectReadDto fromJson(Map<String, Object> json) {
    return ProjectReadDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProjectReadDto = _$ProjectReadDtoTearOff();

/// @nodoc
mixin _$ProjectReadDto {
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
  $ProjectReadDtoCopyWith<ProjectReadDto> get copyWith;
}

/// @nodoc
abstract class $ProjectReadDtoCopyWith<$Res> {
  factory $ProjectReadDtoCopyWith(
          ProjectReadDto value, $Res Function(ProjectReadDto) then) =
      _$ProjectReadDtoCopyWithImpl<$Res>;
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
class _$ProjectReadDtoCopyWithImpl<$Res>
    implements $ProjectReadDtoCopyWith<$Res> {
  _$ProjectReadDtoCopyWithImpl(this._value, this._then);

  final ProjectReadDto _value;
  // ignore: unused_field
  final $Res Function(ProjectReadDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object createdAt = freezed,
    Object modifiedAt = freezed,
    Object isPublic = freezed,
    Object name = freezed,
    Object description = freezed,
    Object sessionLimit = freezed,
    Object otaDownloadLimit = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      modifiedAt:
          modifiedAt == freezed ? _value.modifiedAt : modifiedAt as String,
      isPublic: isPublic == freezed ? _value.isPublic : isPublic as bool,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      sessionLimit:
          sessionLimit == freezed ? _value.sessionLimit : sessionLimit as int,
      otaDownloadLimit: otaDownloadLimit == freezed
          ? _value.otaDownloadLimit
          : otaDownloadLimit as int,
    ));
  }
}

/// @nodoc
abstract class _$$ProjectReadDtoCtorCopyWith<$Res>
    implements $ProjectReadDtoCopyWith<$Res> {
  factory _$$ProjectReadDtoCtorCopyWith(_$ProjectReadDtoCtor value,
          $Res Function(_$ProjectReadDtoCtor) then) =
      __$$ProjectReadDtoCtorCopyWithImpl<$Res>;
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
class __$$ProjectReadDtoCtorCopyWithImpl<$Res>
    extends _$ProjectReadDtoCopyWithImpl<$Res>
    implements _$$ProjectReadDtoCtorCopyWith<$Res> {
  __$$ProjectReadDtoCtorCopyWithImpl(
      _$ProjectReadDtoCtor _value, $Res Function(_$ProjectReadDtoCtor) _then)
      : super(_value, (v) => _then(v as _$ProjectReadDtoCtor));

  @override
  _$ProjectReadDtoCtor get _value => super._value as _$ProjectReadDtoCtor;

  @override
  $Res call({
    Object id = freezed,
    Object createdAt = freezed,
    Object modifiedAt = freezed,
    Object isPublic = freezed,
    Object name = freezed,
    Object description = freezed,
    Object sessionLimit = freezed,
    Object otaDownloadLimit = freezed,
  }) {
    return _then(_$ProjectReadDtoCtor(
      id: id == freezed ? _value.id : id as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      modifiedAt:
          modifiedAt == freezed ? _value.modifiedAt : modifiedAt as String,
      isPublic: isPublic == freezed ? _value.isPublic : isPublic as bool,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      sessionLimit:
          sessionLimit == freezed ? _value.sessionLimit : sessionLimit as int,
      otaDownloadLimit: otaDownloadLimit == freezed
          ? _value.otaDownloadLimit
          : otaDownloadLimit as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$ProjectReadDtoCtor implements _$ProjectReadDtoCtor {
  const _$_$ProjectReadDtoCtor(
      {@required this.id,
      @required this.createdAt,
      @required this.modifiedAt,
      @required this.isPublic,
      @required this.name,
      @required this.description,
      @required this.sessionLimit,
      @required this.otaDownloadLimit})
      : assert(id != null),
        assert(createdAt != null),
        assert(modifiedAt != null),
        assert(isPublic != null),
        assert(name != null),
        assert(description != null),
        assert(sessionLimit != null),
        assert(otaDownloadLimit != null);

  factory _$_$ProjectReadDtoCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$ProjectReadDtoCtorFromJson(json);

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
    return 'ProjectReadDto(id: $id, createdAt: $createdAt, modifiedAt: $modifiedAt, isPublic: $isPublic, name: $name, description: $description, sessionLimit: $sessionLimit, otaDownloadLimit: $otaDownloadLimit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ProjectReadDtoCtor &&
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
  _$$ProjectReadDtoCtorCopyWith<_$ProjectReadDtoCtor> get copyWith =>
      __$$ProjectReadDtoCtorCopyWithImpl<_$ProjectReadDtoCtor>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$ProjectReadDtoCtorToJson(this);
  }
}

abstract class _$ProjectReadDtoCtor implements ProjectReadDto {
  const factory _$ProjectReadDtoCtor(
      {@required String id,
      @required String createdAt,
      @required String modifiedAt,
      @required bool isPublic,
      @required String name,
      @required String description,
      @required int sessionLimit,
      @required int otaDownloadLimit}) = _$_$ProjectReadDtoCtor;

  factory _$ProjectReadDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$ProjectReadDtoCtor.fromJson;

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
  _$$ProjectReadDtoCtorCopyWith<_$ProjectReadDtoCtor> get copyWith;
}
