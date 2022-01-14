///
//  Generated code. Do not modify.
//  source: ast.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class SwidiNullabilitySuffixProto extends $pb.ProtobufEnum {
  static const SwidiNullabilitySuffixProto question =
      SwidiNullabilitySuffixProto._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'question');
  static const SwidiNullabilitySuffixProto none = SwidiNullabilitySuffixProto._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'none');

  static const $core.List<SwidiNullabilitySuffixProto> values =
      <SwidiNullabilitySuffixProto>[
    question,
    none,
  ];

  static final $core.Map<$core.int, SwidiNullabilitySuffixProto> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static SwidiNullabilitySuffixProto? valueOf($core.int value) =>
      _byValue[value];

  const SwidiNullabilitySuffixProto._($core.int v, $core.String n)
      : super(v, n);
}

class SwidiReferenceDeclarationKindProto extends $pb.ProtobufEnum {
  static const SwidiReferenceDeclarationKindProto classElement =
      SwidiReferenceDeclarationKindProto._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'classElement');
  static const SwidiReferenceDeclarationKindProto enumElement =
      SwidiReferenceDeclarationKindProto._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'enumElement');
  static const SwidiReferenceDeclarationKindProto voidType =
      SwidiReferenceDeclarationKindProto._(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'voidType');
  static const SwidiReferenceDeclarationKindProto typeParameterType =
      SwidiReferenceDeclarationKindProto._(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'typeParameterType');
  static const SwidiReferenceDeclarationKindProto dynamicType =
      SwidiReferenceDeclarationKindProto._(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'dynamicType');
  static const SwidiReferenceDeclarationKindProto unknown =
      SwidiReferenceDeclarationKindProto._(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'unknown');

  static const $core.List<SwidiReferenceDeclarationKindProto> values =
      <SwidiReferenceDeclarationKindProto>[
    classElement,
    enumElement,
    voidType,
    typeParameterType,
    dynamicType,
    unknown,
  ];

  static final $core.Map<$core.int, SwidiReferenceDeclarationKindProto>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static SwidiReferenceDeclarationKindProto? valueOf($core.int value) =>
      _byValue[value];

  const SwidiReferenceDeclarationKindProto._($core.int v, $core.String n)
      : super(v, n);
}
