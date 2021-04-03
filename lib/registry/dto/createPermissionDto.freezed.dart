// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'createPermissionDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CreatePermissionDto _$CreatePermissionDtoFromJson(Map<String, dynamic> json) {
  return _$CreatePermissionDtoCtor.fromJson(json);
}

/// @nodoc
class _$CreatePermissionDtoTearOff {
  const _$CreatePermissionDtoTearOff();

// ignore: unused_element
  _$CreatePermissionDtoCtor call(
      {@required String manageeId,
      @required String managerId,
      @required bool canUpdate,
      @required bool canDelete,
      @required bool canAddToCollection,
      @required bool canRemoveFromCollection}) {
    return _$CreatePermissionDtoCtor(
      manageeId: manageeId,
      managerId: managerId,
      canUpdate: canUpdate,
      canDelete: canDelete,
      canAddToCollection: canAddToCollection,
      canRemoveFromCollection: canRemoveFromCollection,
    );
  }

// ignore: unused_element
  CreatePermissionDto fromJson(Map<String, Object> json) {
    return CreatePermissionDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CreatePermissionDto = _$CreatePermissionDtoTearOff();

/// @nodoc
mixin _$CreatePermissionDto {
  String get manageeId;
  String get managerId;
  bool get canUpdate;
  bool get canDelete;
  bool get canAddToCollection;
  bool get canRemoveFromCollection;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CreatePermissionDtoCopyWith<CreatePermissionDto> get copyWith;
}

/// @nodoc
abstract class $CreatePermissionDtoCopyWith<$Res> {
  factory $CreatePermissionDtoCopyWith(
          CreatePermissionDto value, $Res Function(CreatePermissionDto) then) =
      _$CreatePermissionDtoCopyWithImpl<$Res>;
  $Res call(
      {String manageeId,
      String managerId,
      bool canUpdate,
      bool canDelete,
      bool canAddToCollection,
      bool canRemoveFromCollection});
}

/// @nodoc
class _$CreatePermissionDtoCopyWithImpl<$Res>
    implements $CreatePermissionDtoCopyWith<$Res> {
  _$CreatePermissionDtoCopyWithImpl(this._value, this._then);

  final CreatePermissionDto _value;
  // ignore: unused_field
  final $Res Function(CreatePermissionDto) _then;

  @override
  $Res call({
    Object manageeId = freezed,
    Object managerId = freezed,
    Object canUpdate = freezed,
    Object canDelete = freezed,
    Object canAddToCollection = freezed,
    Object canRemoveFromCollection = freezed,
  }) {
    return _then(_value.copyWith(
      manageeId: manageeId == freezed ? _value.manageeId : manageeId as String,
      managerId: managerId == freezed ? _value.managerId : managerId as String,
      canUpdate: canUpdate == freezed ? _value.canUpdate : canUpdate as bool,
      canDelete: canDelete == freezed ? _value.canDelete : canDelete as bool,
      canAddToCollection: canAddToCollection == freezed
          ? _value.canAddToCollection
          : canAddToCollection as bool,
      canRemoveFromCollection: canRemoveFromCollection == freezed
          ? _value.canRemoveFromCollection
          : canRemoveFromCollection as bool,
    ));
  }
}

/// @nodoc
abstract class _$$CreatePermissionDtoCtorCopyWith<$Res>
    implements $CreatePermissionDtoCopyWith<$Res> {
  factory _$$CreatePermissionDtoCtorCopyWith(_$CreatePermissionDtoCtor value,
          $Res Function(_$CreatePermissionDtoCtor) then) =
      __$$CreatePermissionDtoCtorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String manageeId,
      String managerId,
      bool canUpdate,
      bool canDelete,
      bool canAddToCollection,
      bool canRemoveFromCollection});
}

