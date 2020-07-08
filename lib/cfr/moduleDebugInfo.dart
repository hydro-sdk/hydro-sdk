import 'package:json_annotation/json_annotation.dart';

part 'moduleDebugInfo.g.dart';

@JsonSerializable()
class ModuleDebugInfo {
  final int lineStart;
  final int lineEnd;
  final int columnStart;
  final int columnEnd;
  final String symbolName;
  final String fileName;
  final String moduleName;
  final String originalFileName;
  final int originalLineStart;
  final int originalColumnStart;

  ModuleDebugInfo({
    this.lineStart,
    this.lineEnd,
    this.columnStart,
    this.columnEnd,
    this.symbolName,
    this.fileName,
    this.moduleName,
    this.originalFileName,
    this.originalLineStart,
    this.originalColumnStart,
  });

  factory ModuleDebugInfo.fromJson(Map<String, dynamic> json) =>
      _$ModuleDebugInfoFromJson(json);
}
