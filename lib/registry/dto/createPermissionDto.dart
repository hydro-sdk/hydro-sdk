import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'createPermissionDto.freezed.dart';
part 'createPermissionDto.g.dart';

@freezed
abstract class CreatePermissionDto with _$CreatePermissionDto {
  const factory CreatePermissionDto({
    @required String manageeId,
    @required String managerId,
    @required bool canUpdate,
    @required bool canDelete,
    @required bool canAddToCollection,
    @required bool canRemoveFromCollection,
  }) = _$CreatePermissionDtoCtor;

  factory CreatePermissionDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePermissionDtoFromJson(json);
}
