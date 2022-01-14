///
//  Generated code. Do not modify.
//  source: ir.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class SwidNullabilitySuffixProto extends $pb.ProtobufEnum {
  static const SwidNullabilitySuffixProto question =
      SwidNullabilitySuffixProto._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'question');
  static const SwidNullabilitySuffixProto star = SwidNullabilitySuffixProto._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'star');
  static const SwidNullabilitySuffixProto none = SwidNullabilitySuffixProto._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'none');

  static const $core.List<SwidNullabilitySuffixProto> values =
      <SwidNullabilitySuffixProto>[
    question,
    star,
    none,
  ];

  static final $core.Map<$core.int, SwidNullabilitySuffixProto> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static SwidNullabilitySuffixProto? valueOf($core.int value) =>
      _byValue[value];

  const SwidNullabilitySuffixProto._($core.int v, $core.String n) : super(v, n);
}

class SwidOriginatedAncestorTypeFormalKindProto extends $pb.ProtobufEnum {
  static const SwidOriginatedAncestorTypeFormalKindProto kClass =
      SwidOriginatedAncestorTypeFormalKindProto._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'kClass');
  static const SwidOriginatedAncestorTypeFormalKindProto kMethod =
      SwidOriginatedAncestorTypeFormalKindProto._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'kMethod');

  static const $core.List<SwidOriginatedAncestorTypeFormalKindProto> values =
      <SwidOriginatedAncestorTypeFormalKindProto>[
    kClass,
    kMethod,
  ];

  static final $core.Map<$core.int, SwidOriginatedAncestorTypeFormalKindProto>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static SwidOriginatedAncestorTypeFormalKindProto? valueOf($core.int value) =>
      _byValue[value];

  const SwidOriginatedAncestorTypeFormalKindProto._($core.int v, $core.String n)
      : super(v, n);
}

class SwidReferenceDeclarationKindProto extends $pb.ProtobufEnum {
  static const SwidReferenceDeclarationKindProto classElement =
      SwidReferenceDeclarationKindProto._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'classElement');
  static const SwidReferenceDeclarationKindProto enumElement =
      SwidReferenceDeclarationKindProto._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'enumElement');
  static const SwidReferenceDeclarationKindProto voidType =
      SwidReferenceDeclarationKindProto._(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'voidType');
  static const SwidReferenceDeclarationKindProto typeParameterType =
      SwidReferenceDeclarationKindProto._(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'typeParameterType');
  static const SwidReferenceDeclarationKindProto dynamicType =
      SwidReferenceDeclarationKindProto._(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'dynamicType');
  static const SwidReferenceDeclarationKindProto unknown =
      SwidReferenceDeclarationKindProto._(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'unknown');

  static const $core.List<SwidReferenceDeclarationKindProto> values =
      <SwidReferenceDeclarationKindProto>[
    classElement,
    enumElement,
    voidType,
    typeParameterType,
    dynamicType,
    unknown,
  ];

  static final $core.Map<$core.int, SwidReferenceDeclarationKindProto>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static SwidReferenceDeclarationKindProto? valueOf($core.int value) =>
      _byValue[value];

  const SwidReferenceDeclarationKindProto._($core.int v, $core.String n)
      : super(v, n);
}
