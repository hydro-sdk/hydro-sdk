// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'updatePermissionDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdatePermissionDto _$UpdatePermissionDtoFromJson(Map<String, dynamic> json) {
  return _$UpdatePermissionDtoCtor.fromJson(json);
}

/// @nodoc
class _$UpdatePermissionDtoTearOff {
  const _$UpdatePermissionDtoTearOff();

  _$UpdatePermissionDtoCtor call(
      {required String manageeId,
      required String managerId,
      required bool canUpdate,
      required bool canDelete,
      required bool canAddToCollection,
      required bool canRemoveFromCollection}) {
    return _$UpdatePermissionDtoCtor(
      manageeId: manageeId,
      managerId: managerId,
      canUpdate: canUpdate,
      canDelete: canDelete,
      canAddToCollection: canAddToCollection,
      canRemoveFromCollection: canRemoveFromCollection,
    );
  }

  UpdatePermissionDto fromJson(Map<String, Object> json) {
    return UpdatePermissionDto.fromJson(json);
  }
}

/// @nodoc
const $UpdatePermissionDto = _$UpdatePermissionDtoTearOff();

/// @nodoc
mixin _$UpdatePermissionDto {
  String get manageeId => throw _privateConstructorUsedError;
  String get managerId => throw _privateConstructorUsedError;
  bool get canUpdate => throw _privateConstructorUsedError;
  bool get canDelete => throw _privateConstructorUsedError;
  bool get canAddToCollection => throw _privateConstructorUsedError;
  bool get canRemoveFromCollection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePermissionDtoCopyWith<UpdatePermissionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePermissionDtoCopyWith<$Res> {
  factory $UpdatePermissionDtoCopyWith(
          UpdatePermissionDto value, $Res Function(UpdatePermissionDto) then) =
      _$UpdatePermissionDtoCopyWithImpl<$Res>;
  $Res call(
      {String manageeId,
      String managerId,
      bool canUpdate,
      bool canDelete,
      bool canAddToCollection,
      bool canRemoveFromCollection});
}

/// @nodoc
class _$UpdatePermissionDtoCopyWithImpl<$Res>
    implements $UpdatePermissionDtoCopyWith<$Res> {
  _$UpdatePermissionDtoCopyWithImpl(this._value, this._then);

  final UpdatePermissionDto _value;
  // ignore: unused_field
  final $Res Function(UpdatePermissionDto) _then;

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
abstract class _$$UpdatePermissionDtoCtorCopyWith<$Res>
    implements $UpdatePermissionDtoCopyWith<$Res> {
  factory _$$UpdatePermissionDtoCtorCopyWith(_$UpdatePermissionDtoCtor value,
          $Res Function(_$UpdatePermissionDtoCtor) then) =
      __$$UpdatePermissionDtoCtorCopyWithImpl<$Res>;
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
class __$$UpdatePermissionDtoCtorCopyWithImpl<$Res>
    extends _$UpdatePermissionDtoCopyWithImpl<$Res>
    implements _$$UpdatePermissionDtoCtorCopyWith<$Res> {
  __$$UpdatePermissionDtoCtorCopyWithImpl(_$UpdatePermissionDtoCtor _value,
      $Res Function(_$UpdatePermissionDtoCtor) _then)
      : super(_value, (v) => _then(v as _$UpdatePermissionDtoCtor));

  @override
  _$UpdatePermissionDtoCtor get _value =>
      super._value as _$UpdatePermissionDtoCtor;

  @override
  $Res call({
    Object? manageeId = freezed,
    Object? managerId = freezed,
    Object? canUpdate = freezed,
    Object? canDelete = freezed,
    Object? canAddToCollection = freezed,
    Object? canRemoveFromCollection = freezed,
  }) {
    return _then(_$UpdatePermissionDtoCtor(
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
class _$_$UpdatePermissionDtoCtor implements _$UpdatePermissionDtoCtor {
  const _$_$UpdatePermissionDtoCtor(
      {required this.manageeId,
      required this.managerId,
      required this.canUpdate,
      required this.canDelete,
      required this.canAddToCollection,
      required this.canRemoveFromCollection});

  factory _$_$UpdatePermissionDtoCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$UpdatePermissionDtoCtorFromJson(json);

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
    return 'UpdatePermissionDto(manageeId: $manageeId, managerId: $managerId, canUpdate: $canUpdate, canDelete: $canDelete, canAddToCollection: $canAddToCollection, canRemoveFromCollection: $canRemoveFromCollection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$UpdatePermissionDtoCtor &&
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
  _$$UpdatePermissionDtoCtorCopyWith<_$UpdatePermissionDtoCtor> get copyWith =>
      __$$UpdatePermissionDtoCtorCopyWithImpl<_$UpdatePermissionDtoCtor>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$UpdatePermissionDtoCtorToJson(this);
  }
}

abstract class _$UpdatePermissionDtoCtor implements UpdatePermissionDto {
  const factory _$UpdatePermissionDtoCtor(
      {required String manageeId,
      required String managerId,
      required bool canUpdate,
      required bool canDelete,
      required bool canAddToCollection,
      required bool canRemoveFromCollection}) = _$_$UpdatePermissionDtoCtor;

  factory _$UpdatePermissionDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$UpdatePermissionDtoCtor.fromJson;

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
  _$$UpdatePermissionDtoCtorCopyWith<_$UpdatePermissionDtoCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
