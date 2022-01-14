///
//  Generated code. Do not modify.
//  source: ir.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use swidNullabilitySuffixProtoDescriptor instead')
const SwidNullabilitySuffixProto$json = const {
  '1': 'SwidNullabilitySuffixProto',
  '2': const [
    const {'1': 'question', '2': 0},
    const {'1': 'star', '2': 1},
    const {'1': 'none', '2': 2},
  ],
};

/// Descriptor for `SwidNullabilitySuffixProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List swidNullabilitySuffixProtoDescriptor =
    $convert.base64Decode(
        'ChpTd2lkTnVsbGFiaWxpdHlTdWZmaXhQcm90bxIMCghxdWVzdGlvbhAAEggKBHN0YXIQARIICgRub25lEAI=');
@$core.Deprecated(
    'Use swidOriginatedAncestorTypeFormalKindProtoDescriptor instead')
const SwidOriginatedAncestorTypeFormalKindProto$json = const {
  '1': 'SwidOriginatedAncestorTypeFormalKindProto',
  '2': const [
    const {'1': 'kClass', '2': 0},
    const {'1': 'kMethod', '2': 1},
  ],
};

/// Descriptor for `SwidOriginatedAncestorTypeFormalKindProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List
    swidOriginatedAncestorTypeFormalKindProtoDescriptor = $convert.base64Decode(
        'CilTd2lkT3JpZ2luYXRlZEFuY2VzdG9yVHlwZUZvcm1hbEtpbmRQcm90bxIKCgZrQ2xhc3MQABILCgdrTWV0aG9kEAE=');
@$core.Deprecated('Use swidReferenceDeclarationKindProtoDescriptor instead')
const SwidReferenceDeclarationKindProto$json = const {
  '1': 'SwidReferenceDeclarationKindProto',
  '2': const [
    const {'1': 'classElement', '2': 0},
    const {'1': 'enumElement', '2': 1},
    const {'1': 'voidType', '2': 2},
    const {'1': 'typeParameterType', '2': 3},
    const {'1': 'dynamicType', '2': 4},
    const {'1': 'unknown', '2': 5},
  ],
};

/// Descriptor for `SwidReferenceDeclarationKindProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List swidReferenceDeclarationKindProtoDescriptor =
    $convert.base64Decode(
        'CiFTd2lkUmVmZXJlbmNlRGVjbGFyYXRpb25LaW5kUHJvdG8SEAoMY2xhc3NFbGVtZW50EAASDwoLZW51bUVsZW1lbnQQARIMCgh2b2lkVHlwZRACEhUKEXR5cGVQYXJhbWV0ZXJUeXBlEAMSDwoLZHluYW1pY1R5cGUQBBILCgd1bmtub3duEAU=');
