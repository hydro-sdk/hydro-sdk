///
//  Generated code. Do not modify.
//  source: ast.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use swidiNullabilitySuffixProtoDescriptor instead')
const SwidiNullabilitySuffixProto$json = const {
  '1': 'SwidiNullabilitySuffixProto',
  '2': const [
    const {'1': 'question', '2': 0},
    const {'1': 'none', '2': 1},
  ],
};

/// Descriptor for `SwidiNullabilitySuffixProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List swidiNullabilitySuffixProtoDescriptor =
    $convert.base64Decode(
        'ChtTd2lkaU51bGxhYmlsaXR5U3VmZml4UHJvdG8SDAoIcXVlc3Rpb24QABIICgRub25lEAE=');
@$core.Deprecated('Use swidiReferenceDeclarationKindProtoDescriptor instead')
const SwidiReferenceDeclarationKindProto$json = const {
  '1': 'SwidiReferenceDeclarationKindProto',
  '2': const [
    const {'1': 'classElement', '2': 0},
    const {'1': 'enumElement', '2': 1},
    const {'1': 'voidType', '2': 2},
    const {'1': 'typeParameterType', '2': 3},
    const {'1': 'dynamicType', '2': 4},
    const {'1': 'unknown', '2': 5},
  ],
};

/// Descriptor for `SwidiReferenceDeclarationKindProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List swidiReferenceDeclarationKindProtoDescriptor =
    $convert.base64Decode(
        'CiJTd2lkaVJlZmVyZW5jZURlY2xhcmF0aW9uS2luZFByb3RvEhAKDGNsYXNzRWxlbWVudBAAEg8KC2VudW1FbGVtZW50EAESDAoIdm9pZFR5cGUQAhIVChF0eXBlUGFyYW1ldGVyVHlwZRADEg8KC2R5bmFtaWNUeXBlEAQSCwoHdW5rbm93bhAF');
@$core.Deprecated('Use swidiAnnotationProtoDescriptor instead')
const SwidiAnnotationProto$json = const {
  '1': 'SwidiAnnotationProto',
  '2': const [
    const {
      '1': 'value',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstProto',
      '10': 'value'
    },
  ],
};

/// Descriptor for `SwidiAnnotationProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiAnnotationProtoDescriptor = $convert.base64Decode(
    'ChRTd2lkaUFubm90YXRpb25Qcm90bxI8CgV2YWx1ZRgBIAEoCzImLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkaUNvbnN0UHJvdG9SBXZhbHVl');
@$core.Deprecated('Use swidiAnnotationListProtoDescriptor instead')
const SwidiAnnotationListProto$json = const {
  '1': 'SwidiAnnotationListProto',
  '2': const [
    const {
      '1': 'annotationList',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiAnnotationProto',
      '10': 'annotationList'
    },
  ],
};

/// Descriptor for `SwidiAnnotationListProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiAnnotationListProtoDescriptor =
    $convert.base64Decode(
        'ChhTd2lkaUFubm90YXRpb25MaXN0UHJvdG8SUwoOYW5ub3RhdGlvbkxpc3QYASADKAsyKy5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlBbm5vdGF0aW9uUHJvdG9SDmFubm90YXRpb25MaXN0');
@$core.Deprecated('Use swidiClassProtoDescriptor instead')
const SwidiClassProto$json = const {
  '1': 'SwidiClassProto',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'libraryScopePrefix',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiLibraryScopePrefixProto',
      '10': 'libraryScopePrefix'
    },
    const {
      '1': 'methods',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiFunctionDeclarationProto',
      '10': 'methods'
    },
    const {
      '1': 'staticMethods',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiFunctionDeclarationProto',
      '10': 'staticMethods'
    },
    const {
      '1': 'shortHandOverride',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstProto',
      '10': 'shortHandOverride'
    },
  ],
};

/// Descriptor for `SwidiClassProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiClassProtoDescriptor = $convert.base64Decode(
    'Cg9Td2lkaUNsYXNzUHJvdG8SEgoEbmFtZRgBIAEoCVIEbmFtZRJjChJsaWJyYXJ5U2NvcGVQcmVmaXgYAiABKAsyMy5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlMaWJyYXJ5U2NvcGVQcmVmaXhQcm90b1ISbGlicmFyeVNjb3BlUHJlZml4Ek4KB21ldGhvZHMYAyADKAsyNC5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlGdW5jdGlvbkRlY2xhcmF0aW9uUHJvdG9SB21ldGhvZHMSWgoNc3RhdGljTWV0aG9kcxgEIAMoCzI0Lm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkaUZ1bmN0aW9uRGVjbGFyYXRpb25Qcm90b1INc3RhdGljTWV0aG9kcxJUChFzaG9ydEhhbmRPdmVycmlkZRgFIAEoCzImLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkaUNvbnN0UHJvdG9SEXNob3J0SGFuZE92ZXJyaWRl');
