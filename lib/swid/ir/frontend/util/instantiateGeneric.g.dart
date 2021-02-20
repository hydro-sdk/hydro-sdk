// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instantiateGeneric.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$SwidInstantiableGenericFromSwidClass
    _$_$_$SwidInstantiableGenericFromSwidClassFromJson(
        Map<String, dynamic> json) {
  return _$_$SwidInstantiableGenericFromSwidClass(
    swidClass: json['swidClass'] == null
        ? null
        : SwidClass.fromJson(json['swidClass'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$SwidInstantiableGenericFromSwidClassToJson(
        _$_$SwidInstantiableGenericFromSwidClass instance) =>
    <String, dynamic>{
      'swidClass': instance.swidClass,
    };

_$_$SwidInstantiableGenericFromSwidInterface
    _$_$_$SwidInstantiableGenericFromSwidInterfaceFromJson(
        Map<String, dynamic> json) {
  return _$_$SwidInstantiableGenericFromSwidInterface(
    swidInterface: json['swidInterface'] == null
        ? null
        : SwidInterface.fromJson(json['swidInterface'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$SwidInstantiableGenericFromSwidInterfaceToJson(
        _$_$SwidInstantiableGenericFromSwidInterface instance) =>
    <String, dynamic>{
      'swidInterface': instance.swidInterface,
    };

_$_$SwidInstantiableGenericFromSwidFunctionType
    _$_$_$SwidInstantiableGenericFromSwidFunctionTypeFromJson(
        Map<String, dynamic> json) {
  return _$_$SwidInstantiableGenericFromSwidFunctionType(
    swidFunctionType: json['swidFunctionType'] == null
        ? null
        : SwidFunctionType.fromJson(
            json['swidFunctionType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$SwidInstantiableGenericFromSwidFunctionTypeToJson(
        _$_$SwidInstantiableGenericFromSwidFunctionType instance) =>
    <String, dynamic>{
      'swidFunctionType': instance.swidFunctionType,
    };

_$_$SwidInstantiatedGenericCtor _$_$_$SwidInstantiatedGenericCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$SwidInstantiatedGenericCtor(
    instantiableGeneric: json['instantiableGeneric'] == null
        ? null
        : SwidInstantiableGeneric.fromJson(
            json['instantiableGeneric'] as Map<String, dynamic>),
    referenceDeclarationKind: _$enumDecodeNullable(
        _$SwidReferenceDeclarationKindEnumMap,
        json['referenceDeclarationKind']),
  );
}

Map<String, dynamic> _$_$_$SwidInstantiatedGenericCtorToJson(
        _$_$SwidInstantiatedGenericCtor instance) =>
    <String, dynamic>{
      'instantiableGeneric': instance.instantiableGeneric,
      'referenceDeclarationKind': _$SwidReferenceDeclarationKindEnumMap[
          instance.referenceDeclarationKind],
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

_$_$SwidGenericInstantiatorCtor _$_$_$SwidGenericInstantiatorCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$SwidGenericInstantiatorCtor(
    name: json['name'] as String,
    instantiatedGeneric: json['instantiatedGeneric'] == null
        ? null
        : SwidInstantiatedGeneric.fromJson(
            json['instantiatedGeneric'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$SwidGenericInstantiatorCtorToJson(
        _$_$SwidGenericInstantiatorCtor instance) =>
    <String, dynamic>{
      'name': instance.name,
      'instantiatedGeneric': instance.instantiatedGeneric,
    };