@$core.Deprecated('Use swidBooleanLiteralProtoDescriptor instead')
const SwidBooleanLiteralProto$json = const {
  '1': 'SwidBooleanLiteralProto',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `SwidBooleanLiteralProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidBooleanLiteralProtoDescriptor =
    $convert.base64Decode(
        'ChdTd2lkQm9vbGVhbkxpdGVyYWxQcm90bxIUCgV2YWx1ZRgBIAEoCVIFdmFsdWU=');
@$core.Deprecated('Use stringTupleProtoDescriptor instead')
const StringTupleProto$json = const {
  '1': 'StringTupleProto',
  '2': const [
    const {'1': 'item1', '3': 1, '4': 1, '5': 9, '10': 'item1'},
    const {'1': 'item2', '3': 2, '4': 1, '5': 9, '10': 'item2'},
  ],
};

/// Descriptor for `StringTupleProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringTupleProtoDescriptor = $convert.base64Decode(
    'ChBTdHJpbmdUdXBsZVByb3RvEhQKBWl0ZW0xGAEgASgJUgVpdGVtMRIUCgVpdGVtMhgCIAEoCVIFaXRlbTI=');
@$core.Deprecated('Use swidDeclarationModifiersProtoDescriptor instead')
const SwidDeclarationModifiersProto$json = const {
  '1': 'SwidDeclarationModifiersProto',
  '2': const [
    const {
      '1': 'ignoredTransforms',
      '3': 1,
      '4': 3,
      '5': 9,
      '10': 'ignoredTransforms'
    },
    const {
      '1': 'ignoredAnalyses',
      '3': 2,
      '4': 3,
      '5': 9,
      '10': 'ignoredAnalyses'
    },
    const {
      '1': 'overridenTransforms',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.StringTupleProto',
      '10': 'overridenTransforms'
    },
    const {'1': 'isAbstract', '3': 4, '4': 1, '5': 8, '10': 'isAbstract'},
    const {'1': 'isGetter', '3': 5, '4': 1, '5': 8, '10': 'isGetter'},
    const {'1': 'isOperator', '3': 6, '4': 1, '5': 8, '10': 'isOperator'},
    const {'1': 'isSetter', '3': 7, '4': 1, '5': 8, '10': 'isSetter'},
    const {'1': 'isStatic', '3': 8, '4': 1, '5': 8, '10': 'isStatic'},
    const {'1': 'isSynthetic', '3': 9, '4': 1, '5': 8, '10': 'isSynthetic'},
    const {'1': 'isCovariant', '3': 10, '4': 1, '5': 8, '10': 'isCovariant'},
    const {
      '1': 'isExplicitlyCovariant',
      '3': 11,
      '4': 1,
      '5': 8,
      '10': 'isExplicitlyCovariant'
    },
    const {
      '1': 'hasAlwaysThrows',
      '3': 12,
      '4': 1,
      '5': 8,
      '10': 'hasAlwaysThrows'
    },
    const {
      '1': 'hasDeprecated',
      '3': 13,
      '4': 1,
      '5': 8,
      '10': 'hasDeprecated'
    },
    const {'1': 'hasFactory', '3': 14, '4': 1, '5': 8, '10': 'hasFactory'},
    const {
      '1': 'hasImplicitReturnType',
      '3': 15,
      '4': 1,
      '5': 8,
      '10': 'hasImplicitReturnType'
    },
    const {'1': 'hasIsTest', '3': 16, '4': 1, '5': 8, '10': 'hasIsTest'},
    const {
      '1': 'hasIsTestGroup',
      '3': 17,
      '4': 1,
      '5': 8,
      '10': 'hasIsTestGroup'
    },
    const {'1': 'hasJS', '3': 18, '4': 1, '5': 8, '10': 'hasJS'},
    const {'1': 'hasLiteral', '3': 19, '4': 1, '5': 8, '10': 'hasLiteral'},
    const {
      '1': 'hasMustCallSuper',
      '3': 20,
      '4': 1,
      '5': 8,
      '10': 'hasMustCallSuper'
    },
    const {
      '1': 'hasNonVirtual',
      '3': 21,
      '4': 1,
      '5': 8,
      '10': 'hasNonVirtual'
    },
    const {
      '1': 'hasOptionalTypeArgs',
      '3': 22,
      '4': 1,
      '5': 8,
      '10': 'hasOptionalTypeArgs'
    },
    const {'1': 'hasOverride', '3': 23, '4': 1, '5': 8, '10': 'hasOverride'},
    const {'1': 'hasProtected', '3': 24, '4': 1, '5': 8, '10': 'hasProtected'},
    const {'1': 'hasRequired', '3': 25, '4': 1, '5': 8, '10': 'hasRequired'},
    const {'1': 'hasSealed', '3': 26, '4': 1, '5': 8, '10': 'hasSealed'},
    const {
      '1': 'hasVisibleForTemplate',
      '3': 27,
      '4': 1,
      '5': 8,
      '10': 'hasVisibleForTemplate'
    },
    const {
      '1': 'hasVisibleForTesting',
      '3': 28,
      '4': 1,
      '5': 8,
      '10': 'hasVisibleForTesting'
    },
    const {'1': 'isPublic', '3': 29, '4': 1, '5': 8, '10': 'isPublic'},
  ],
};

/// Descriptor for `SwidDeclarationModifiersProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidDeclarationModifiersProtoDescriptor =
    $convert.base64Decode(
        'Ch1Td2lkRGVjbGFyYXRpb25Nb2RpZmllcnNQcm90bxIsChFpZ25vcmVkVHJhbnNmb3JtcxgBIAMoCVIRaWdub3JlZFRyYW5zZm9ybXMSKAoPaWdub3JlZEFuYWx5c2VzGAIgAygJUg9pZ25vcmVkQW5hbHlzZXMSWQoTb3ZlcnJpZGVuVHJhbnNmb3JtcxgDIAMoCzInLm9yZy5oeWRyb19zZGsuc3dpZC5pci5TdHJpbmdUdXBsZVByb3RvUhNvdmVycmlkZW5UcmFuc2Zvcm1zEh4KCmlzQWJzdHJhY3QYBCABKAhSCmlzQWJzdHJhY3QSGgoIaXNHZXR0ZXIYBSABKAhSCGlzR2V0dGVyEh4KCmlzT3BlcmF0b3IYBiABKAhSCmlzT3BlcmF0b3ISGgoIaXNTZXR0ZXIYByABKAhSCGlzU2V0dGVyEhoKCGlzU3RhdGljGAggASgIUghpc1N0YXRpYxIgCgtpc1N5bnRoZXRpYxgJIAEoCFILaXNTeW50aGV0aWMSIAoLaXNDb3ZhcmlhbnQYCiABKAhSC2lzQ292YXJpYW50EjQKFWlzRXhwbGljaXRseUNvdmFyaWFudBgLIAEoCFIVaXNFeHBsaWNpdGx5Q292YXJpYW50EigKD2hhc0Fsd2F5c1Rocm93cxgMIAEoCFIPaGFzQWx3YXlzVGhyb3dzEiQKDWhhc0RlcHJlY2F0ZWQYDSABKAhSDWhhc0RlcHJlY2F0ZWQSHgoKaGFzRmFjdG9yeRgOIAEoCFIKaGFzRmFjdG9yeRI0ChVoYXNJbXBsaWNpdFJldHVyblR5cGUYDyABKAhSFWhhc0ltcGxpY2l0UmV0dXJuVHlwZRIcCgloYXNJc1Rlc3QYECABKAhSCWhhc0lzVGVzdBImCg5oYXNJc1Rlc3RHcm91cBgRIAEoCFIOaGFzSXNUZXN0R3JvdXASFAoFaGFzSlMYEiABKAhSBWhhc0pTEh4KCmhhc0xpdGVyYWwYEyABKAhSCmhhc0xpdGVyYWwSKgoQaGFzTXVzdENhbGxTdXBlchgUIAEoCFIQaGFzTXVzdENhbGxTdXBlchIkCg1oYXNOb25WaXJ0dWFsGBUgASgIUg1oYXNOb25WaXJ0dWFsEjAKE2hhc09wdGlvbmFsVHlwZUFyZ3MYFiABKAhSE2hhc09wdGlvbmFsVHlwZUFyZ3MSIAoLaGFzT3ZlcnJpZGUYFyABKAhSC2hhc092ZXJyaWRlEiIKDGhhc1Byb3RlY3RlZBgYIAEoCFIMaGFzUHJvdGVjdGVkEiAKC2hhc1JlcXVpcmVkGBkgASgIUgtoYXNSZXF1aXJlZBIcCgloYXNTZWFsZWQYGiABKAhSCWhhc1NlYWxlZBI0ChVoYXNWaXNpYmxlRm9yVGVtcGxhdGUYGyABKAhSFWhhc1Zpc2libGVGb3JUZW1wbGF0ZRIyChRoYXNWaXNpYmxlRm9yVGVzdGluZxgcIAEoCFIUaGFzVmlzaWJsZUZvclRlc3RpbmcSGgoIaXNQdWJsaWMYHSABKAhSCGlzUHVibGlj');
@$core.Deprecated('Use swidClassProtoDescriptor instead')
const SwidClassProto$json = const {
  '1': 'SwidClassProto',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'nullabilitySuffix',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.org.hydro_sdk.swid.ir.SwidNullabilitySuffixProto',
      '10': 'nullabilitySuffix'
    },
    const {
      '1': 'originalPackagePath',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'originalPackagePath'
    },
    const {
      '1': 'constructorType',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidFunctionTypeProto',
      '9': 0,
      '10': 'constructorType',
      '17': true
    },
    const {
      '1': 'generativeConstructors',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidFunctionTypeProto',
      '10': 'generativeConstructors'
    },
    const {
      '1': 'factoryConstructors',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidFunctionTypeProto',
      '10': 'factoryConstructors'
    },
    const {
      '1': 'staticMethods',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidFunctionTypeProto',
      '10': 'staticMethods'
    },
    const {
      '1': 'methods',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidFunctionTypeProto',
      '10': 'methods'
    },
    const {
      '1': 'staticConstFieldDeclarations',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstFieldDeclarationProto',
      '10': 'staticConstFieldDeclarations'
    },
    const {
      '1': 'instanceFieldDeclarations',
      '3': 10,
      '4': 3,
      '5': 11,
      '6':
          '.org.hydro_sdk.swid.ir.SwidClassProto.InstanceFieldDeclarationsEntry',
      '10': 'instanceFieldDeclarations'
    },
    const {
      '1': 'declarationModifiers',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidDeclarationModifiersProto',
      '10': 'declarationModifiers'
    },
    const {
      '1': 'mixedInClasses',
      '3': 12,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidClassProto',
      '10': 'mixedInClasses'
    },
    const {
      '1': 'implementedClasses',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidClassProto',
      '10': 'implementedClasses'
    },
    const {'1': 'isMixin', '3': 14, '4': 1, '5': 8, '10': 'isMixin'},
    const {
      '1': 'typeFormals',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeFormalProto',
      '10': 'typeFormals'
    },
    const {
      '1': 'element',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeProto',
      '9': 1,
      '10': 'element',
      '17': true
    },
    const {
      '1': 'extendedClass',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidClassProto',
      '9': 2,
      '10': 'extendedClass',
      '17': true
    },
  ],
  '3': const [SwidClassProto_InstanceFieldDeclarationsEntry$json],
  '8': const [
    const {'1': '_constructorType'},
    const {'1': '_element'},
    const {'1': '_extendedClass'},
  ],
};