@$core.Deprecated('Use swidiConstProtoDescriptor instead')
const SwidiConstProto$json = const {
  '1': 'SwidiConstProto',
  '2': const [
    const {
      '1': 'fromSwidiEmptyConst',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiEmptyConstProto',
      '9': 0,
      '10': 'fromSwidiEmptyConst'
    },
    const {
      '1': 'fromSwidiConstNumber',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstNumberProto',
      '9': 0,
      '10': 'fromSwidiConstNumber'
    },
    const {
      '1': 'fromSwidiConstString',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstStringProto',
      '9': 0,
      '10': 'fromSwidiConstString'
    },
    const {
      '1': 'fromSwidiConstFunctionInvocation',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstFunctionInvocationProto',
      '9': 0,
      '10': 'fromSwidiConstFunctionInvocation'
    },
    const {
      '1': 'fromSwidiConstMap',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstMapProto',
      '9': 0,
      '10': 'fromSwidiConstMap'
    },
    const {
      '1': 'fromSwidiConstBoolean',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstBooleanProto',
      '9': 0,
      '10': 'fromSwidiConstBoolean'
    },
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

/// Descriptor for `SwidiConstProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiConstProtoDescriptor = $convert.base64Decode(
    'Cg9Td2lkaUNvbnN0UHJvdG8SXwoTZnJvbVN3aWRpRW1wdHlDb25zdBgBIAEoCzIrLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkaUVtcHR5Q29uc3RQcm90b0gAUhNmcm9tU3dpZGlFbXB0eUNvbnN0EmIKFGZyb21Td2lkaUNvbnN0TnVtYmVyGAIgASgLMiwub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpQ29uc3ROdW1iZXJQcm90b0gAUhRmcm9tU3dpZGlDb25zdE51bWJlchJiChRmcm9tU3dpZGlDb25zdFN0cmluZxgDIAEoCzIsLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkaUNvbnN0U3RyaW5nUHJvdG9IAFIUZnJvbVN3aWRpQ29uc3RTdHJpbmcShgEKIGZyb21Td2lkaUNvbnN0RnVuY3Rpb25JbnZvY2F0aW9uGAQgASgLMjgub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpQ29uc3RGdW5jdGlvbkludm9jYXRpb25Qcm90b0gAUiBmcm9tU3dpZGlDb25zdEZ1bmN0aW9uSW52b2NhdGlvbhJZChFmcm9tU3dpZGlDb25zdE1hcBgFIAEoCzIpLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkaUNvbnN0TWFwUHJvdG9IAFIRZnJvbVN3aWRpQ29uc3RNYXASZQoVZnJvbVN3aWRpQ29uc3RCb29sZWFuGAYgASgLMi0ub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpQ29uc3RCb29sZWFuUHJvdG9IAFIVZnJvbVN3aWRpQ29uc3RCb29sZWFuQgcKBXZhbHVl');
@$core.Deprecated('Use swidiConstBooleanProtoDescriptor instead')
const SwidiConstBooleanProto$json = const {
  '1': 'SwidiConstBooleanProto',
  '2': const [
    const {
      '1': 'fromSwidiConstBooleanTrue',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstBooleanTrueProto',
      '9': 0,
      '10': 'fromSwidiConstBooleanTrue'
    },
    const {
      '1': 'SwidiConstBooleanFalse',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstBooleanFalseProto',
      '9': 0,
      '10': 'SwidiConstBooleanFalse'
    },
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

/// Descriptor for `SwidiConstBooleanProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiConstBooleanProtoDescriptor =
    $convert.base64Decode(
        'ChZTd2lkaUNvbnN0Qm9vbGVhblByb3RvEnEKGWZyb21Td2lkaUNvbnN0Qm9vbGVhblRydWUYASABKAsyMS5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlDb25zdEJvb2xlYW5UcnVlUHJvdG9IAFIZZnJvbVN3aWRpQ29uc3RCb29sZWFuVHJ1ZRJsChZTd2lkaUNvbnN0Qm9vbGVhbkZhbHNlGAIgASgLMjIub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpQ29uc3RCb29sZWFuRmFsc2VQcm90b0gAUhZTd2lkaUNvbnN0Qm9vbGVhbkZhbHNlQgcKBXZhbHVl');
@$core.Deprecated('Use swidiConstBooleanFalseProtoDescriptor instead')
const SwidiConstBooleanFalseProto$json = const {
  '1': 'SwidiConstBooleanFalseProto',
};

/// Descriptor for `SwidiConstBooleanFalseProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiConstBooleanFalseProtoDescriptor =
    $convert.base64Decode('ChtTd2lkaUNvbnN0Qm9vbGVhbkZhbHNlUHJvdG8=');
@$core.Deprecated('Use swidiConstBooleanTrueProtoDescriptor instead')
const SwidiConstBooleanTrueProto$json = const {
  '1': 'SwidiConstBooleanTrueProto',
};

/// Descriptor for `SwidiConstBooleanTrueProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiConstBooleanTrueProtoDescriptor =
    $convert.base64Decode('ChpTd2lkaUNvbnN0Qm9vbGVhblRydWVQcm90bw==');
@$core.Deprecated('Use swidiConstFunctionInvocationProtoDescriptor instead')
const SwidiConstFunctionInvocationProto$json = const {
  '1': 'SwidiConstFunctionInvocationProto',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
    const {
      '1': 'positionalParameters',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstProto',
      '10': 'positionalParameters'
    },
    const {
      '1': 'namedParameters',
      '3': 3,
      '4': 3,
      '5': 11,
      '6':
          '.org.hydro_sdk.swid.ir.SwidiConstFunctionInvocationProto.NamedParametersEntry',
      '10': 'namedParameters'
    },
  ],
  '3': const [SwidiConstFunctionInvocationProto_NamedParametersEntry$json],
};

@$core.Deprecated('Use swidiConstFunctionInvocationProtoDescriptor instead')
const SwidiConstFunctionInvocationProto_NamedParametersEntry$json = const {
  '1': 'NamedParametersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstProto',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `SwidiConstFunctionInvocationProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiConstFunctionInvocationProtoDescriptor =
    $convert.base64Decode(
        'CiFTd2lkaUNvbnN0RnVuY3Rpb25JbnZvY2F0aW9uUHJvdG8SFAoFdmFsdWUYASABKAlSBXZhbHVlEloKFHBvc2l0aW9uYWxQYXJhbWV0ZXJzGAIgAygLMiYub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpQ29uc3RQcm90b1IUcG9zaXRpb25hbFBhcmFtZXRlcnMSdwoPbmFtZWRQYXJhbWV0ZXJzGAMgAygLMk0ub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpQ29uc3RGdW5jdGlvbkludm9jYXRpb25Qcm90by5OYW1lZFBhcmFtZXRlcnNFbnRyeVIPbmFtZWRQYXJhbWV0ZXJzGmoKFE5hbWVkUGFyYW1ldGVyc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EjwKBXZhbHVlGAIgASgLMiYub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpQ29uc3RQcm90b1IFdmFsdWU6AjgB');
@$core.Deprecated('Use swidiConstTupleProtoDescriptor instead')
const SwidiConstTupleProto$json = const {
  '1': 'SwidiConstTupleProto',
  '2': const [
    const {
      '1': 'item1',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstProto',
      '10': 'item1'
    },
    const {
      '1': 'item2',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstProto',
      '10': 'item2'
    },
  ],
};

/// Descriptor for `SwidiConstTupleProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiConstTupleProtoDescriptor = $convert.base64Decode(
    'ChRTd2lkaUNvbnN0VHVwbGVQcm90bxI8CgVpdGVtMRgBIAEoCzImLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkaUNvbnN0UHJvdG9SBWl0ZW0xEjwKBWl0ZW0yGAIgASgLMiYub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpQ29uc3RQcm90b1IFaXRlbTI=');
@$core.Deprecated('Use swidiConstMapProtoDescriptor instead')
const SwidiConstMapProto$json = const {
  '1': 'SwidiConstMapProto',
  '2': const [
    const {
      '1': 'entries',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstTupleProto',
      '10': 'entries'
    },
  ],
};

/// Descriptor for `SwidiConstMapProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiConstMapProtoDescriptor = $convert.base64Decode(
    'ChJTd2lkaUNvbnN0TWFwUHJvdG8SRQoHZW50cmllcxgBIAMoCzIrLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkaUNvbnN0VHVwbGVQcm90b1IHZW50cmllcw==');
@$core.Deprecated('Use swidiConstNamedParameterProtoDescriptor instead')
const SwidiConstNamedParameterProto$json = const {
  '1': 'SwidiConstNamedParameterProto',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstProto',
      '10': 'value'
    },
  ],
};

