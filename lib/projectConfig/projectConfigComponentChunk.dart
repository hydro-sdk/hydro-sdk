import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'projectConfigComponentChunk.freezed.dart';
part 'projectConfigComponentChunk.g.dart';

enum ProjectConfigComponentChunkType {
  mountable,
}

@freezed
abstract class ProjectConfigComponentChunk with _$ProjectConfigComponentChunk {
  const factory ProjectConfigComponentChunk({
    @required ProjectConfigComponentChunkType type,
    @required String entryPoint,
    @nullable String baseUrl,
  }) = _$ProjectConfigComponentChunkCtor;

  factory ProjectConfigComponentChunk.fromJson(Map<String, dynamic> json) =>
      _$ProjectConfigComponentChunkFromJson(json);
}
