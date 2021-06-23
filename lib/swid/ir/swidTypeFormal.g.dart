// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidTypeFormal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$FromString _$_$_$FromStringFromJson(Map<String, dynamic> json) {
  return _$_$FromString(
    string: json['string'] as String,
  );
}

Map<String, dynamic> _$_$_$FromStringToJson(_$_$FromString instance) =>
    <String, dynamic>{
      'string': instance.string,
    };

_$_$FromSwidClass _$_$_$FromSwidClassFromJson(Map<String, dynamic> json) {
  return _$_$FromSwidClass(
    swidClass: SwidClass.fromJson(json['swidClass'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$FromSwidClassToJson(_$_$FromSwidClass instance) =>
    <String, dynamic>{
      'swidClass': instance.swidClass,
    };

_$_$FromSwidInterface _$_$_$FromSwidInterfaceFromJson(
    Map<String, dynamic> json) {
  return _$_$FromSwidInterface(
    swidInterface:
        SwidInterface.fromJson(json['swidInterface'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$FromSwidInterfaceToJson(
        _$_$FromSwidInterface instance) =>
    <String, dynamic>{
      'swidInterface': instance.swidInterface,
    };

_$_$FromSwidFunctionType _$_$_$FromSwidFunctionTypeFromJson(
    Map<String, dynamic> json) {
  return _$_$FromSwidFunctionType(
    swidFunctionType: SwidFunctionType.fromJson(
        json['swidFunctionType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$FromSwidFunctionTypeToJson(
        _$_$FromSwidFunctionType instance) =>
    <String, dynamic>{
      'swidFunctionType': instance.swidFunctionType,
    };

_$_$Data _$_$_$DataFromJson(Map<String, dynamic> json) {
  return _$_$Data(
    value: SwidTypeFormalValue.fromJson(json['value'] as Map<String, dynamic>),
    swidReferenceDeclarationKind: _$enumDecode(
        _$SwidReferenceDeclarationKindEnumMap,
        json['swidReferenceDeclarationKind']),
  );
}

Map<String, dynamic> _$_$_$DataToJson(_$_$Data instance) => <String, dynamic>{
      'value': instance.value,
      'swidReferenceDeclarationKind': _$SwidReferenceDeclarationKindEnumMap[
          instance.swidReferenceDeclarationKind],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$SwidReferenceDeclarationKindEnumMap = {
  SwidReferenceDeclarationKind.classElement: 'classElement',
  SwidReferenceDeclarationKind.enumElement: 'enumElement',
  SwidReferenceDeclarationKind.voidType: 'voidType',
  SwidReferenceDeclarationKind.typeParameterType: 'typeParameterType',
  SwidReferenceDeclarationKind.dynamicType: 'dynamicType',
  SwidReferenceDeclarationKind.unknown: 'unknown',
};
