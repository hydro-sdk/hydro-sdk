import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/projectConfig/projectConfigComponent.dart';

part 'projectConfig.freezed.dart';
part 'projectConfig.g.dart';

@freezed
class ProjectConfig with _$ProjectConfig {
  const factory ProjectConfig({
    required String project,
    required List<ProjectConfigComponent> components,
  }) = _$ProjectConfigCtor;

  factory ProjectConfig.fromJson(Map<String, dynamic> json) =>
      _$ProjectConfigFromJson(json);
}
