import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/projectConfig/projectConfigComponentChunk.dart';

part 'projectConfigComponent.freezed.dart';
part 'projectConfigComponent.g.dart';

@freezed
class ProjectConfigComponent with _$ProjectConfigComponent {
  const factory ProjectConfigComponent({
    required String name,
    required List<ProjectConfigComponentChunk> chunks,
  }) = _$ProjectConfigComponentCtor;

  factory ProjectConfigComponent.fromJson(Map<String, dynamic> json) =>
      _$ProjectConfigComponentFromJson(json);
}
