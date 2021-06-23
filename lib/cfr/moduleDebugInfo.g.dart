// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moduleDebugInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModuleDebugInfo _$ModuleDebugInfoFromJson(Map<String, dynamic> json) {
  return ModuleDebugInfo(
    lineStart: json['lineStart'] as int?,
    lineEnd: json['lineEnd'] as int?,
    columnStart: json['columnStart'] as int?,
    columnEnd: json['columnEnd'] as int?,
    symbolName: json['symbolName'] as String?,
    fileName: json['fileName'] as String?,
    moduleName: json['moduleName'] as String?,
    originalFileName: json['originalFileName'] as String?,
    originalLineStart: json['originalLineStart'] as int?,
    originalColumnStart: json['originalColumnStart'] as int?,
    parameterNames: (json['parameterNames'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    symbolMangleName: json['symbolMangleName'] as String?,
    symbolFullyQualifiedMangleName:
        json['symbolFullyQualifiedMangleName'] as String?,
    symbolDisambiguationIndex: json['symbolDisambiguationIndex'] as int?,
  );
}

Map<String, dynamic> _$ModuleDebugInfoToJson(ModuleDebugInfo instance) =>
    <String, dynamic>{
      'lineStart': instance.lineStart,
      'lineEnd': instance.lineEnd,
      'columnStart': instance.columnStart,
      'columnEnd': instance.columnEnd,
      'symbolName': instance.symbolName,
      'fileName': instance.fileName,
      'moduleName': instance.moduleName,
      'originalFileName': instance.originalFileName,
      'originalLineStart': instance.originalLineStart,
      'originalColumnStart': instance.originalColumnStart,
      'parameterNames': instance.parameterNames,
      'symbolMangleName': instance.symbolMangleName,
      'symbolFullyQualifiedMangleName': instance.symbolFullyQualifiedMangleName,
      'symbolDisambiguationIndex': instance.symbolDisambiguationIndex,
    };