/// Descriptor for `SwidiConstNamedParameterProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiConstNamedParameterProtoDescriptor =
    $convert.base64Decode(
        'Ch1Td2lkaUNvbnN0TmFtZWRQYXJhbWV0ZXJQcm90bxISCgRuYW1lGAEgASgJUgRuYW1lEjwKBXZhbHVlGAIgASgLMiYub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpQ29uc3RQcm90b1IFdmFsdWU=');
@$core.Deprecated('Use swidiConstNamedParameterListProtoDescriptor instead')
const SwidiConstNamedParameterListProto$json = const {
  '1': 'SwidiConstNamedParameterListProto',
  '2': const [
    const {
      '1': 'parameters',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstNamedParameterProto',
      '10': 'parameters'
    },
  ],
};

/// Descriptor for `SwidiConstNamedParameterListProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiConstNamedParameterListProtoDescriptor =
    $convert.base64Decode(
        'CiFTd2lkaUNvbnN0TmFtZWRQYXJhbWV0ZXJMaXN0UHJvdG8SVAoKcGFyYW1ldGVycxgBIAMoCzI0Lm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkaUNvbnN0TmFtZWRQYXJhbWV0ZXJQcm90b1IKcGFyYW1ldGVycw==');
@$core.Deprecated('Use swidiConstNumberProtoDescriptor instead')
const SwidiConstNumberProto$json = const {
  '1': 'SwidiConstNumberProto',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `SwidiConstNumberProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiConstNumberProtoDescriptor =
    $convert.base64Decode(
        'ChVTd2lkaUNvbnN0TnVtYmVyUHJvdG8SFAoFdmFsdWUYASABKAlSBXZhbHVl');
@$core.Deprecated('Use swidiConstParameterListProtoDescriptor instead')
const SwidiConstParameterListProto$json = const {
  '1': 'SwidiConstParameterListProto',
  '2': const [
    const {
      '1': 'positionalParameters',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstProto',
      '10': 'positionalParameters'
    },
    const {
      '1': 'namedParameters',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstNamedParameterProto',
      '10': 'namedParameters'
    },
  ],
};

/// Descriptor for `SwidiConstParameterListProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiConstParameterListProtoDescriptor =
    $convert.base64Decode(
        'ChxTd2lkaUNvbnN0UGFyYW1ldGVyTGlzdFByb3RvEloKFHBvc2l0aW9uYWxQYXJhbWV0ZXJzGAEgAygLMiYub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpQ29uc3RQcm90b1IUcG9zaXRpb25hbFBhcmFtZXRlcnMSXgoPbmFtZWRQYXJhbWV0ZXJzGAIgAygLMjQub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpQ29uc3ROYW1lZFBhcmFtZXRlclByb3RvUg9uYW1lZFBhcmFtZXRlcnM=');
@$core
    .Deprecated('Use swidiConstPositionalParameterListProtoDescriptor instead')
const SwidiConstPositionalParameterListProto$json = const {
  '1': 'SwidiConstPositionalParameterListProto',
  '2': const [
    const {
      '1': 'parameters',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstProto',
      '10': 'parameters'
    },
  ],
};

/// Descriptor for `SwidiConstPositionalParameterListProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiConstPositionalParameterListProtoDescriptor =
    $convert.base64Decode(
        'CiZTd2lkaUNvbnN0UG9zaXRpb25hbFBhcmFtZXRlckxpc3RQcm90bxJGCgpwYXJhbWV0ZXJzGAEgAygLMiYub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpQ29uc3RQcm90b1IKcGFyYW1ldGVycw==');
@$core.Deprecated('Use swidiConstStringProtoDescriptor instead')
const SwidiConstStringProto$json = const {
  '1': 'SwidiConstStringProto',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `SwidiConstStringProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiConstStringProtoDescriptor =
    $convert.base64Decode(
        'ChVTd2lkaUNvbnN0U3RyaW5nUHJvdG8SFAoFdmFsdWUYASABKAlSBXZhbHVl');
@$core.Deprecated('Use swidiDeclarationProtoDescriptor instead')
const SwidiDeclarationProto$json = const {
  '1': 'SwidiDeclarationProto',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'type',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiTypeProto',
      '10': 'type'
    },
    const {
      '1': 'defaultConstValue',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstProto',
      '10': 'defaultConstValue'
    },
  ],
};

/// Descriptor for `SwidiDeclarationProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiDeclarationProtoDescriptor = $convert.base64Decode(
    'ChVTd2lkaURlY2xhcmF0aW9uUHJvdG8SEgoEbmFtZRgBIAEoCVIEbmFtZRI5CgR0eXBlGAIgASgLMiUub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpVHlwZVByb3RvUgR0eXBlElQKEWRlZmF1bHRDb25zdFZhbHVlGAMgASgLMiYub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpQ29uc3RQcm90b1IRZGVmYXVsdENvbnN0VmFsdWU=');
@$core.Deprecated('Use swidiEmptyConstProtoDescriptor instead')
const SwidiEmptyConstProto$json = const {
  '1': 'SwidiEmptyConstProto',
};

/// Descriptor for `SwidiEmptyConstProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiEmptyConstProtoDescriptor =
    $convert.base64Decode('ChRTd2lkaUVtcHR5Q29uc3RQcm90bw==');
@$core.Deprecated('Use swidiFunctionDeclarationProtoDescriptor instead')
const SwidiFunctionDeclarationProto$json = const {
  '1': 'SwidiFunctionDeclarationProto',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'returnType',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiTypeProto',
      '10': 'returnType'
    },
    const {
      '1': 'positionalParameters',
      '3': 3,
      '4': 3,
      '5': 11,
      '6':
          '.org.hydro_sdk.swid.ir.SwidiFunctionDeclarationPositionalParameterProto',
      '10': 'positionalParameters'
    },
    const {
      '1': 'optionalParameters',
      '3': 4,
      '4': 3,
      '5': 11,
      '6':
          '.org.hydro_sdk.swid.ir.SwidiFunctionDeclarationOptionalParameterProto',
      '10': 'optionalParameters'
    },
    const {
      '1': 'namedParameters',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiFunctionDeclarationNamedParameterProto',
      '10': 'namedParameters'
    },
    const {
      '1': 'typeFormals',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiTypeFormalProto',
      '10': 'typeFormals'
    },
    const {
      '1': 'shortHandOverride',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiConstProto',
      '10': 'shortHandOverride'
    },
  ],
};

