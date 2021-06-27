import 'package:json_annotation/json_annotation.dart';

part 'moduleDebugInfo.g.dart';

@JsonSerializable()
class ModuleDebugInfo {
  final int? lineStart;
  final int? lineEnd;
  final int? columnStart;
  final int? columnEnd;
  final String? symbolName;
  final String? fileName;
  final String? moduleName;
  final String? originalFileName;
  final int? originalLineStart;
  final int? originalColumnStart;
  final List<String>? parameterNames;
  final String? symbolMangleName;
  final String? symbolFullyQualifiedMangleName;
  final int? symbolDisambiguationIndex;

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
    this.parameterNames,
    this.symbolMangleName,
    this.symbolFullyQualifiedMangleName,
    this.symbolDisambiguationIndex,
  });

  factory ModuleDebugInfo.fromJson(Map<String, dynamic> json) =>
      _$ModuleDebugInfoFromJson(json);
}
