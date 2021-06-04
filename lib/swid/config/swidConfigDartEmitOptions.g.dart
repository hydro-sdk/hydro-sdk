// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidConfigDartEmitOptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$SwidConfigDartEmitOptionsCtor _$_$_$SwidConfigDartEmitOptionsCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$SwidConfigDartEmitOptionsCtor(
    prefixPaths:
        (json['prefixPaths'] as List<dynamic>).map((e) => e as String).toList(),
    hostPackageName: json['hostPackageName'] as String,
  );
}

Map<String, dynamic> _$_$_$SwidConfigDartEmitOptionsCtorToJson(
        _$_$SwidConfigDartEmitOptionsCtor instance) =>
    <String, dynamic>{
      'prefixPaths': instance.prefixPaths,
      'hostPackageName': instance.hostPackageName,
    };