/// Descriptor for `SwidiFunctionDeclarationProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiFunctionDeclarationProtoDescriptor =
    $convert.base64Decode(
        'Ch1Td2lkaUZ1bmN0aW9uRGVjbGFyYXRpb25Qcm90bxISCgRuYW1lGAEgASgJUgRuYW1lEkUKCnJldHVyblR5cGUYAiABKAsyJS5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlUeXBlUHJvdG9SCnJldHVyblR5cGUSewoUcG9zaXRpb25hbFBhcmFtZXRlcnMYAyADKAsyRy5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlGdW5jdGlvbkRlY2xhcmF0aW9uUG9zaXRpb25hbFBhcmFtZXRlclByb3RvUhRwb3NpdGlvbmFsUGFyYW1ldGVycxJ1ChJvcHRpb25hbFBhcmFtZXRlcnMYBCADKAsyRS5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlGdW5jdGlvbkRlY2xhcmF0aW9uT3B0aW9uYWxQYXJhbWV0ZXJQcm90b1ISb3B0aW9uYWxQYXJhbWV0ZXJzEmwKD25hbWVkUGFyYW1ldGVycxgFIAMoCzJCLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkaUZ1bmN0aW9uRGVjbGFyYXRpb25OYW1lZFBhcmFtZXRlclByb3RvUg9uYW1lZFBhcmFtZXRlcnMSTQoLdHlwZUZvcm1hbHMYBiADKAsyKy5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlUeXBlRm9ybWFsUHJvdG9SC3R5cGVGb3JtYWxzElQKEXNob3J0SGFuZE92ZXJyaWRlGAcgASgLMiYub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpQ29uc3RQcm90b1IRc2hvcnRIYW5kT3ZlcnJpZGU=');
