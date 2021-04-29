// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'releaseChannelReadDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ReleaseChannelReadDto _$ReleaseChannelReadDtoFromJson(
    Map<String, dynamic> json) {
  return _$ReleaseChannelReadDtoCtor.fromJson(json);
}

/// @nodoc
class _$ReleaseChannelReadDtoTearOff {
  const _$ReleaseChannelReadDtoTearOff();

// ignore: unused_element
  _$ReleaseChannelReadDtoCtor call(
      {@required String id,
      @required String componentId,
      @required String createdAt,
      @required bool isPublic,
      @required String name,
      @required String description,
      @required String currentPackageId}) {
    return _$ReleaseChannelReadDtoCtor(
      id: id,
      componentId: componentId,
      createdAt: createdAt,
      isPublic: isPublic,
      name: name,
      description: description,
      currentPackageId: currentPackageId,
    );
  }

// ignore: unused_element
  ReleaseChannelReadDto fromJson(Map<String, Object> json) {
    return ReleaseChannelReadDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ReleaseChannelReadDto = _$ReleaseChannelReadDtoTearOff();

/// @nodoc
mixin _$ReleaseChannelReadDto {
  String get id;
  String get componentId;
  String get createdAt;
  bool get isPublic;
  String get name;
  String get description;
  String get currentPackageId;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ReleaseChannelReadDtoCopyWith<ReleaseChannelReadDto> get copyWith;
}

/// @nodoc
abstract class $ReleaseChannelReadDtoCopyWith<$Res> {
  factory $ReleaseChannelReadDtoCopyWith(ReleaseChannelReadDto value,
          $Res Function(ReleaseChannelReadDto) then) =
      _$ReleaseChannelReadDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String componentId,
      String createdAt,
      bool isPublic,
      String name,
      String description,
      String currentPackageId});
}

/// @nodoc
class _$ReleaseChannelReadDtoCopyWithImpl<$Res>
    implements $ReleaseChannelReadDtoCopyWith<$Res> {
  _$ReleaseChannelReadDtoCopyWithImpl(this._value, this._then);

  final ReleaseChannelReadDto _value;
  // ignore: unused_field
  final $Res Function(ReleaseChannelReadDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object componentId = freezed,
    Object createdAt = freezed,
    Object isPublic = freezed,
    Object name = freezed,
    Object description = freezed,
    Object currentPackageId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      componentId:
          componentId == freezed ? _value.componentId : componentId as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      isPublic: isPublic == freezed ? _value.isPublic : isPublic as bool,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      currentPackageId: currentPackageId == freezed
          ? _value.currentPackageId
          : currentPackageId as String,
    ));
  }
}

/// @nodoc
abstract class _$$ReleaseChannelReadDtoCtorCopyWith<$Res>
    implements $ReleaseChannelReadDtoCopyWith<$Res> {
  factory _$$ReleaseChannelReadDtoCtorCopyWith(
          _$ReleaseChannelReadDtoCtor value,
          $Res Function(_$ReleaseChannelReadDtoCtor) then) =
      __$$ReleaseChannelReadDtoCtorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String componentId,
      String createdAt,
      bool isPublic,
      String name,
      String description,
      String currentPackageId});
}

/// @nodoc
class __$$ReleaseChannelReadDtoCtorCopyWithImpl<$Res>
    extends _$ReleaseChannelReadDtoCopyWithImpl<$Res>
    implements _$$ReleaseChannelReadDtoCtorCopyWith<$Res> {
  __$$ReleaseChannelReadDtoCtorCopyWithImpl(_$ReleaseChannelReadDtoCtor _value,
      $Res Function(_$ReleaseChannelReadDtoCtor) _then)
      : super(_value, (v) => _then(v as _$ReleaseChannelReadDtoCtor));

  @override
  _$ReleaseChannelReadDtoCtor get _value =>
      super._value as _$ReleaseChannelReadDtoCtor;

  @override
  $Res call({
    Object id = freezed,
    Object componentId = freezed,
    Object createdAt = freezed,
    Object isPublic = freezed,
    Object name = freezed,
    Object description = freezed,
    Object currentPackageId = freezed,
  }) {
    return _then(_$ReleaseChannelReadDtoCtor(
      id: id == freezed ? _value.id : id as String,
      componentId:
          componentId == freezed ? _value.componentId : componentId as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      isPublic: isPublic == freezed ? _value.isPublic : isPublic as bool,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      currentPackageId: currentPackageId == freezed
          ? _value.currentPackageId
          : currentPackageId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$ReleaseChannelReadDtoCtor implements _$ReleaseChannelReadDtoCtor {
  const _$_$ReleaseChannelReadDtoCtor(
      {@required this.id,
      @required this.componentId,
      @required this.createdAt,
      @required this.isPublic,
      @required this.name,
      @required this.description,
      @required this.currentPackageId})
      : assert(id != null),
        assert(componentId != null),
        assert(createdAt != null),
        assert(isPublic != null),
        assert(name != null),
        assert(description != null),
        assert(currentPackageId != null);

  factory _$_$ReleaseChannelReadDtoCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$ReleaseChannelReadDtoCtorFromJson(json);

  @override
  final String id;
  @override
  final String componentId;
  @override
  final String createdAt;
  @override
  final bool isPublic;
  @override
  final String name;
  @override
  final String description;
  @override
  final String currentPackageId;

  @override
  String toString() {
    return 'ReleaseChannelReadDto(id: $id, componentId: $componentId, createdAt: $createdAt, isPublic: $isPublic, name: $name, description: $description, currentPackageId: $currentPackageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ReleaseChannelReadDtoCtor &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.componentId, componentId) ||
                const DeepCollectionEquality()
                    .equals(other.componentId, componentId)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.isPublic, isPublic) ||
                const DeepCollectionEquality()
                    .equals(other.isPublic, isPublic)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.currentPackageId, currentPackageId) ||
                const DeepCollectionEquality()
                    .equals(other.currentPackageId, currentPackageId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(componentId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(isPublic) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(currentPackageId);

  @JsonKey(ignore: true)
  @override
  _$$ReleaseChannelReadDtoCtorCopyWith<_$ReleaseChannelReadDtoCtor>
      get copyWith => __$$ReleaseChannelReadDtoCtorCopyWithImpl<
          _$ReleaseChannelReadDtoCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$ReleaseChannelReadDtoCtorToJson(this);
  }
}

abstract class _$ReleaseChannelReadDtoCtor implements ReleaseChannelReadDto {
  const factory _$ReleaseChannelReadDtoCtor(
      {@required String id,
      @required String componentId,
      @required String createdAt,
      @required bool isPublic,
      @required String name,
      @required String description,
      @required String currentPackageId}) = _$_$ReleaseChannelReadDtoCtor;

  factory _$ReleaseChannelReadDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$ReleaseChannelReadDtoCtor.fromJson;

  @override
  String get id;
  @override
  String get componentId;
  @override
  String get createdAt;
  @override
  bool get isPublic;
  @override
  String get name;
  @override
  String get description;
  @override
  String get currentPackageId;
  @override
  @JsonKey(ignore: true)
  _$$ReleaseChannelReadDtoCtorCopyWith<_$ReleaseChannelReadDtoCtor>
      get copyWith;
}
