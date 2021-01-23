// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidStaticConstPrefixedIdentifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$Data _$_$_$DataFromJson(Map<String, dynamic> json) {
  return _$_$Data(
    prefix: json['prefix'] == null
        ? null
        : SwidInterface.fromJson(json['prefix'] as Map<String, dynamic>),
    staticConstFieldReference: json['staticConstFieldReference'] == null
        ? null
        : SwidStaticConstFieldReference.fromJson(
            json['staticConstFieldReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$DataToJson(_$_$Data instance) => <String, dynamic>{
      'prefix': instance.prefix,
      'staticConstFieldReference': instance.staticConstFieldReference,
    };