@$core.Deprecated(
    'Use swidiFunctionDeclarationNamedParameterProtoDescriptor instead')
const SwidiFunctionDeclarationNamedParameterProto$json = const {
  '1': 'SwidiFunctionDeclarationNamedParameterProto',
  '2': const [
    const {
      '1': 'declaration',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiDeclarationProto',
      '10': 'declaration'
    },
  ],
};

/// Descriptor for `SwidiFunctionDeclarationNamedParameterProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List
    swidiFunctionDeclarationNamedParameterProtoDescriptor =
    $convert.base64Decode(
        'CitTd2lkaUZ1bmN0aW9uRGVjbGFyYXRpb25OYW1lZFBhcmFtZXRlclByb3RvEk4KC2RlY2xhcmF0aW9uGAEgASgLMiwub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpRGVjbGFyYXRpb25Qcm90b1ILZGVjbGFyYXRpb24=');
@$core.Deprecated(
    'Use swidiFunctionDeclarationOptionalParameterProtoDescriptor instead')
const SwidiFunctionDeclarationOptionalParameterProto$json = const {
  '1': 'SwidiFunctionDeclarationOptionalParameterProto',
  '2': const [
    const {
      '1': 'declaration',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiDeclarationProto',
      '10': 'declaration'
    },
  ],
};

/// Descriptor for `SwidiFunctionDeclarationOptionalParameterProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List
    swidiFunctionDeclarationOptionalParameterProtoDescriptor =
    $convert.base64Decode(
        'Ci5Td2lkaUZ1bmN0aW9uRGVjbGFyYXRpb25PcHRpb25hbFBhcmFtZXRlclByb3RvEk4KC2RlY2xhcmF0aW9uGAEgASgLMiwub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpRGVjbGFyYXRpb25Qcm90b1ILZGVjbGFyYXRpb24=');
@$core.Deprecated(
    'Use swidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProtoDescriptor instead')
const SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto$json =
    const {
  '1': 'SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto',
  '2': const [
    const {
      '1': 'fromSwidiFunctionDeclarationPositionalParameter',
      '3': 1,
      '4': 1,
      '5': 11,
      '6':
          '.org.hydro_sdk.swid.ir.SwidiFunctionDeclarationPositionalParameterProto',
      '9': 0,
      '10': 'fromSwidiFunctionDeclarationPositionalParameter'
    },
    const {
      '1': 'fromSwidiFunctionDeclarationOptionalParameter',
      '3': 2,
      '4': 1,
      '5': 11,
      '6':
          '.org.hydro_sdk.swid.ir.SwidiFunctionDeclarationOptionalParameterProto',
      '9': 0,
      '10': 'fromSwidiFunctionDeclarationOptionalParameter'
    },
    const {
      '1': 'fromSwidiFunctionDeclarationNamedParameter',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiFunctionDeclarationNamedParameterProto',
      '9': 0,
      '10': 'fromSwidiFunctionDeclarationNamedParameter'
    },
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

/// Descriptor for `SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List
    swidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProtoDescriptor =
    $convert.base64Decode(
        'CkFTd2lkaUZ1bmN0aW9uRGVjbGFyYXRpb25Qb3NpdGlvbmFsT3JPcHRpb25hbE9yTmFtZWRQYXJhbWV0ZXJQcm90bxKzAQovZnJvbVN3aWRpRnVuY3Rpb25EZWNsYXJhdGlvblBvc2l0aW9uYWxQYXJhbWV0ZXIYASABKAsyRy5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlGdW5jdGlvbkRlY2xhcmF0aW9uUG9zaXRpb25hbFBhcmFtZXRlclByb3RvSABSL2Zyb21Td2lkaUZ1bmN0aW9uRGVjbGFyYXRpb25Qb3NpdGlvbmFsUGFyYW1ldGVyEq0BCi1mcm9tU3dpZGlGdW5jdGlvbkRlY2xhcmF0aW9uT3B0aW9uYWxQYXJhbWV0ZXIYAiABKAsyRS5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlGdW5jdGlvbkRlY2xhcmF0aW9uT3B0aW9uYWxQYXJhbWV0ZXJQcm90b0gAUi1mcm9tU3dpZGlGdW5jdGlvbkRlY2xhcmF0aW9uT3B0aW9uYWxQYXJhbWV0ZXISpAEKKmZyb21Td2lkaUZ1bmN0aW9uRGVjbGFyYXRpb25OYW1lZFBhcmFtZXRlchgDIAEoCzJCLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkaUZ1bmN0aW9uRGVjbGFyYXRpb25OYW1lZFBhcmFtZXRlclByb3RvSABSKmZyb21Td2lkaUZ1bmN0aW9uRGVjbGFyYXRpb25OYW1lZFBhcmFtZXRlckIHCgV2YWx1ZQ==');
@$core.Deprecated(
    'Use swidiFunctionDeclarationPositionalParameterProtoDescriptor instead')
const SwidiFunctionDeclarationPositionalParameterProto$json = const {
  '1': 'SwidiFunctionDeclarationPositionalParameterProto',
  '2': const [
    const {
      '1': 'declaration',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiDeclarationProto',
      '10': 'declaration'
    },
  ],
};

/// Descriptor for `SwidiFunctionDeclarationPositionalParameterProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List
    swidiFunctionDeclarationPositionalParameterProtoDescriptor =
    $convert.base64Decode(
        'CjBTd2lkaUZ1bmN0aW9uRGVjbGFyYXRpb25Qb3NpdGlvbmFsUGFyYW1ldGVyUHJvdG8STgoLZGVjbGFyYXRpb24YASABKAsyLC5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlEZWNsYXJhdGlvblByb3RvUgtkZWNsYXJhdGlvbg==');
@$core.Deprecated('Use swidiFunctionTypeProtoDescriptor instead')
const SwidiFunctionTypeProto$json = const {
  '1': 'SwidiFunctionTypeProto',
  '2': const [
    const {
      '1': 'returnType',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiTypeProto',
      '10': 'returnType'
    },
    const {
      '1': 'positionalParameters',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiFunctionTypePositionalParameterProto',
      '10': 'positionalParameters'
    },
    const {
      '1': 'optionalParameters',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiFunctionTypeOptionalParameterProto',
      '10': 'optionalParameters'
    },
    const {
      '1': 'namedParameters',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiFunctionTypeNamedParameterProto',
      '10': 'namedParameters'
    },
    const {
      '1': 'nullabilitySuffix',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.org.hydro_sdk.swid.ir.SwidiNullabilitySuffixProto',
      '10': 'nullabilitySuffix'
    },
    const {
      '1': 'typeFormals',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiTypeFormalProto',
      '10': 'typeFormals'
    },
    const {
      '1': 'annotations',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiAnnotationProto',
      '10': 'annotations'
    },
  ],
};

/// Descriptor for `SwidiFunctionTypeProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiFunctionTypeProtoDescriptor =
    $convert.base64Decode(
        'ChZTd2lkaUZ1bmN0aW9uVHlwZVByb3RvEkUKCnJldHVyblR5cGUYASABKAsyJS5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlUeXBlUHJvdG9SCnJldHVyblR5cGUSdAoUcG9zaXRpb25hbFBhcmFtZXRlcnMYAiADKAsyQC5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlGdW5jdGlvblR5cGVQb3NpdGlvbmFsUGFyYW1ldGVyUHJvdG9SFHBvc2l0aW9uYWxQYXJhbWV0ZXJzEm4KEm9wdGlvbmFsUGFyYW1ldGVycxgDIAMoCzI+Lm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkaUZ1bmN0aW9uVHlwZU9wdGlvbmFsUGFyYW1ldGVyUHJvdG9SEm9wdGlvbmFsUGFyYW1ldGVycxJlCg9uYW1lZFBhcmFtZXRlcnMYBCADKAsyOy5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlGdW5jdGlvblR5cGVOYW1lZFBhcmFtZXRlclByb3RvUg9uYW1lZFBhcmFtZXRlcnMSYAoRbnVsbGFiaWxpdHlTdWZmaXgYBSABKA4yMi5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlOdWxsYWJpbGl0eVN1ZmZpeFByb3RvUhFudWxsYWJpbGl0eVN1ZmZpeBJNCgt0eXBlRm9ybWFscxgGIAEoCzIrLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkaVR5cGVGb3JtYWxQcm90b1ILdHlwZUZvcm1hbHMSTQoLYW5ub3RhdGlvbnMYByABKAsyKy5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlBbm5vdGF0aW9uUHJvdG9SC2Fubm90YXRpb25z');
@$core.Deprecated('Use swidiFunctionTypeNamedParameterProtoDescriptor instead')
const SwidiFunctionTypeNamedParameterProto$json = const {
  '1': 'SwidiFunctionTypeNamedParameterProto',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'type',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiTypeProto',
      '10': 'type'
    },
  ],
};

/// Descriptor for `SwidiFunctionTypeNamedParameterProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiFunctionTypeNamedParameterProtoDescriptor =
    $convert.base64Decode(
        'CiRTd2lkaUZ1bmN0aW9uVHlwZU5hbWVkUGFyYW1ldGVyUHJvdG8SEgoEbmFtZRgBIAEoCVIEbmFtZRI5CgR0eXBlGAIgASgLMiUub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpVHlwZVByb3RvUgR0eXBl');
@$core
    .Deprecated('Use swidiFunctionTypeOptionalParameterProtoDescriptor instead')
const SwidiFunctionTypeOptionalParameterProto$json = const {
  '1': 'SwidiFunctionTypeOptionalParameterProto',
  '2': const [
    const {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiTypeProto',
      '10': 'type'
    },
  ],
};

/// Descriptor for `SwidiFunctionTypeOptionalParameterProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiFunctionTypeOptionalParameterProtoDescriptor =
    $convert.base64Decode(
        'CidTd2lkaUZ1bmN0aW9uVHlwZU9wdGlvbmFsUGFyYW1ldGVyUHJvdG8SOQoEdHlwZRgBIAEoCzIlLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkaVR5cGVQcm90b1IEdHlwZQ==');
@$core.Deprecated(
    'Use swidiFunctionTypePositionalOrOptionalOrNamedParameterProtoDescriptor instead')
const SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto$json = const {
  '1': 'SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto',
  '2': const [
    const {
      '1': 'fromSwidiFunctionTypePositionalParameter',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiFunctionTypePositionalParameterProto',
      '9': 0,
      '10': 'fromSwidiFunctionTypePositionalParameter'
    },
    const {
      '1': 'fromSwidiFunctionTypeOptionalParameter',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiFunctionTypeOptionalParameterProto',
      '9': 0,
      '10': 'fromSwidiFunctionTypeOptionalParameter'
    },
    const {
      '1': 'fromSwidiFunctionTypeNamedParameter',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiFunctionTypeNamedParameterProto',
      '9': 0,
      '10': 'fromSwidiFunctionTypeNamedParameter'
    },
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

/// Descriptor for `SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List
    swidiFunctionTypePositionalOrOptionalOrNamedParameterProtoDescriptor =
    $convert.base64Decode(
        'CjpTd2lkaUZ1bmN0aW9uVHlwZVBvc2l0aW9uYWxPck9wdGlvbmFsT3JOYW1lZFBhcmFtZXRlclByb3RvEp4BCihmcm9tU3dpZGlGdW5jdGlvblR5cGVQb3NpdGlvbmFsUGFyYW1ldGVyGAEgASgLMkAub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpRnVuY3Rpb25UeXBlUG9zaXRpb25hbFBhcmFtZXRlclByb3RvSABSKGZyb21Td2lkaUZ1bmN0aW9uVHlwZVBvc2l0aW9uYWxQYXJhbWV0ZXISmAEKJmZyb21Td2lkaUZ1bmN0aW9uVHlwZU9wdGlvbmFsUGFyYW1ldGVyGAIgASgLMj4ub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpRnVuY3Rpb25UeXBlT3B0aW9uYWxQYXJhbWV0ZXJQcm90b0gAUiZmcm9tU3dpZGlGdW5jdGlvblR5cGVPcHRpb25hbFBhcmFtZXRlchKPAQojZnJvbVN3aWRpRnVuY3Rpb25UeXBlTmFtZWRQYXJhbWV0ZXIYAyABKAsyOy5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlGdW5jdGlvblR5cGVOYW1lZFBhcmFtZXRlclByb3RvSABSI2Zyb21Td2lkaUZ1bmN0aW9uVHlwZU5hbWVkUGFyYW1ldGVyQgcKBXZhbHVl');
@$core.Deprecated(
    'Use swidiFunctionTypePositionalParameterProtoDescriptor instead')
const SwidiFunctionTypePositionalParameterProto$json = const {
  '1': 'SwidiFunctionTypePositionalParameterProto',
  '2': const [
    const {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiTypeProto',
      '10': 'type'
    },
  ],
};

/// Descriptor for `SwidiFunctionTypePositionalParameterProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List
    swidiFunctionTypePositionalParameterProtoDescriptor = $convert.base64Decode(
        'CilTd2lkaUZ1bmN0aW9uVHlwZVBvc2l0aW9uYWxQYXJhbWV0ZXJQcm90bxI5CgR0eXBlGAEgASgLMiUub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpVHlwZVByb3RvUgR0eXBl');
@$core.Deprecated('Use swidiInterfaceProtoDescriptor instead')
const SwidiInterfaceProto$json = const {
  '1': 'SwidiInterfaceProto',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'libraryScopePrefix',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiLibraryScopePrefixProto',
      '10': 'libraryScopePrefix'
    },
    const {
      '1': 'referenceDeclarationPrefix',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiReferenceDeclarationPrefixProto',
      '10': 'referenceDeclarationPrefix'
    },
    const {
      '1': 'nullabilitySuffix',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.org.hydro_sdk.swid.ir.SwidiNullabilitySuffixProto',
      '10': 'nullabilitySuffix'
    },
    const {
      '1': 'typeArguments',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiInterfaceProto',
      '10': 'typeArguments'
    },
    const {
      '1': 'annotations',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiAnnotationProto',
      '10': 'annotations'
    },
  ],
};

/// Descriptor for `SwidiInterfaceProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiInterfaceProtoDescriptor = $convert.base64Decode(
    'ChNTd2lkaUludGVyZmFjZVByb3RvEhIKBG5hbWUYASABKAlSBG5hbWUSYwoSbGlicmFyeVNjb3BlUHJlZml4GAIgASgLMjMub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpTGlicmFyeVNjb3BlUHJlZml4UHJvdG9SEmxpYnJhcnlTY29wZVByZWZpeBJ7ChpyZWZlcmVuY2VEZWNsYXJhdGlvblByZWZpeBgDIAEoCzI7Lm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkaVJlZmVyZW5jZURlY2xhcmF0aW9uUHJlZml4UHJvdG9SGnJlZmVyZW5jZURlY2xhcmF0aW9uUHJlZml4EmAKEW51bGxhYmlsaXR5U3VmZml4GAQgASgOMjIub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpTnVsbGFiaWxpdHlTdWZmaXhQcm90b1IRbnVsbGFiaWxpdHlTdWZmaXgSUAoNdHlwZUFyZ3VtZW50cxgFIAMoCzIqLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkaUludGVyZmFjZVByb3RvUg10eXBlQXJndW1lbnRzEk0KC2Fubm90YXRpb25zGAYgAygLMisub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpQW5ub3RhdGlvblByb3RvUgthbm5vdGF0aW9ucw==');
