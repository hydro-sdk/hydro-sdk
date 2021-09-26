import 'package:freezed_annotation/freezed_annotation.dart';

part 'updatePermissionDto.freezed.dart';
part 'updatePermissionDto.g.dart';

@freezed
class UpdatePermissionDto with _$UpdatePermissionDto {
  const factory UpdatePermissionDto({
    required String manageeId,
    required String managerId,
    required bool canUpdate,
    required bool canDelete,
    required bool canAddToCollection,
    required bool canRemoveFromCollection,
  }) = _$UpdatePermissionDtoCtor;

  factory UpdatePermissionDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatePermissionDtoFromJson(json);
}
