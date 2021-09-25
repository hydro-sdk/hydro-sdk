// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tsVmDeclaration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$Data _$_$_$DataFromJson(Map<String, dynamic> json) {
  return _$_$Data(
    name: json['name'] as String,
    methods: (json['methods'] as List<dynamic>)
        .map((e) => SwidFunctionType.fromJson(e as Map<String, dynamic>))
        .toList(),
    children: (json['children'] as List<dynamic>)
        .map((e) => TsVmDeclaration.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_$DataToJson(_$_$Data instance) => <String, dynamic>{
      'name': instance.name,
      'methods': instance.methods,
      'children': instance.children,
    };
