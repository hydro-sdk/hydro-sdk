// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'createPermissionDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatePermissionDto _$CreatePermissionDtoFromJson(Map<String, dynamic> json) {
  return _$CreatePermissionDtoCtor.fromJson(json);
}

/// @nodoc
class _$CreatePermissionDtoTearOff {
  const _$CreatePermissionDtoTearOff();

  _$CreatePermissionDtoCtor call(
      {required String manageeId,
      required String managerId,
      required bool canUpdate,
      required bool canDelete,
      required bool canAddToCollection,
      required bool canRemoveFromCollection}) {
    return _$CreatePermissionDtoCtor(
      manageeId: manageeId,
      managerId: managerId,
      canUpdate: canUpdate,
      canDelete: canDelete,
      canAddToCollection: canAddToCollection,
      canRemoveFromCollection: canRemoveFromCollection,
    );
  }

  CreatePermissionDto fromJson(Map<String, Object> json) {
    return CreatePermissionDto.fromJson(json);
  }
}

/// @nodoc
const $CreatePermissionDto = _$CreatePermissionDtoTearOff();

/// @nodoc
mixin _$CreatePermissionDto {
  String get manageeId => throw _privateConstructorUsedError;
  String get managerId => throw _privateConstructorUsedError;
  bool get canUpdate => throw _privateConstructorUsedError;
  bool get canDelete => throw _privateConstructorUsedError;
  bool get canAddToCollection => throw _privateConstructorUsedError;
  bool get canRemoveFromCollection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePermissionDtoCopyWith<CreatePermissionDto> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? manageeId = freezed,
    Object? managerId = freezed,
    Object? canUpdate = freezed,
    Object? canDelete = freezed,
    Object? canAddToCollection = freezed,
    Object? canRemoveFromCollection = freezed,
  }) {
    return _then(_value.copyWith(
      manageeId: manageeId == freezed
          ? _value.manageeId
          : manageeId // ignore: cast_nullable_to_non_nullable
              as String,
      managerId: managerId == freezed
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String,
      canUpdate: canUpdate == freezed
          ? _value.canUpdate
          : canUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      canDelete: canDelete == freezed
          ? _value.canDelete
          : canDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      canAddToCollection: canAddToCollection == freezed
          ? _value.canAddToCollection
          : canAddToCollection // ignore: cast_nullable_to_non_nullable
              as bool,
      canRemoveFromCollection: canRemoveFromCollection == freezed
          ? _value.canRemoveFromCollection
          : canRemoveFromCollection // ignore: cast_nullable_to_non_nullable
              as bool,
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
    Object? manageeId = freezed,
    Object? managerId = freezed,
    Object? canUpdate = freezed,
    Object? canDelete = freezed,
    Object? canAddToCollection = freezed,
    Object? canRemoveFromCollection = freezed,
  }) {
    return _then(_$CreatePermissionDtoCtor(
      manageeId: manageeId == freezed
          ? _value.manageeId
          : manageeId // ignore: cast_nullable_to_non_nullable
              as String,
      managerId: managerId == freezed
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String,
      canUpdate: canUpdate == freezed
          ? _value.canUpdate
          : canUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      canDelete: canDelete == freezed
          ? _value.canDelete
          : canDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      canAddToCollection: canAddToCollection == freezed
          ? _value.canAddToCollection
          : canAddToCollection // ignore: cast_nullable_to_non_nullable
              as bool,
      canRemoveFromCollection: canRemoveFromCollection == freezed
          ? _value.canRemoveFromCollection
          : canRemoveFromCollection // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CreatePermissionDtoCtor implements _$CreatePermissionDtoCtor {
  const _$_$CreatePermissionDtoCtor(
      {required this.manageeId,
      required this.managerId,
      required this.canUpdate,
      required this.canDelete,
      required this.canAddToCollection,
      required this.canRemoveFromCollection});

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
      {required String manageeId,
      required String managerId,
      required bool canUpdate,
      required bool canDelete,
      required bool canAddToCollection,
      required bool canRemoveFromCollection}) = _$_$CreatePermissionDtoCtor;

  factory _$CreatePermissionDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$CreatePermissionDtoCtor.fromJson;

  @override
  String get manageeId => throw _privateConstructorUsedError;
  @override
  String get managerId => throw _privateConstructorUsedError;
  @override
  bool get canUpdate => throw _privateConstructorUsedError;
  @override
  bool get canDelete => throw _privateConstructorUsedError;
  @override
  bool get canAddToCollection => throw _privateConstructorUsedError;
  @override
  bool get canRemoveFromCollection => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CreatePermissionDtoCtorCopyWith<_$CreatePermissionDtoCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