/// @nodoc
class __$$CreatePermissionDtoCtorCopyWithImpl<$Res>
    extends _$CreatePermissionDtoCopyWithImpl<$Res>
    implements _$$CreatePermissionDtoCtorCopyWith<$Res> {
  __$$CreatePermissionDtoCtorCopyWithImpl(_$CreatePermissionDtoCtor _value,
      $Res Function(_$CreatePermissionDtoCtor) _then)
      : super(_value, (v) => _then(v as _$CreatePermissionDtoCtor));

  @override
  _$CreatePermissionDtoCtor get _value =>
      super._value as _$CreatePermissionDtoCtor;

  @override
  $Res call({
    Object manageeId = freezed,
    Object managerId = freezed,
    Object canUpdate = freezed,
    Object canDelete = freezed,
    Object canAddToCollection = freezed,
    Object canRemoveFromCollection = freezed,
  }) {
    return _then(_$CreatePermissionDtoCtor(
      manageeId: manageeId == freezed ? _value.manageeId : manageeId as String,
      managerId: managerId == freezed ? _value.managerId : managerId as String,
      canUpdate: canUpdate == freezed ? _value.canUpdate : canUpdate as bool,
      canDelete: canDelete == freezed ? _value.canDelete : canDelete as bool,
      canAddToCollection: canAddToCollection == freezed
          ? _value.canAddToCollection
          : canAddToCollection as bool,
      canRemoveFromCollection: canRemoveFromCollection == freezed
          ? _value.canRemoveFromCollection
          : canRemoveFromCollection as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$CreatePermissionDtoCtor implements _$CreatePermissionDtoCtor {
  const _$_$CreatePermissionDtoCtor(
      {@required this.manageeId,
      @required this.managerId,
      @required this.canUpdate,
      @required this.canDelete,
      @required this.canAddToCollection,
      @required this.canRemoveFromCollection})
      : assert(manageeId != null),
        assert(managerId != null),
        assert(canUpdate != null),
        assert(canDelete != null),
        assert(canAddToCollection != null),
        assert(canRemoveFromCollection != null);

  factory _$_$CreatePermissionDtoCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$CreatePermissionDtoCtorFromJson(json);

  @override
  final String manageeId;
  @override
  final String managerId;
  @override
  final bool canUpdate;
  @override
  final bool canDelete;
  @override
  final bool canAddToCollection;
  @override
  final bool canRemoveFromCollection;

  @override
  String toString() {
    return 'CreatePermissionDto(manageeId: $manageeId, managerId: $managerId, canUpdate: $canUpdate, canDelete: $canDelete, canAddToCollection: $canAddToCollection, canRemoveFromCollection: $canRemoveFromCollection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreatePermissionDtoCtor &&
            (identical(other.manageeId, manageeId) ||
                const DeepCollectionEquality()
                    .equals(other.manageeId, manageeId)) &&
            (identical(other.managerId, managerId) ||
                const DeepCollectionEquality()
                    .equals(other.managerId, managerId)) &&
            (identical(other.canUpdate, canUpdate) ||
                const DeepCollectionEquality()
                    .equals(other.canUpdate, canUpdate)) &&
            (identical(other.canDelete, canDelete) ||
                const DeepCollectionEquality()
                    .equals(other.canDelete, canDelete)) &&
            (identical(other.canAddToCollection, canAddToCollection) ||
                const DeepCollectionEquality()
                    .equals(other.canAddToCollection, canAddToCollection)) &&
            (identical(
                    other.canRemoveFromCollection, canRemoveFromCollection) ||
                const DeepCollectionEquality().equals(
                    other.canRemoveFromCollection, canRemoveFromCollection)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(manageeId) ^
      const DeepCollectionEquality().hash(managerId) ^
      const DeepCollectionEquality().hash(canUpdate) ^
      const DeepCollectionEquality().hash(canDelete) ^
      const DeepCollectionEquality().hash(canAddToCollection) ^
      const DeepCollectionEquality().hash(canRemoveFromCollection);

  @JsonKey(ignore: true)
  @override
  _$$CreatePermissionDtoCtorCopyWith<_$CreatePermissionDtoCtor> get copyWith =>
      __$$CreatePermissionDtoCtorCopyWithImpl<_$CreatePermissionDtoCtor>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreatePermissionDtoCtorToJson(this);
  }
}

abstract class _$CreatePermissionDtoCtor implements CreatePermissionDto {
  const factory _$CreatePermissionDtoCtor(
      {@required String manageeId,
      @required String managerId,
      @required bool canUpdate,
      @required bool canDelete,
      @required bool canAddToCollection,
      @required bool canRemoveFromCollection}) = _$_$CreatePermissionDtoCtor;

  factory _$CreatePermissionDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$CreatePermissionDtoCtor.fromJson;

  @override
  String get manageeId;
  @override
  String get managerId;
  @override
  bool get canUpdate;
  @override
  bool get canDelete;
  @override
  bool get canAddToCollection;
  @override
  bool get canRemoveFromCollection;
  @override
  @JsonKey(ignore: true)
  _$$CreatePermissionDtoCtorCopyWith<_$CreatePermissionDtoCtor> get copyWith;
}