@$core.Deprecated('Use swidiLibraryScopePrefixProtoDescriptor instead')
const SwidiLibraryScopePrefixProto$json = const {
  '1': 'SwidiLibraryScopePrefixProto',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `SwidiLibraryScopePrefixProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiLibraryScopePrefixProtoDescriptor =
    $convert.base64Decode(
        'ChxTd2lkaUxpYnJhcnlTY29wZVByZWZpeFByb3RvEhIKBG5hbWUYASABKAlSBG5hbWU=');
@$core.Deprecated('Use swidiReferenceDeclarationPrefixProtoDescriptor instead')
const SwidiReferenceDeclarationPrefixProto$json = const {
  '1': 'SwidiReferenceDeclarationPrefixProto',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `SwidiReferenceDeclarationPrefixProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiReferenceDeclarationPrefixProtoDescriptor =
    $convert.base64Decode(
        'CiRTd2lkaVJlZmVyZW5jZURlY2xhcmF0aW9uUHJlZml4UHJvdG8SEgoEbmFtZRgBIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use swidiStaticFunctionDeclarationProtoDescriptor instead')
const SwidiStaticFunctionDeclarationProto$json = const {
  '1': 'SwidiStaticFunctionDeclarationProto',
  '2': const [
    const {
      '1': 'functionDeclaration',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiFunctionDeclarationProto',
      '10': 'functionDeclaration'
    },
  ],
};

/// Descriptor for `SwidiStaticFunctionDeclarationProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiStaticFunctionDeclarationProtoDescriptor =
    $convert.base64Decode(
        'CiNTd2lkaVN0YXRpY0Z1bmN0aW9uRGVjbGFyYXRpb25Qcm90bxJmChNmdW5jdGlvbkRlY2xhcmF0aW9uGAEgASgLMjQub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpRnVuY3Rpb25EZWNsYXJhdGlvblByb3RvUhNmdW5jdGlvbkRlY2xhcmF0aW9u');
@$core.Deprecated('Use swidiTypeProtoDescriptor instead')
const SwidiTypeProto$json = const {
  '1': 'SwidiTypeProto',
  '2': const [
    const {
      '1': 'fromSwidiInterface',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiInterfaceProto',
      '9': 0,
      '10': 'fromSwidiInterface'
    },
    const {
      '1': 'fromSwidiFunctionType',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiFunctionTypeProto',
      '9': 0,
      '10': 'fromSwidiFunctionType'
    },
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

/// Descriptor for `SwidiTypeProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiTypeProtoDescriptor = $convert.base64Decode(
    'Cg5Td2lkaVR5cGVQcm90bxJcChJmcm9tU3dpZGlJbnRlcmZhY2UYASABKAsyKi5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlJbnRlcmZhY2VQcm90b0gAUhJmcm9tU3dpZGlJbnRlcmZhY2USZQoVZnJvbVN3aWRpRnVuY3Rpb25UeXBlGAIgASgLMi0ub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpRnVuY3Rpb25UeXBlUHJvdG9IAFIVZnJvbVN3aWRpRnVuY3Rpb25UeXBlQgcKBXZhbHVl');
@$core.Deprecated('Use swidiTypeArgumentListProtoDescriptor instead')
const SwidiTypeArgumentListProto$json = const {
  '1': 'SwidiTypeArgumentListProto',
  '2': const [
    const {
      '1': 'typeList',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiInterfaceProto',
      '10': 'typeList'
    },
  ],
};

/// Descriptor for `SwidiTypeArgumentListProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiTypeArgumentListProtoDescriptor =
    $convert.base64Decode(
        'ChpTd2lkaVR5cGVBcmd1bWVudExpc3RQcm90bxJGCgh0eXBlTGlzdBgBIAMoCzIqLm9yZy5oeWRyb19zZGsuc3dpZC5pci5Td2lkaUludGVyZmFjZVByb3RvUgh0eXBlTGlzdA==');
@$core.Deprecated('Use swidiTypeFormalProtoDescriptor instead')
const SwidiTypeFormalProto$json = const {
  '1': 'SwidiTypeFormalProto',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'bound',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiInterfaceProto',
      '10': 'bound'
    },
  ],
};

/// Descriptor for `SwidiTypeFormalProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiTypeFormalProtoDescriptor = $convert.base64Decode(
    'ChRTd2lkaVR5cGVGb3JtYWxQcm90bxISCgRuYW1lGAEgASgJUgRuYW1lEkAKBWJvdW5kGAIgASgLMioub3JnLmh5ZHJvX3Nkay5zd2lkLmlyLlN3aWRpSW50ZXJmYWNlUHJvdG9SBWJvdW5k');
@$core.Deprecated('Use swidiTypeFormalListProtoDescriptor instead')
const SwidiTypeFormalListProto$json = const {
  '1': 'SwidiTypeFormalListProto',
  '2': const [
    const {
      '1': 'typeFormalList',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.org.hydro_sdk.swid.ir.SwidiTypeFormalProto',
      '10': 'typeFormalList'
    },
  ],
};

/// Descriptor for `SwidiTypeFormalListProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swidiTypeFormalListProtoDescriptor =
    $convert.base64Decode(
        'ChhTd2lkaVR5cGVGb3JtYWxMaXN0UHJvdG8SUwoOdHlwZUZvcm1hbExpc3QYASADKAsyKy5vcmcuaHlkcm9fc2RrLnN3aWQuaXIuU3dpZGlUeXBlRm9ybWFsUHJvdG9SDnR5cGVGb3JtYWxMaXN0');