@$core.Deprecated('Use swidClassProtoDescriptor instead')
const SwidClassProto_InstanceFieldDeclarationsEntry$json = const {
  '1': 'InstanceFieldDeclarationsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeProto',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `SwidClassProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidClassProtoDescriptor = $convert.base64Decode(
    'Cg5Td2lkQ2xhc3NQcm90bxISCgRuYW1lGAEgASgJUgRuYW1lEl8KEW51bGxhYmlsaXR5U3VmZml4GAIgASgOMjEub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWROdWxsYWJpbGl0eVN1ZmZpeFByb3RvUhFudWxsYWJpbGl0eVN1ZmZpeBIwChNvcmlnaW5hbFBhY2thZ2VQYXRoGAMgASgJUhNvcmlnaW5hbFBhY2thZ2VQYXRoElsKD2NvbnN0cnVjdG9yVHlwZRgEIAEoCzIsLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkRnVuY3Rpb25UeXBlUHJvdG9IAFIPY29uc3RydWN0b3JUeXBliAEBEmQKFmdlbmVyYXRpdmVDb25zdHJ1Y3RvcnMYBSADKAsyLC5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZEZ1bmN0aW9uVHlwZVByb3RvUhZnZW5lcmF0aXZlQ29uc3RydWN0b3JzEl4KE2ZhY3RvcnlDb25zdHJ1Y3RvcnMYBiADKAsyLC5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZEZ1bmN0aW9uVHlwZVByb3RvUhNmYWN0b3J5Q29uc3RydWN0b3JzElIKDXN0YXRpY01ldGhvZHMYByADKAsyLC5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZEZ1bmN0aW9uVHlwZVByb3RvUg1zdGF0aWNNZXRob2RzEkYKB21ldGhvZHMYCCADKAsyLC5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZEZ1bmN0aW9uVHlwZVByb3RvUgdtZXRob2RzEn8KHHN0YXRpY0NvbnN0RmllbGREZWNsYXJhdGlvbnMYCSADKAsyOy5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZFN0YXRpY0NvbnN0RmllbGREZWNsYXJhdGlvblByb3RvUhxzdGF0aWNDb25zdEZpZWxkRGVjbGFyYXRpb25zEoIBChlpbnN0YW5jZUZpZWxkRGVjbGFyYXRpb25zGAogAygLMkQub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRDbGFzc1Byb3RvLkluc3RhbmNlRmllbGREZWNsYXJhdGlvbnNFbnRyeVIZaW5zdGFuY2VGaWVsZERlY2xhcmF0aW9ucxJoChRkZWNsYXJhdGlvbk1vZGlmaWVycxgLIAEoCzI0Lm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkRGVjbGFyYXRpb25Nb2RpZmllcnNQcm90b1IUZGVjbGFyYXRpb25Nb2RpZmllcnMSTQoObWl4ZWRJbkNsYXNzZXMYDCADKAsyJS5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZENsYXNzUHJvdG9SDm1peGVkSW5DbGFzc2VzElUKEmltcGxlbWVudGVkQ2xhc3NlcxgNIAMoCzIlLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkQ2xhc3NQcm90b1ISaW1wbGVtZW50ZWRDbGFzc2VzEhgKB2lzTWl4aW4YDiABKAhSB2lzTWl4aW4STAoLdHlwZUZvcm1hbHMYDyADKAsyKi5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZFR5cGVGb3JtYWxQcm90b1ILdHlwZUZvcm1hbHMSQwoHZWxlbWVudBgQIAEoCzIkLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkVHlwZVByb3RvSAFSB2VsZW1lbnSIAQESUAoNZXh0ZW5kZWRDbGFzcxgRIAEoCzIlLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkQ2xhc3NQcm90b0gCUg1leHRlbmRlZENsYXNziAEBGnIKHkluc3RhbmNlRmllbGREZWNsYXJhdGlvbnNFbnRyeRIQCgNrZXkYASABKAlSA2tleRI6CgV2YWx1ZRgCIAEoCzIkLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkVHlwZVByb3RvUgV2YWx1ZToCOAFCEgoQX2NvbnN0cnVjdG9yVHlwZUIKCghfZWxlbWVudEIQCg5fZXh0ZW5kZWRDbGFzcw==');
@$core.Deprecated('Use swidDefaultFormalParameterProtoDescriptor instead')
const SwidDefaultFormalParameterProto$json = const {
  '1': 'SwidDefaultFormalParameterProto',
  '2': const [
    const {
      '1': 'nullabilitySuffix',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.org.hydro_sdk.swid.ir.SwidNullabilitySuffixProto',
      '10': 'nullabilitySuffix'
    },
    const {
      '1': 'originalPackagePath',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'originalPackagePath'
    },
    const {
      '1': 'staticType',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeProto',
      '10': 'staticType'
    },
    const {
      '1': 'value',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstProto',
      '10': 'value'
    },
    const {
      '1': 'defaultValueCode',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'defaultValueCode'
    },
    const {
      '1': 'element',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeProto',
      '9': 0,
      '10': 'element',
      '17': true
    },
  ],
  '8': const [
    const {'1': '_element'},
  ],
};

/// Descriptor for `SwidDefaultFormalParameterProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidDefaultFormalParameterProtoDescriptor =
    $convert.base64Decode(
        'Ch9Td2lkRGVmYXVsdEZvcm1hbFBhcmFtZXRlclByb3RvEl8KEW51bGxhYmlsaXR5U3VmZml4GAEgASgOMjEub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWROdWxsYWJpbGl0eVN1ZmZpeFByb3RvUhFudWxsYWJpbGl0eVN1ZmZpeBIwChNvcmlnaW5hbFBhY2thZ2VQYXRoGAIgASgJUhNvcmlnaW5hbFBhY2thZ2VQYXRoEkQKCnN0YXRpY1R5cGUYAyABKAsyJC5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZFR5cGVQcm90b1IKc3RhdGljVHlwZRJBCgV2YWx1ZRgEIAEoCzIrLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkU3RhdGljQ29uc3RQcm90b1IFdmFsdWUSKgoQZGVmYXVsdFZhbHVlQ29kZRgFIAEoCVIQZGVmYXVsdFZhbHVlQ29kZRJDCgdlbGVtZW50GAYgASgLMiQub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRUeXBlUHJvdG9IAFIHZWxlbWVudIgBAUIKCghfZWxlbWVudA==');
@$core.Deprecated('Use swidDoubleLiteralProtoDescriptor instead')
const SwidDoubleLiteralProto$json = const {
  '1': 'SwidDoubleLiteralProto',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `SwidDoubleLiteralProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidDoubleLiteralProtoDescriptor =
    $convert.base64Decode(
        'ChZTd2lkRG91YmxlTGl0ZXJhbFByb3RvEhQKBXZhbHVlGAEgASgJUgV2YWx1ZQ==');
@$core.Deprecated('Use swidElementProtoDescriptor instead')
const SwidElementProto$json = const {
  '1': 'SwidElementProto',
  '2': const [
    const {
      '1': 'fromSwidTypeArgumentElement',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeArgumentElementProto',
      '9': 0,
      '10': 'fromSwidTypeArgumentElement'
    },
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

/// Descriptor for `SwidElementProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidElementProtoDescriptor = $convert.base64Decode(
    'ChBTd2lkRWxlbWVudFByb3RvEncKG2Zyb21Td2lkVHlwZUFyZ3VtZW50RWxlbWVudBgBIAEoCzIzLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkVHlwZUFyZ3VtZW50RWxlbWVudFByb3RvSABSG2Zyb21Td2lkVHlwZUFyZ3VtZW50RWxlbWVudEIHCgV2YWx1ZQ==');
@$core.Deprecated('Use swidEnumProtoDescriptor instead')
const SwidEnumProto$json = const {
  '1': 'SwidEnumProto',
  '2': const [
    const {
      '1': 'originalPackagePath',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'originalPackagePath'
    },
    const {'1': 'identifier', '3': 2, '4': 1, '5': 9, '10': 'identifier'},
    const {'1': 'children', '3': 3, '4': 3, '5': 9, '10': 'children'},
  ],
};

/// Descriptor for `SwidEnumProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidEnumProtoDescriptor = $convert.base64Decode(
    'Cg1Td2lkRW51bVByb3RvEjAKE29yaWdpbmFsUGFja2FnZVBhdGgYASABKAlSE29yaWdpbmFsUGFja2FnZVBhdGgSHgoKaWRlbnRpZmllchgCIAEoCVIKaWRlbnRpZmllchIaCghjaGlsZHJlbhgDIAMoCVIIY2hpbGRyZW4=');
@$core.Deprecated('Use swidFunctionTypeProtoDescriptor instead')
const SwidFunctionTypeProto$json = const {
  '1': 'SwidFunctionTypeProto',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'nullabilitySuffix',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.org.hydro_sdk.swid.ir.SwidNullabilitySuffixProto',
      '10': 'nullabilitySuffix'
    },
    const {
      '1': 'originalPackagePath',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'originalPackagePath'
    },
    const {
      '1': 'namedParameterTypes',
      '3': 4,
      '4': 3,
      '5': 11,
      '6':
          '.org.hydro_sdk.swid.ir.SwidFunctionTypeProto.NamedParameterTypesEntry',
      '10': 'namedParameterTypes'
    },
    const {
      '1': 'namedDefaults',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidFunctionTypeProto.NamedDefaultsEntry',
      '10': 'namedDefaults'
    },
    const {
      '1': 'normalParameterNames',
      '3': 6,
      '4': 3,
      '5': 9,
      '10': 'normalParameterNames'
    },
    const {
      '1': 'normalParameterTypes',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeProto',
      '10': 'normalParameterTypes'
    },
    const {
      '1': 'optionalParameterNames',
      '3': 8,
      '4': 3,
      '5': 9,
      '10': 'optionalParameterNames'
    },
    const {
      '1': 'optionalParameterTypes',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeProto',
      '10': 'optionalParameterTypes'
    },
    const {
      '1': 'returnType',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeProto',
      '10': 'returnType'
    },
    const {'1': 'isFactory', '3': 11, '4': 1, '5': 8, '10': 'isFactory'},
    const {
      '1': 'typeFormals',
      '3': 12,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeFormalProto',
      '10': 'typeFormals'
    },
    const {
      '1': 'declarationModifiers',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidDeclarationModifiersProto',
      '10': 'declarationModifiers'
    },
    const {
      '1': 'element',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeProto',
      '9': 0,
      '10': 'element',
      '17': true
    },
  ],
  '3': const [
    SwidFunctionTypeProto_NamedParameterTypesEntry$json,
    SwidFunctionTypeProto_NamedDefaultsEntry$json
  ],
  '8': const [
    const {'1': '_element'},
  ],
};

