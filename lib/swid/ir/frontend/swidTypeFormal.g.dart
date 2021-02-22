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
    swidClass: json['swidClass'] == null
        ? null
        : SwidClass.fromJson(json['swidClass'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$FromSwidClassToJson(_$_$FromSwidClass instance) =>
    <String, dynamic>{
      'swidClass': instance.swidClass,
    };

_$_$FromSwidInterface _$_$_$FromSwidInterfaceFromJson(
    Map<String, dynamic> json) {
  return _$_$FromSwidInterface(
    swidInterface: json['swidInterface'] == null
        ? null
        : SwidInterface.fromJson(json['swidInterface'] as Map<String, dynamic>),
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
    swidFunctionType: json['swidFunctionType'] == null
        ? null
        : SwidFunctionType.fromJson(
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
    value: json['value'] == null
        ? null
        : SwidTypeFormalValue.fromJson(json['value'] as Map<String, dynamic>),
    swidReferenceDeclarationKind: _$enumDecodeNullable(
        _$SwidReferenceDeclarationKindEnumMap,
        json['swidReferenceDeclarationKind']),
  );
}

Map<String, dynamic> _$_$_$DataToJson(_$_$Data instance) => <String, dynamic>{
      'value': instance.value,
      'swidReferenceDeclarationKind': _$SwidReferenceDeclarationKindEnumMap[
          instance.swidReferenceDeclarationKind],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$SwidReferenceDeclarationKindEnumMap = {
  SwidReferenceDeclarationKind.classElement: 'classElement',
  SwidReferenceDeclarationKind.enumElement: 'enumElement',
  SwidReferenceDeclarationKind.voidType: 'voidType',
  SwidReferenceDeclarationKind.typeParameterType: 'typeParameterType',
  SwidReferenceDeclarationKind.dynamicType: 'dynamicType',
};