@$core.Deprecated('Use swidFunctionTypeProtoDescriptor instead')
const SwidFunctionTypeProto_NamedParameterTypesEntry$json = const {
  '1': 'NamedParameterTypesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeProto',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use swidFunctionTypeProtoDescriptor instead')
const SwidFunctionTypeProto_NamedDefaultsEntry$json = const {
  '1': 'NamedDefaultsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidDefaultFormalParameterProto',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `SwidFunctionTypeProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidFunctionTypeProtoDescriptor = $convert.base64Decode(
    'ChVTd2lkRnVuY3Rpb25UeXBlUHJvdG8SEgoEbmFtZRgBIAEoCVIEbmFtZRJfChFudWxsYWJpbGl0eVN1ZmZpeBgCIAEoDjIxLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkTnVsbGFiaWxpdHlTdWZmaXhQcm90b1IRbnVsbGFiaWxpdHlTdWZmaXgSMAoTb3JpZ2luYWxQYWNrYWdlUGF0aBgDIAEoCVITb3JpZ2luYWxQYWNrYWdlUGF0aBJ3ChNuYW1lZFBhcmFtZXRlclR5cGVzGAQgAygLMkUub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRGdW5jdGlvblR5cGVQcm90by5OYW1lZFBhcmFtZXRlclR5cGVzRW50cnlSE25hbWVkUGFyYW1ldGVyVHlwZXMSZQoNbmFtZWREZWZhdWx0cxgFIAMoCzI/Lm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkRnVuY3Rpb25UeXBlUHJvdG8uTmFtZWREZWZhdWx0c0VudHJ5Ug1uYW1lZERlZmF1bHRzEjIKFG5vcm1hbFBhcmFtZXRlck5hbWVzGAYgAygJUhRub3JtYWxQYXJhbWV0ZXJOYW1lcxJYChRub3JtYWxQYXJhbWV0ZXJUeXBlcxgHIAMoCzIkLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkVHlwZVByb3RvUhRub3JtYWxQYXJhbWV0ZXJUeXBlcxI2ChZvcHRpb25hbFBhcmFtZXRlck5hbWVzGAggAygJUhZvcHRpb25hbFBhcmFtZXRlck5hbWVzElwKFm9wdGlvbmFsUGFyYW1ldGVyVHlwZXMYCSADKAsyJC5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZFR5cGVQcm90b1IWb3B0aW9uYWxQYXJhbWV0ZXJUeXBlcxJECgpyZXR1cm5UeXBlGAogASgLMiQub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRUeXBlUHJvdG9SCnJldHVyblR5cGUSHAoJaXNGYWN0b3J5GAsgASgIUglpc0ZhY3RvcnkSTAoLdHlwZUZvcm1hbHMYDCADKAsyKi5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZFR5cGVGb3JtYWxQcm90b1ILdHlwZUZvcm1hbHMSaAoUZGVjbGFyYXRpb25Nb2RpZmllcnMYDSABKAsyNC5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZERlY2xhcmF0aW9uTW9kaWZpZXJzUHJvdG9SFGRlY2xhcmF0aW9uTW9kaWZpZXJzEkMKB2VsZW1lbnQYDiABKAsyJC5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZFR5cGVQcm90b0gAUgdlbGVtZW50iAEBGmwKGE5hbWVkUGFyYW1ldGVyVHlwZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRI6CgV2YWx1ZRgCIAEoCzIkLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkVHlwZVByb3RvUgV2YWx1ZToCOAEaeAoSTmFtZWREZWZhdWx0c0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EkwKBXZhbHVlGAIgASgLMjYub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWREZWZhdWx0Rm9ybWFsUGFyYW1ldGVyUHJvdG9SBXZhbHVlOgI4AUIKCghfZWxlbWVudA==');
@$core.Deprecated('Use swidGenericInstantiatorProtoDescriptor instead')
const SwidGenericInstantiatorProto$json = const {
  '1': 'SwidGenericInstantiatorProto',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'instantiatedGeneric',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidInstantiatedGenericProto',
      '10': 'instantiatedGeneric'
    },
  ],
};

/// Descriptor for `SwidGenericInstantiatorProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidGenericInstantiatorProtoDescriptor =
    $convert.base64Decode(
        'ChxTd2lkR2VuZXJpY0luc3RhbnRpYXRvclByb3RvEhIKBG5hbWUYASABKAlSBG5hbWUSZQoTaW5zdGFudGlhdGVkR2VuZXJpYxgCIAEoCzIzLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkSW5zdGFudGlhdGVkR2VuZXJpY1Byb3RvUhNpbnN0YW50aWF0ZWRHZW5lcmlj');
@$core.Deprecated('Use swidInstantiableGenericProtoDescriptor instead')
const SwidInstantiableGenericProto$json = const {
  '1': 'SwidInstantiableGenericProto',
  '2': const [
    const {
      '1': 'fromSwidClass',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidClassProto',
      '9': 0,
      '10': 'fromSwidClass'
    },
    const {
      '1': 'fromSwidInterface',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidInterfaceProto',
      '9': 0,
      '10': 'fromSwidInterface'
    },
    const {
      '1': 'fromSwidFunctionType',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidFunctionTypeProto',
      '9': 0,
      '10': 'fromSwidFunctionType'
    },
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

/// Descriptor for `SwidInstantiableGenericProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidInstantiableGenericProtoDescriptor =
    $convert.base64Decode(
        'ChxTd2lkSW5zdGFudGlhYmxlR2VuZXJpY1Byb3RvEk0KDWZyb21Td2lkQ2xhc3MYASABKAsyJS5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZENsYXNzUHJvdG9IAFINZnJvbVN3aWRDbGFzcxJZChFmcm9tU3dpZEludGVyZmFjZRgCIAEoCzIpLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkSW50ZXJmYWNlUHJvdG9IAFIRZnJvbVN3aWRJbnRlcmZhY2USYgoUZnJvbVN3aWRGdW5jdGlvblR5cGUYAyABKAsyLC5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZEZ1bmN0aW9uVHlwZVByb3RvSABSFGZyb21Td2lkRnVuY3Rpb25UeXBlQgcKBXZhbHVl');
@$core.Deprecated('Use swidInstantiatedGenericProtoDescriptor instead')
const SwidInstantiatedGenericProto$json = const {
  '1': 'SwidInstantiatedGenericProto',
  '2': const [
    const {
      '1': 'instantiableGeneric',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidInstantiableGenericProto',
      '10': 'instantiableGeneric'
    },
    const {
      '1': 'referenceDeclarationKind',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.org.hydro_sdk.swid.ir.SwidReferenceDeclarationKindProto',
      '10': 'referenceDeclarationKind'
    },
  ],
};

/// Descriptor for `SwidInstantiatedGenericProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidInstantiatedGenericProtoDescriptor =
    $convert.base64Decode(
        'ChxTd2lkSW5zdGFudGlhdGVkR2VuZXJpY1Byb3RvEmUKE2luc3RhbnRpYWJsZUdlbmVyaWMYAyABKAsyMy5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZEluc3RhbnRpYWJsZUdlbmVyaWNQcm90b1ITaW5zdGFudGlhYmxlR2VuZXJpYxJ0ChhyZWZlcmVuY2VEZWNsYXJhdGlvbktpbmQYBCABKA4yOC5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZFJlZmVyZW5jZURlY2xhcmF0aW9uS2luZFByb3RvUhhyZWZlcmVuY2VEZWNsYXJhdGlvbktpbmQ=');
@$core.Deprecated('Use swidIntegerLiteralProtoDescriptor instead')
const SwidIntegerLiteralProto$json = const {
  '1': 'SwidIntegerLiteralProto',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `SwidIntegerLiteralProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidIntegerLiteralProtoDescriptor =
    $convert.base64Decode(
        'ChdTd2lkSW50ZWdlckxpdGVyYWxQcm90bxIUCgV2YWx1ZRgBIAEoCVIFdmFsdWU=');
@$core.Deprecated('Use swidInterfaceProtoDescriptor instead')
const SwidInterfaceProto$json = const {
  '1': 'SwidInterfaceProto',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'nullabilitySuffix',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.org.hydro_sdk.swid.ir.SwidNullabilitySuffixProto',
      '10': 'nullabilitySuffix'
    },
    const {
      '1': 'originalPackagePath',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'originalPackagePath'
    },
    const {
      '1': 'typeArguments',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeArgumentTypeProto',
      '10': 'typeArguments'
    },
    const {
      '1': 'referenceDeclarationKind',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.org.hydro_sdk.swid.ir.SwidReferenceDeclarationKindProto',
      '10': 'referenceDeclarationKind'
    },
    const {
      '1': 'declarationModifiers',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidDeclarationModifiersProto',
      '10': 'declarationModifiers'
    },
  ],
};

/// Descriptor for `SwidInterfaceProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidInterfaceProtoDescriptor = $convert.base64Decode(
    'ChJTd2lkSW50ZXJmYWNlUHJvdG8SEgoEbmFtZRgBIAEoCVIEbmFtZRJfChFudWxsYWJpbGl0eVN1ZmZpeBgCIAEoDjIxLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkTnVsbGFiaWxpdHlTdWZmaXhQcm90b1IRbnVsbGFiaWxpdHlTdWZmaXgSMAoTb3JpZ2luYWxQYWNrYWdlUGF0aBgDIAEoCVITb3JpZ2luYWxQYWNrYWdlUGF0aBJWCg10eXBlQXJndW1lbnRzGAQgAygLMjAub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRUeXBlQXJndW1lbnRUeXBlUHJvdG9SDXR5cGVBcmd1bWVudHMSdAoYcmVmZXJlbmNlRGVjbGFyYXRpb25LaW5kGAUgASgOMjgub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRSZWZlcmVuY2VEZWNsYXJhdGlvbktpbmRQcm90b1IYcmVmZXJlbmNlRGVjbGFyYXRpb25LaW5kEmgKFGRlY2xhcmF0aW9uTW9kaWZpZXJzGAYgASgLMjQub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWREZWNsYXJhdGlvbk1vZGlmaWVyc1Byb3RvUhRkZWNsYXJhdGlvbk1vZGlmaWVycw==');
@$core.Deprecated('Use swidOriginatedAncestorTypeFormalProtoDescriptor instead')
const SwidOriginatedAncestorTypeFormalProto$json = const {
  '1': 'SwidOriginatedAncestorTypeFormalProto',
  '2': const [
    const {
      '1': 'swidTypeFormal',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeFormalProto',
      '10': 'swidTypeFormal'
    },
    const {
      '1': 'kind',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.org.hydro_sdk.swid.ir.SwidOriginatedAncestorTypeFormalKindProto',
      '10': 'kind'
    },
  ],
};

/// Descriptor for `SwidOriginatedAncestorTypeFormalProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidOriginatedAncestorTypeFormalProtoDescriptor =
    $convert.base64Decode(
        'CiVTd2lkT3JpZ2luYXRlZEFuY2VzdG9yVHlwZUZvcm1hbFByb3RvElIKDnN3aWRUeXBlRm9ybWFsGAEgASgLMioub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRUeXBlRm9ybWFsUHJvdG9SDnN3aWRUeXBlRm9ybWFsElQKBGtpbmQYAiABKA4yQC5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZE9yaWdpbmF0ZWRBbmNlc3RvclR5cGVGb3JtYWxLaW5kUHJvdG9SBGtpbmQ=');
@$core.Deprecated('Use swidStaticConstProtoDescriptor instead')
const SwidStaticConstProto$json = const {
  '1': 'SwidStaticConstProto',
  '2': const [
    const {
      '1': 'fromSwidBooleanLiteral',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidBooleanLiteralProto',
      '9': 0,
      '10': 'fromSwidBooleanLiteral'
    },
    const {
      '1': 'fromSwidStringLiteral',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStringLiteralProto',
      '9': 0,
      '10': 'fromSwidStringLiteral'
    },
    const {
      '1': 'fromSwidIntegerLiteral',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidIntegerLiteralProto',
      '9': 0,
      '10': 'fromSwidIntegerLiteral'
    },
    const {
      '1': 'fromDoubleLiteral',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidDoubleLiteralProto',
      '9': 0,
      '10': 'fromDoubleLiteral'
    },
    const {
      '1': 'fromSwidStaticConstFunctionInvocation',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstFunctionInvocationProto',
      '9': 0,
      '10': 'fromSwidStaticConstFunctionInvocation'
    },
    const {
      '1': 'fromSwidStaticConstFieldReference',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstFieldReferenceProto',
      '9': 0,
      '10': 'fromSwidStaticConstFieldReference'
    },
    const {
      '1': 'fromSwidStaticConstPrefixedExpression',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstPrefixedExpressionProto',
      '9': 0,
      '10': 'fromSwidStaticConstPrefixedExpression'
    },
    const {
      '1': 'fromSwidStaticConstBinaryExpression',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstBinaryExpressionProto',
      '9': 0,
      '10': 'fromSwidStaticConstBinaryExpression'
    },
    const {
      '1': 'fromSwidStaticConstPrefixedIdentifier',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstPrefixedIdentifierProto',
      '9': 0,
      '10': 'fromSwidStaticConstPrefixedIdentifier'
    },
    const {
      '1': 'fromSwidStaticConstIdentifier',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstIdentifierProto',
      '9': 0,
      '10': 'fromSwidStaticConstIdentifier'
    },
    const {
      '1': 'fromSwidStaticConstListLiteral',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstListLiteralProto',
      '9': 0,
      '10': 'fromSwidStaticConstListLiteral'
    },
    const {
      '1': 'fromSwidStaticConstMapLiteralEntry',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstMapLiteralEntryProto',
      '9': 0,
      '10': 'fromSwidStaticConstMapLiteralEntry'
    },
    const {
      '1': 'fromSwidStaticConstMapLiteral',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstMapLiteralProto',
      '9': 0,
      '10': 'fromSwidStaticConstMapLiteral'
    },
    const {
      '1': 'fromSwidStaticConstTopLevelVariableReference',
      '3': 14,
      '4': 1,
      '5': 11,
      '6':
          '.org.hydro_sdk.swid.ir.SwidStaticConstTopLevelVariableReferenceProto',
      '9': 0,
      '10': 'fromSwidStaticConstTopLevelVariableReference'
    },
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

/// Descriptor for `SwidStaticConstProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidStaticConstProtoDescriptor = $convert.base64Decode(
    'ChRTd2lkU3RhdGljQ29uc3RQcm90bxJoChZmcm9tU3dpZEJvb2xlYW5MaXRlcmFsGAEgASgLMi4ub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRCb29sZWFuTGl0ZXJhbFByb3RvSABSFmZyb21Td2lkQm9vbGVhbkxpdGVyYWwSZQoVZnJvbVN3aWRTdHJpbmdMaXRlcmFsGAIgASgLMi0ub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRTdHJpbmdMaXRlcmFsUHJvdG9IAFIVZnJvbVN3aWRTdHJpbmdMaXRlcmFsEmgKFmZyb21Td2lkSW50ZWdlckxpdGVyYWwYAyABKAsyLi5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZEludGVnZXJMaXRlcmFsUHJvdG9IAFIWZnJvbVN3aWRJbnRlZ2VyTGl0ZXJhbBJdChFmcm9tRG91YmxlTGl0ZXJhbBgEIAEoCzItLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkRG91YmxlTGl0ZXJhbFByb3RvSABSEWZyb21Eb3VibGVMaXRlcmFsEpUBCiVmcm9tU3dpZFN0YXRpY0NvbnN0RnVuY3Rpb25JbnZvY2F0aW9uGAUgASgLMj0ub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRTdGF0aWNDb25zdEZ1bmN0aW9uSW52b2NhdGlvblByb3RvSABSJWZyb21Td2lkU3RhdGljQ29uc3RGdW5jdGlvbkludm9jYXRpb24SiQEKIWZyb21Td2lkU3RhdGljQ29uc3RGaWVsZFJlZmVyZW5jZRgGIAEoCzI5Lm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkU3RhdGljQ29uc3RGaWVsZFJlZmVyZW5jZVByb3RvSABSIWZyb21Td2lkU3RhdGljQ29uc3RGaWVsZFJlZmVyZW5jZRKVAQolZnJvbVN3aWRTdGF0aWNDb25zdFByZWZpeGVkRXhwcmVzc2lvbhgHIAEoCzI9Lm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkU3RhdGljQ29uc3RQcmVmaXhlZEV4cHJlc3Npb25Qcm90b0gAUiVmcm9tU3dpZFN0YXRpY0NvbnN0UHJlZml4ZWRFeHByZXNzaW9uEo8BCiNmcm9tU3dpZFN0YXRpY0NvbnN0QmluYXJ5RXhwcmVzc2lvbhgIIAEoCzI7Lm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkU3RhdGljQ29uc3RCaW5hcnlFeHByZXNzaW9uUHJvdG9IAFIjZnJvbVN3aWRTdGF0aWNDb25zdEJpbmFyeUV4cHJlc3Npb24SlQEKJWZyb21Td2lkU3RhdGljQ29uc3RQcmVmaXhlZElkZW50aWZpZXIYCSABKAsyPS5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZFN0YXRpY0NvbnN0UHJlZml4ZWRJZGVudGlmaWVyUHJvdG9IAFIlZnJvbVN3aWRTdGF0aWNDb25zdFByZWZpeGVkSWRlbnRpZmllchJ9Ch1mcm9tU3dpZFN0YXRpY0NvbnN0SWRlbnRpZmllchgKIAEoCzI1Lm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkU3RhdGljQ29uc3RJZGVudGlmaWVyUHJvdG9IAFIdZnJvbVN3aWRTdGF0aWNDb25zdElkZW50aWZpZXISgAEKHmZyb21Td2lkU3RhdGljQ29uc3RMaXN0TGl0ZXJhbBgLIAEoCzI2Lm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkU3RhdGljQ29uc3RMaXN0TGl0ZXJhbFByb3RvSABSHmZyb21Td2lkU3RhdGljQ29uc3RMaXN0TGl0ZXJhbBKMAQoiZnJvbVN3aWRTdGF0aWNDb25zdE1hcExpdGVyYWxFbnRyeRgMIAEoCzI6Lm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkU3RhdGljQ29uc3RNYXBMaXRlcmFsRW50cnlQcm90b0gAUiJmcm9tU3dpZFN0YXRpY0NvbnN0TWFwTGl0ZXJhbEVudHJ5En0KHWZyb21Td2lkU3RhdGljQ29uc3RNYXBMaXRlcmFsGA0gASgLMjUub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRTdGF0aWNDb25zdE1hcExpdGVyYWxQcm90b0gAUh1mcm9tU3dpZFN0YXRpY0NvbnN0TWFwTGl0ZXJhbBKqAQosZnJvbVN3aWRTdGF0aWNDb25zdFRvcExldmVsVmFyaWFibGVSZWZlcmVuY2UYDiABKAsyRC5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZFN0YXRpY0NvbnN0VG9wTGV2ZWxWYXJpYWJsZVJlZmVyZW5jZVByb3RvSABSLGZyb21Td2lkU3RhdGljQ29uc3RUb3BMZXZlbFZhcmlhYmxlUmVmZXJlbmNlQgcKBXZhbHVl');
@$core.Deprecated('Use swidStaticConstBinaryExpressionProtoDescriptor instead')
const SwidStaticConstBinaryExpressionProto$json = const {
  '1': 'SwidStaticConstBinaryExpressionProto',
  '2': const [
    const {'1': 'operator', '3': 1, '4': 1, '5': 9, '10': 'operator'},
    const {
      '1': 'leftOperand',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstProto',
      '10': 'leftOperand'
    },
    const {
      '1': 'rightOperand',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstProto',
      '10': 'rightOperand'
    },
  ],
};

/// Descriptor for `SwidStaticConstBinaryExpressionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidStaticConstBinaryExpressionProtoDescriptor =
    $convert.base64Decode(
        'CiRTd2lkU3RhdGljQ29uc3RCaW5hcnlFeHByZXNzaW9uUHJvdG8SGgoIb3BlcmF0b3IYASABKAlSCG9wZXJhdG9yEk0KC2xlZnRPcGVyYW5kGAIgASgLMisub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRTdGF0aWNDb25zdFByb3RvUgtsZWZ0T3BlcmFuZBJPCgxyaWdodE9wZXJhbmQYAyABKAsyKy5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZFN0YXRpY0NvbnN0UHJvdG9SDHJpZ2h0T3BlcmFuZA==');
@$core.Deprecated('Use swidStaticConstFieldDeclarationProtoDescriptor instead')
const SwidStaticConstFieldDeclarationProto$json = const {
  '1': 'SwidStaticConstFieldDeclarationProto',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstProto',
      '10': 'value'
    },
  ],
};

/// Descriptor for `SwidStaticConstFieldDeclarationProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidStaticConstFieldDeclarationProtoDescriptor =
    $convert.base64Decode(
        'CiRTd2lkU3RhdGljQ29uc3RGaWVsZERlY2xhcmF0aW9uUHJvdG8SEgoEbmFtZRgBIAEoCVIEbmFtZRJBCgV2YWx1ZRgCIAEoCzIrLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkU3RhdGljQ29uc3RQcm90b1IFdmFsdWU=');
@$core.Deprecated('Use swidStaticConstFieldReferenceProtoDescriptor instead')
const SwidStaticConstFieldReferenceProto$json = const {
  '1': 'SwidStaticConstFieldReferenceProto',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `SwidStaticConstFieldReferenceProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidStaticConstFieldReferenceProtoDescriptor =
    $convert.base64Decode(
        'CiJTd2lkU3RhdGljQ29uc3RGaWVsZFJlZmVyZW5jZVByb3RvEhIKBG5hbWUYASABKAlSBG5hbWU=');
@$core
    .Deprecated('Use swidStaticConstFunctionInvocationProtoDescriptor instead')
const SwidStaticConstFunctionInvocationProto$json = const {
  '1': 'SwidStaticConstFunctionInvocationProto',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
    const {
      '1': 'staticType',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeProto',
      '10': 'staticType'
    },
    const {
      '1': 'normalParameters',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstProto',
      '10': 'normalParameters'
    },
    const {
      '1': 'namedParameters',
      '3': 4,
      '4': 3,
      '5': 11,
      '6':
          '.org.hydro_sdk.swid.ir.SwidStaticConstFunctionInvocationProto.NamedParametersEntry',
      '10': 'namedParameters'
    },
    const {
      '1': 'isConstructorInvocation',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'isConstructorInvocation'
    },
  ],
  '3': const [SwidStaticConstFunctionInvocationProto_NamedParametersEntry$json],
};

@$core
    .Deprecated('Use swidStaticConstFunctionInvocationProtoDescriptor instead')
const SwidStaticConstFunctionInvocationProto_NamedParametersEntry$json = const {
  '1': 'NamedParametersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstProto',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `SwidStaticConstFunctionInvocationProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidStaticConstFunctionInvocationProtoDescriptor =
    $convert.base64Decode(
        'CiZTd2lkU3RhdGljQ29uc3RGdW5jdGlvbkludm9jYXRpb25Qcm90bxIUCgV2YWx1ZRgBIAEoCVIFdmFsdWUSRAoKc3RhdGljVHlwZRgCIAEoCzIkLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkVHlwZVByb3RvUgpzdGF0aWNUeXBlElcKEG5vcm1hbFBhcmFtZXRlcnMYAyADKAsyKy5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZFN0YXRpY0NvbnN0UHJvdG9SEG5vcm1hbFBhcmFtZXRlcnMSfAoPbmFtZWRQYXJhbWV0ZXJzGAQgAygLMlIub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRTdGF0aWNDb25zdEZ1bmN0aW9uSW52b2NhdGlvblByb3RvLk5hbWVkUGFyYW1ldGVyc0VudHJ5Ug9uYW1lZFBhcmFtZXRlcnMSOAoXaXNDb25zdHJ1Y3Rvckludm9jYXRpb24YBSABKAhSF2lzQ29uc3RydWN0b3JJbnZvY2F0aW9uGm8KFE5hbWVkUGFyYW1ldGVyc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EkEKBXZhbHVlGAIgASgLMisub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRTdGF0aWNDb25zdFByb3RvUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use swidStaticConstIdentifierProtoDescriptor instead')
const SwidStaticConstIdentifierProto$json = const {
  '1': 'SwidStaticConstIdentifierProto',
  '2': const [
    const {'1': 'identifier', '3': 1, '4': 1, '5': 9, '10': 'identifier'},
    const {
      '1': 'enclosingType',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeProto',
      '10': 'enclosingType'
    },
  ],
};

/// Descriptor for `SwidStaticConstIdentifierProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidStaticConstIdentifierProtoDescriptor =
    $convert.base64Decode(
        'Ch5Td2lkU3RhdGljQ29uc3RJZGVudGlmaWVyUHJvdG8SHgoKaWRlbnRpZmllchgBIAEoCVIKaWRlbnRpZmllchJKCg1lbmNsb3NpbmdUeXBlGAIgASgLMiQub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRUeXBlUHJvdG9SDWVuY2xvc2luZ1R5cGU=');
@$core.Deprecated('Use swidStaticConstListLiteralProtoDescriptor instead')
const SwidStaticConstListLiteralProto$json = const {
  '1': 'SwidStaticConstListLiteralProto',
  '2': const [
    const {
      '1': 'elements',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstProto',
      '10': 'elements'
    },
    const {
      '1': 'staticType',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeProto',
      '10': 'staticType'
    },
  ],
};

/// Descriptor for `SwidStaticConstListLiteralProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidStaticConstListLiteralProtoDescriptor =
    $convert.base64Decode(
        'Ch9Td2lkU3RhdGljQ29uc3RMaXN0TGl0ZXJhbFByb3RvEkcKCGVsZW1lbnRzGAEgAygLMisub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRTdGF0aWNDb25zdFByb3RvUghlbGVtZW50cxJECgpzdGF0aWNUeXBlGAIgASgLMiQub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRUeXBlUHJvdG9SCnN0YXRpY1R5cGU=');
@$core.Deprecated('Use swidStaticConstMapLiteralProtoDescriptor instead')
const SwidStaticConstMapLiteralProto$json = const {
  '1': 'SwidStaticConstMapLiteralProto',
  '2': const [
    const {
      '1': 'elements',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstMapLiteralEntryProto',
      '10': 'elements'
    },
    const {
      '1': 'staticType',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeProto',
      '10': 'staticType'
    },
  ],
};

/// Descriptor for `SwidStaticConstMapLiteralProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidStaticConstMapLiteralProtoDescriptor =
    $convert.base64Decode(
        'Ch5Td2lkU3RhdGljQ29uc3RNYXBMaXRlcmFsUHJvdG8SVgoIZWxlbWVudHMYASADKAsyOi5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZFN0YXRpY0NvbnN0TWFwTGl0ZXJhbEVudHJ5UHJvdG9SCGVsZW1lbnRzEkQKCnN0YXRpY1R5cGUYAiABKAsyJC5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZFR5cGVQcm90b1IKc3RhdGljVHlwZQ==');
@$core.Deprecated('Use swidStaticConstMapLiteralEntryProtoDescriptor instead')
const SwidStaticConstMapLiteralEntryProto$json = const {
  '1': 'SwidStaticConstMapLiteralEntryProto',
  '2': const [
    const {
      '1': 'key',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstProto',
      '10': 'key'
    },
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstProto',
      '10': 'value'
    },
  ],
};

/// Descriptor for `SwidStaticConstMapLiteralEntryProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidStaticConstMapLiteralEntryProtoDescriptor =
    $convert.base64Decode(
        'CiNTd2lkU3RhdGljQ29uc3RNYXBMaXRlcmFsRW50cnlQcm90bxI9CgNrZXkYASABKAsyKy5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZFN0YXRpY0NvbnN0UHJvdG9SA2tleRJBCgV2YWx1ZRgCIAEoCzIrLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkU3RhdGljQ29uc3RQcm90b1IFdmFsdWU=');
@$core
    .Deprecated('Use swidStaticConstPrefixedExpressionProtoDescriptor instead')
const SwidStaticConstPrefixedExpressionProto$json = const {
  '1': 'SwidStaticConstPrefixedExpressionProto',
  '2': const [
    const {'1': 'prefix', '3': 1, '4': 1, '5': 9, '10': 'prefix'},
    const {
      '1': 'expression',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstProto',
      '10': 'expression'
    },
  ],
};

/// Descriptor for `SwidStaticConstPrefixedExpressionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidStaticConstPrefixedExpressionProtoDescriptor =
    $convert.base64Decode(
        'CiZTd2lkU3RhdGljQ29uc3RQcmVmaXhlZEV4cHJlc3Npb25Qcm90bxIWCgZwcmVmaXgYASABKAlSBnByZWZpeBJLCgpleHByZXNzaW9uGAIgASgLMisub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRTdGF0aWNDb25zdFByb3RvUgpleHByZXNzaW9u');
@$core
    .Deprecated('Use swidStaticConstPrefixedIdentifierProtoDescriptor instead')
const SwidStaticConstPrefixedIdentifierProto$json = const {
  '1': 'SwidStaticConstPrefixedIdentifierProto',
  '2': const [
    const {
      '1': 'prefix',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidInterfaceProto',
      '10': 'prefix'
    },
    const {
      '1': 'staticConstFieldReference',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstFieldReferenceProto',
      '10': 'staticConstFieldReference'
    },
  ],
};

/// Descriptor for `SwidStaticConstPrefixedIdentifierProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidStaticConstPrefixedIdentifierProtoDescriptor =
    $convert.base64Decode(
        'CiZTd2lkU3RhdGljQ29uc3RQcmVmaXhlZElkZW50aWZpZXJQcm90bxJBCgZwcmVmaXgYASABKAsyKS5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZEludGVyZmFjZVByb3RvUgZwcmVmaXgSdwoZc3RhdGljQ29uc3RGaWVsZFJlZmVyZW5jZRgCIAEoCzI5Lm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkU3RhdGljQ29uc3RGaWVsZFJlZmVyZW5jZVByb3RvUhlzdGF0aWNDb25zdEZpZWxkUmVmZXJlbmNl');
@$core.Deprecated(
    'Use swidStaticConstTopLevelVariableReferenceProtoDescriptor instead')
const SwidStaticConstTopLevelVariableReferenceProto$json = const {
  '1': 'SwidStaticConstTopLevelVariableReferenceProto',
  '2': const [
    const {'1': 'identifier', '3': 1, '4': 1, '5': 9, '10': 'identifier'},
    const {
      '1': 'topLevelReference',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeProto',
      '10': 'topLevelReference'
    },
  ],
};

/// Descriptor for `SwidStaticConstTopLevelVariableReferenceProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List
    swidStaticConstTopLevelVariableReferenceProtoDescriptor =
    $convert.base64Decode(
        'Ci1Td2lkU3RhdGljQ29uc3RUb3BMZXZlbFZhcmlhYmxlUmVmZXJlbmNlUHJvdG8SHgoKaWRlbnRpZmllchgBIAEoCVIKaWRlbnRpZmllchJSChF0b3BMZXZlbFJlZmVyZW5jZRgCIAEoCzIkLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkVHlwZVByb3RvUhF0b3BMZXZlbFJlZmVyZW5jZQ==');
@$core.Deprecated('Use swidStringLiteralProtoDescriptor instead')
const SwidStringLiteralProto$json = const {
  '1': 'SwidStringLiteralProto',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `SwidStringLiteralProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidStringLiteralProtoDescriptor =
    $convert.base64Decode(
        'ChZTd2lkU3RyaW5nTGl0ZXJhbFByb3RvEhQKBXZhbHVlGAEgASgJUgV2YWx1ZQ==');
@$core.Deprecated(
    'Use swidTopLevelStaticConstFieldDeclarationProtoDescriptor instead')
const SwidTopLevelStaticConstFieldDeclarationProto$json = const {
  '1': 'SwidTopLevelStaticConstFieldDeclarationProto',
  '2': const [
    const {
      '1': 'originalPackagePath',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'originalPackagePath'
    },
    const {
      '1': 'declaration',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidStaticConstFieldDeclarationProto',
      '10': 'declaration'
    },
  ],
};

/// Descriptor for `SwidTopLevelStaticConstFieldDeclarationProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List
    swidTopLevelStaticConstFieldDeclarationProtoDescriptor =
    $convert.base64Decode(
        'CixTd2lkVG9wTGV2ZWxTdGF0aWNDb25zdEZpZWxkRGVjbGFyYXRpb25Qcm90bxIwChNvcmlnaW5hbFBhY2thZ2VQYXRoGAEgASgJUhNvcmlnaW5hbFBhY2thZ2VQYXRoEl0KC2RlY2xhcmF0aW9uGAIgASgLMjsub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRTdGF0aWNDb25zdEZpZWxkRGVjbGFyYXRpb25Qcm90b1ILZGVjbGFyYXRpb24=');
@$core.Deprecated('Use swidTypeProtoDescriptor instead')
const SwidTypeProto$json = const {
  '1': 'SwidTypeProto',
  '2': const [
    const {
      '1': 'fromSwidInterface',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidInterfaceProto',
      '9': 0,
      '10': 'fromSwidInterface'
    },
    const {
      '1': 'fromSwidClass',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidClassProto',
      '9': 0,
      '10': 'fromSwidClass'
    },
    const {
      '1': 'fromSwidDefaultFormalParameter',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidDefaultFormalParameterProto',
      '9': 0,
      '10': 'fromSwidDefaultFormalParameter'
    },
    const {
      '1': 'fromSwidFunctionType',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidFunctionTypeProto',
      '9': 0,
      '10': 'fromSwidFunctionType'
    },
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

/// Descriptor for `SwidTypeProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidTypeProtoDescriptor = $convert.base64Decode(
    'Cg1Td2lkVHlwZVByb3RvElkKEWZyb21Td2lkSW50ZXJmYWNlGAEgASgLMikub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRJbnRlcmZhY2VQcm90b0gAUhFmcm9tU3dpZEludGVyZmFjZRJNCg1mcm9tU3dpZENsYXNzGAIgASgLMiUub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRDbGFzc1Byb3RvSABSDWZyb21Td2lkQ2xhc3MSgAEKHmZyb21Td2lkRGVmYXVsdEZvcm1hbFBhcmFtZXRlchgDIAEoCzI2Lm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkRGVmYXVsdEZvcm1hbFBhcmFtZXRlclByb3RvSABSHmZyb21Td2lkRGVmYXVsdEZvcm1hbFBhcmFtZXRlchJiChRmcm9tU3dpZEZ1bmN0aW9uVHlwZRgEIAEoCzIsLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkRnVuY3Rpb25UeXBlUHJvdG9IAFIUZnJvbVN3aWRGdW5jdGlvblR5cGVCBwoFdmFsdWU=');
@$core.Deprecated('Use swidTypeArgumentElementProtoDescriptor instead')
const SwidTypeArgumentElementProto$json = const {
  '1': 'SwidTypeArgumentElementProto',
  '2': const [
    const {
      '1': 'bound',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeProto',
      '10': 'bound'
    },
  ],
};

/// Descriptor for `SwidTypeArgumentElementProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidTypeArgumentElementProtoDescriptor =
    $convert.base64Decode(
        'ChxTd2lkVHlwZUFyZ3VtZW50RWxlbWVudFByb3RvEjoKBWJvdW5kGAEgASgLMiQub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRUeXBlUHJvdG9SBWJvdW5k');
@$core.Deprecated('Use swidTypeArgumentTypeProtoDescriptor instead')
const SwidTypeArgumentTypeProto$json = const {
  '1': 'SwidTypeArgumentTypeProto',
  '2': const [
    const {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeProto',
      '10': 'type'
    },
    const {
      '1': 'element',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidElementProto',
      '9': 0,
      '10': 'element',
      '17': true
    },
  ],
  '8': const [
    const {'1': '_element'},
  ],
};

/// Descriptor for `SwidTypeArgumentTypeProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidTypeArgumentTypeProtoDescriptor =
    $convert.base64Decode(
        'ChlTd2lkVHlwZUFyZ3VtZW50VHlwZVByb3RvEjgKBHR5cGUYASABKAsyJC5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZFR5cGVQcm90b1IEdHlwZRJGCgdlbGVtZW50GAIgASgLMicub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRFbGVtZW50UHJvdG9IAFIHZWxlbWVudIgBAUIKCghfZWxlbWVudA==');
@$core.Deprecated('Use swidTypeFormalProtoDescriptor instead')
const SwidTypeFormalProto$json = const {
  '1': 'SwidTypeFormalProto',
  '2': const [
    const {
      '1': 'value',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeFormalValueProto',
      '10': 'value'
    },
    const {
      '1': 'swidReferenceDeclarationKind',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.org.hydro_sdk.swid.ir.SwidReferenceDeclarationKindProto',
      '10': 'swidReferenceDeclarationKind'
    },
    const {
      '1': 'swidTypeFormalBound',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidTypeFormalBoundProto',
      '9': 0,
      '10': 'swidTypeFormalBound',
      '17': true
    },
  ],
  '8': const [
    const {'1': '_swidTypeFormalBound'},
  ],
};

/// Descriptor for `SwidTypeFormalProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidTypeFormalProtoDescriptor = $convert.base64Decode(
    'ChNTd2lkVHlwZUZvcm1hbFByb3RvEkUKBXZhbHVlGAEgASgLMi8ub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRUeXBlRm9ybWFsVmFsdWVQcm90b1IFdmFsdWUSfAocc3dpZFJlZmVyZW5jZURlY2xhcmF0aW9uS2luZBgCIAEoDjI4Lm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkUmVmZXJlbmNlRGVjbGFyYXRpb25LaW5kUHJvdG9SHHN3aWRSZWZlcmVuY2VEZWNsYXJhdGlvbktpbmQSZgoTc3dpZFR5cGVGb3JtYWxCb3VuZBgDIAEoCzIvLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkVHlwZUZvcm1hbEJvdW5kUHJvdG9IAFITc3dpZFR5cGVGb3JtYWxCb3VuZIgBAUIWChRfc3dpZFR5cGVGb3JtYWxCb3VuZA==');
@$core.Deprecated('Use swidTypeFormalBoundProtoDescriptor instead')
const SwidTypeFormalBoundProto$json = const {
  '1': 'SwidTypeFormalBoundProto',
  '2': const [
    const {
      '1': 'fromSwidInterface',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidInterfaceProto',
      '9': 0,
      '10': 'fromSwidInterface'
    },
    const {
      '1': 'fromSwidFunctionType',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidFunctionTypeProto',
      '9': 0,
      '10': 'fromSwidFunctionType'
    },
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

/// Descriptor for `SwidTypeFormalBoundProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidTypeFormalBoundProtoDescriptor =
    $convert.base64Decode(
        'ChhTd2lkVHlwZUZvcm1hbEJvdW5kUHJvdG8SWQoRZnJvbVN3aWRJbnRlcmZhY2UYASABKAsyKS5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZEludGVyZmFjZVByb3RvSABSEWZyb21Td2lkSW50ZXJmYWNlEmIKFGZyb21Td2lkRnVuY3Rpb25UeXBlGAIgASgLMiwub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRGdW5jdGlvblR5cGVQcm90b0gAUhRmcm9tU3dpZEZ1bmN0aW9uVHlwZUIHCgV2YWx1ZQ==');
@$core.Deprecated('Use swidTypeFormalValueProtoDescriptor instead')
const SwidTypeFormalValueProto$json = const {
  '1': 'SwidTypeFormalValueProto',
  '2': const [
    const {
      '1': 'fromString',
      '3': 1,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'fromString'
    },
    const {
      '1': 'fromSwidClass',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidClassProto',
      '9': 0,
      '10': 'fromSwidClass'
    },
    const {
      '1': 'fromSwidInterface',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidInterfaceProto',
      '9': 0,
      '10': 'fromSwidInterface'
    },
    const {
      '1': 'fromSwidFunctionType',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidFunctionTypeProto',
      '9': 0,
      '10': 'fromSwidFunctionType'
    },
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

/// Descriptor for `SwidTypeFormalValueProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidTypeFormalValueProtoDescriptor =
    $convert.base64Decode(
        'ChhTd2lkVHlwZUZvcm1hbFZhbHVlUHJvdG8SIAoKZnJvbVN0cmluZxgBIAEoCUgAUgpmcm9tU3RyaW5nEk0KDWZyb21Td2lkQ2xhc3MYAiABKAsyJS5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZENsYXNzUHJvdG9IAFINZnJvbVN3aWRDbGFzcxJZChFmcm9tU3dpZEludGVyZmFjZRgDIAEoCzIpLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkSW50ZXJmYWNlUHJvdG9IAFIRZnJvbVN3aWRJbnRlcmZhY2USYgoUZnJvbVN3aWRGdW5jdGlvblR5cGUYBCABKAsyLC5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZEZ1bmN0aW9uVHlwZVByb3RvSABSFGZyb21Td2lkRnVuY3Rpb25UeXBlQgcKBXZhbHVl');
