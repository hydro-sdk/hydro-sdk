///
//  Generated code. Do not modify.
//  source: ir.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ir.pbenum.dart';

export 'ir.pbenum.dart';

class SwidBooleanLiteralProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidBooleanLiteralProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value')
    ..hasRequiredFields = false;

  SwidBooleanLiteralProto._() : super();
  factory SwidBooleanLiteralProto({
    $core.String? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory SwidBooleanLiteralProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidBooleanLiteralProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidBooleanLiteralProto clone() =>
      SwidBooleanLiteralProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidBooleanLiteralProto copyWith(
          void Function(SwidBooleanLiteralProto) updates) =>
      super.copyWith((message) => updates(message as SwidBooleanLiteralProto))
          as SwidBooleanLiteralProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidBooleanLiteralProto create() => SwidBooleanLiteralProto._();
  SwidBooleanLiteralProto createEmptyInstance() => create();
  static $pb.PbList<SwidBooleanLiteralProto> createRepeated() =>
      $pb.PbList<SwidBooleanLiteralProto>();
  @$core.pragma('dart2js:noInline')
  static SwidBooleanLiteralProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidBooleanLiteralProto>(create);
  static SwidBooleanLiteralProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class StringTupleProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'StringTupleProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'item1')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'item2')
    ..hasRequiredFields = false;

  StringTupleProto._() : super();
  factory StringTupleProto({
    $core.String? item1,
    $core.String? item2,
  }) {
    final _result = create();
    if (item1 != null) {
      _result.item1 = item1;
    }
    if (item2 != null) {
      _result.item2 = item2;
    }
    return _result;
  }
  factory StringTupleProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StringTupleProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StringTupleProto clone() => StringTupleProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StringTupleProto copyWith(void Function(StringTupleProto) updates) =>
      super.copyWith((message) => updates(message as StringTupleProto))
          as StringTupleProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StringTupleProto create() => StringTupleProto._();
  StringTupleProto createEmptyInstance() => create();
  static $pb.PbList<StringTupleProto> createRepeated() =>
      $pb.PbList<StringTupleProto>();
  @$core.pragma('dart2js:noInline')
  static StringTupleProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringTupleProto>(create);
  static StringTupleProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get item1 => $_getSZ(0);
  @$pb.TagNumber(1)
  set item1($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItem1() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem1() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get item2 => $_getSZ(1);
  @$pb.TagNumber(2)
  set item2($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasItem2() => $_has(1);
  @$pb.TagNumber(2)
  void clearItem2() => clearField(2);
}

class SwidDeclarationModifiersProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidDeclarationModifiersProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ignoredTransforms',
        protoName: 'ignoredTransforms')
    ..pPS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ignoredAnalyses',
        protoName: 'ignoredAnalyses')
    ..pc<StringTupleProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'overridenTransforms',
        $pb.PbFieldType.PM,
        protoName: 'overridenTransforms',
        subBuilder: StringTupleProto.create)
    ..aOB(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isAbstract',
        protoName: 'isAbstract')
    ..aOB(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isGetter',
        protoName: 'isGetter')
    ..aOB(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isOperator',
        protoName: 'isOperator')
    ..aOB(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isSetter',
        protoName: 'isSetter')
    ..aOB(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isStatic',
        protoName: 'isStatic')
    ..aOB(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isSynthetic',
        protoName: 'isSynthetic')
    ..aOB(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isCovariant',
        protoName: 'isCovariant')
    ..aOB(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isExplicitlyCovariant',
        protoName: 'isExplicitlyCovariant')
    ..aOB(
        12,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasAlwaysThrows',
        protoName: 'hasAlwaysThrows')
    ..aOB(
        13,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasDeprecated',
        protoName: 'hasDeprecated')
    ..aOB(
        14,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasFactory',
        protoName: 'hasFactory')
    ..aOB(
        15,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasImplicitReturnType',
        protoName: 'hasImplicitReturnType')
    ..aOB(
        16,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasIsTest',
        protoName: 'hasIsTest')
    ..aOB(
        17,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasIsTestGroup',
        protoName: 'hasIsTestGroup')
    ..aOB(
        18,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasJS',
        protoName: 'hasJS')
    ..aOB(
        19,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasLiteral',
        protoName: 'hasLiteral')
    ..aOB(
        20,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasMustCallSuper',
        protoName: 'hasMustCallSuper')
    ..aOB(
        21,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasNonVirtual',
        protoName: 'hasNonVirtual')
    ..aOB(
        22,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasOptionalTypeArgs',
        protoName: 'hasOptionalTypeArgs')
    ..aOB(
        23,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasOverride',
        protoName: 'hasOverride')
    ..aOB(
        24,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasProtected',
        protoName: 'hasProtected')
    ..aOB(
        25,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasRequired',
        protoName: 'hasRequired')
    ..aOB(
        26,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasSealed',
        protoName: 'hasSealed')
    ..aOB(
        27,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasVisibleForTemplate',
        protoName: 'hasVisibleForTemplate')
    ..aOB(
        28,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasVisibleForTesting',
        protoName: 'hasVisibleForTesting')
    ..aOB(
        29,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isPublic',
        protoName: 'isPublic')
    ..hasRequiredFields = false;

  SwidDeclarationModifiersProto._() : super();
  factory SwidDeclarationModifiersProto({
    $core.Iterable<$core.String>? ignoredTransforms,
    $core.Iterable<$core.String>? ignoredAnalyses,
    $core.Iterable<StringTupleProto>? overridenTransforms,
    $core.bool? isAbstract,
    $core.bool? isGetter,
    $core.bool? isOperator,
    $core.bool? isSetter,
    $core.bool? isStatic,
    $core.bool? isSynthetic,
    $core.bool? isCovariant,
    $core.bool? isExplicitlyCovariant,
    $core.bool? hasAlwaysThrows,
    $core.bool? hasDeprecated,
    $core.bool? hasFactory,
    $core.bool? hasImplicitReturnType,
    $core.bool? hasIsTest,
    $core.bool? hasIsTestGroup,
    $core.bool? hasJS,
    $core.bool? hasLiteral,
    $core.bool? hasMustCallSuper,
    $core.bool? hasNonVirtual,
    $core.bool? hasOptionalTypeArgs,
    $core.bool? hasOverride,
    $core.bool? hasProtected,
    $core.bool? hasRequired,
    $core.bool? hasSealed,
    $core.bool? hasVisibleForTemplate,
    $core.bool? hasVisibleForTesting,
    $core.bool? isPublic,
  }) {
    final _result = create();
    if (ignoredTransforms != null) {
      _result.ignoredTransforms.addAll(ignoredTransforms);
    }
    if (ignoredAnalyses != null) {
      _result.ignoredAnalyses.addAll(ignoredAnalyses);
    }
    if (overridenTransforms != null) {
      _result.overridenTransforms.addAll(overridenTransforms);
    }
    if (isAbstract != null) {
      _result.isAbstract = isAbstract;
    }
    if (isGetter != null) {
      _result.isGetter = isGetter;
    }
    if (isOperator != null) {
      _result.isOperator = isOperator;
    }
    if (isSetter != null) {
      _result.isSetter = isSetter;
    }
    if (isStatic != null) {
      _result.isStatic = isStatic;
    }
    if (isSynthetic != null) {
      _result.isSynthetic = isSynthetic;
    }
    if (isCovariant != null) {
      _result.isCovariant = isCovariant;
    }
    if (isExplicitlyCovariant != null) {
      _result.isExplicitlyCovariant = isExplicitlyCovariant;
    }
    if (hasAlwaysThrows != null) {
      _result.hasAlwaysThrows = hasAlwaysThrows;
    }
    if (hasDeprecated != null) {
      _result.hasDeprecated = hasDeprecated;
    }
    if (hasFactory != null) {
      _result.hasFactory = hasFactory;
    }
    if (hasImplicitReturnType != null) {
      _result.hasImplicitReturnType = hasImplicitReturnType;
    }
    if (hasIsTest != null) {
      _result.hasIsTest = hasIsTest;
    }
    if (hasIsTestGroup != null) {
      _result.hasIsTestGroup = hasIsTestGroup;
    }
    if (hasJS != null) {
      _result.hasJS = hasJS;
    }
    if (hasLiteral != null) {
      _result.hasLiteral = hasLiteral;
    }
    if (hasMustCallSuper != null) {
      _result.hasMustCallSuper = hasMustCallSuper;
    }
    if (hasNonVirtual != null) {
      _result.hasNonVirtual = hasNonVirtual;
    }
    if (hasOptionalTypeArgs != null) {
      _result.hasOptionalTypeArgs = hasOptionalTypeArgs;
    }
    if (hasOverride != null) {
      _result.hasOverride = hasOverride;
    }
    if (hasProtected != null) {
      _result.hasProtected = hasProtected;
    }
    if (hasRequired != null) {
      _result.hasRequired = hasRequired;
    }
    if (hasSealed != null) {
      _result.hasSealed = hasSealed;
    }
    if (hasVisibleForTemplate != null) {
      _result.hasVisibleForTemplate = hasVisibleForTemplate;
    }
    if (hasVisibleForTesting != null) {
      _result.hasVisibleForTesting = hasVisibleForTesting;
    }
    if (isPublic != null) {
      _result.isPublic = isPublic;
    }
    return _result;
  }
  factory SwidDeclarationModifiersProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidDeclarationModifiersProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidDeclarationModifiersProto clone() =>
      SwidDeclarationModifiersProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidDeclarationModifiersProto copyWith(
          void Function(SwidDeclarationModifiersProto) updates) =>
      super.copyWith(
              (message) => updates(message as SwidDeclarationModifiersProto))
          as SwidDeclarationModifiersProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidDeclarationModifiersProto create() =>
      SwidDeclarationModifiersProto._();
  SwidDeclarationModifiersProto createEmptyInstance() => create();
  static $pb.PbList<SwidDeclarationModifiersProto> createRepeated() =>
      $pb.PbList<SwidDeclarationModifiersProto>();
  @$core.pragma('dart2js:noInline')
  static SwidDeclarationModifiersProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidDeclarationModifiersProto>(create);
  static SwidDeclarationModifiersProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get ignoredTransforms => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get ignoredAnalyses => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<StringTupleProto> get overridenTransforms => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get isAbstract => $_getBF(3);
  @$pb.TagNumber(4)
  set isAbstract($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIsAbstract() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsAbstract() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isGetter => $_getBF(4);
  @$pb.TagNumber(5)
  set isGetter($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasIsGetter() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsGetter() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isOperator => $_getBF(5);
  @$pb.TagNumber(6)
  set isOperator($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasIsOperator() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsOperator() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isSetter => $_getBF(6);
  @$pb.TagNumber(7)
  set isSetter($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasIsSetter() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsSetter() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get isStatic => $_getBF(7);
  @$pb.TagNumber(8)
  set isStatic($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasIsStatic() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsStatic() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get isSynthetic => $_getBF(8);
  @$pb.TagNumber(9)
  set isSynthetic($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasIsSynthetic() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsSynthetic() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get isCovariant => $_getBF(9);
  @$pb.TagNumber(10)
  set isCovariant($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasIsCovariant() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsCovariant() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get isExplicitlyCovariant => $_getBF(10);
  @$pb.TagNumber(11)
  set isExplicitlyCovariant($core.bool v) {
    $_setBool(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasIsExplicitlyCovariant() => $_has(10);
  @$pb.TagNumber(11)
  void clearIsExplicitlyCovariant() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get hasAlwaysThrows => $_getBF(11);
  @$pb.TagNumber(12)
  set hasAlwaysThrows($core.bool v) {
    $_setBool(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasHasAlwaysThrows() => $_has(11);
  @$pb.TagNumber(12)
  void clearHasAlwaysThrows() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get hasDeprecated => $_getBF(12);
  @$pb.TagNumber(13)
  set hasDeprecated($core.bool v) {
    $_setBool(12, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasHasDeprecated() => $_has(12);
  @$pb.TagNumber(13)
  void clearHasDeprecated() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get hasFactory => $_getBF(13);
  @$pb.TagNumber(14)
  set hasFactory($core.bool v) {
    $_setBool(13, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasHasFactory() => $_has(13);
  @$pb.TagNumber(14)
  void clearHasFactory() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get hasImplicitReturnType => $_getBF(14);
  @$pb.TagNumber(15)
  set hasImplicitReturnType($core.bool v) {
    $_setBool(14, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasHasImplicitReturnType() => $_has(14);
  @$pb.TagNumber(15)
  void clearHasImplicitReturnType() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get hasIsTest => $_getBF(15);
  @$pb.TagNumber(16)
  set hasIsTest($core.bool v) {
    $_setBool(15, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasHasIsTest() => $_has(15);
  @$pb.TagNumber(16)
  void clearHasIsTest() => clearField(16);

  @$pb.TagNumber(17)
  $core.bool get hasIsTestGroup => $_getBF(16);
  @$pb.TagNumber(17)
  set hasIsTestGroup($core.bool v) {
    $_setBool(16, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasHasIsTestGroup() => $_has(16);
  @$pb.TagNumber(17)
  void clearHasIsTestGroup() => clearField(17);

  @$pb.TagNumber(18)
  $core.bool get hasJS => $_getBF(17);
  @$pb.TagNumber(18)
  set hasJS($core.bool v) {
    $_setBool(17, v);
  }

  @$pb.TagNumber(18)
  $core.bool hasHasJS() => $_has(17);
  @$pb.TagNumber(18)
  void clearHasJS() => clearField(18);

  @$pb.TagNumber(19)
  $core.bool get hasLiteral => $_getBF(18);
  @$pb.TagNumber(19)
  set hasLiteral($core.bool v) {
    $_setBool(18, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasHasLiteral() => $_has(18);
  @$pb.TagNumber(19)
  void clearHasLiteral() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get hasMustCallSuper => $_getBF(19);
  @$pb.TagNumber(20)
  set hasMustCallSuper($core.bool v) {
    $_setBool(19, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasHasMustCallSuper() => $_has(19);
  @$pb.TagNumber(20)
  void clearHasMustCallSuper() => clearField(20);

  @$pb.TagNumber(21)
  $core.bool get hasNonVirtual => $_getBF(20);
  @$pb.TagNumber(21)
  set hasNonVirtual($core.bool v) {
    $_setBool(20, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasHasNonVirtual() => $_has(20);
  @$pb.TagNumber(21)
  void clearHasNonVirtual() => clearField(21);

  @$pb.TagNumber(22)
  $core.bool get hasOptionalTypeArgs => $_getBF(21);
  @$pb.TagNumber(22)
  set hasOptionalTypeArgs($core.bool v) {
    $_setBool(21, v);
  }

  @$pb.TagNumber(22)
  $core.bool hasHasOptionalTypeArgs() => $_has(21);
  @$pb.TagNumber(22)
  void clearHasOptionalTypeArgs() => clearField(22);

  @$pb.TagNumber(23)
  $core.bool get hasOverride => $_getBF(22);
  @$pb.TagNumber(23)
  set hasOverride($core.bool v) {
    $_setBool(22, v);
  }

  @$pb.TagNumber(23)
  $core.bool hasHasOverride() => $_has(22);
  @$pb.TagNumber(23)
  void clearHasOverride() => clearField(23);

  @$pb.TagNumber(24)
  $core.bool get hasProtected => $_getBF(23);
  @$pb.TagNumber(24)
  set hasProtected($core.bool v) {
    $_setBool(23, v);
  }

  @$pb.TagNumber(24)
  $core.bool hasHasProtected() => $_has(23);
  @$pb.TagNumber(24)
  void clearHasProtected() => clearField(24);

  @$pb.TagNumber(25)
  $core.bool get hasRequired => $_getBF(24);
  @$pb.TagNumber(25)
  set hasRequired($core.bool v) {
    $_setBool(24, v);
  }

  @$pb.TagNumber(25)
  $core.bool hasHasRequired() => $_has(24);
  @$pb.TagNumber(25)
  void clearHasRequired() => clearField(25);

  @$pb.TagNumber(26)
  $core.bool get hasSealed => $_getBF(25);
  @$pb.TagNumber(26)
  set hasSealed($core.bool v) {
    $_setBool(25, v);
  }

  @$pb.TagNumber(26)
  $core.bool hasHasSealed() => $_has(25);
  @$pb.TagNumber(26)
  void clearHasSealed() => clearField(26);

  @$pb.TagNumber(27)
  $core.bool get hasVisibleForTemplate => $_getBF(26);
  @$pb.TagNumber(27)
  set hasVisibleForTemplate($core.bool v) {
    $_setBool(26, v);
  }

  @$pb.TagNumber(27)
  $core.bool hasHasVisibleForTemplate() => $_has(26);
  @$pb.TagNumber(27)
  void clearHasVisibleForTemplate() => clearField(27);

  @$pb.TagNumber(28)
  $core.bool get hasVisibleForTesting => $_getBF(27);
  @$pb.TagNumber(28)
  set hasVisibleForTesting($core.bool v) {
    $_setBool(27, v);
  }

  @$pb.TagNumber(28)
  $core.bool hasHasVisibleForTesting() => $_has(27);
  @$pb.TagNumber(28)
  void clearHasVisibleForTesting() => clearField(28);

  @$pb.TagNumber(29)
  $core.bool get isPublic => $_getBF(28);
  @$pb.TagNumber(29)
  set isPublic($core.bool v) {
    $_setBool(28, v);
  }

  @$pb.TagNumber(29)
  $core.bool hasIsPublic() => $_has(28);
  @$pb.TagNumber(29)
  void clearIsPublic() => clearField(29);
}

class SwidClassProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidClassProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..e<SwidNullabilitySuffixProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nullabilitySuffix',
        $pb.PbFieldType.OE,
        protoName: 'nullabilitySuffix',
        defaultOrMaker: SwidNullabilitySuffixProto.question,
        valueOf: SwidNullabilitySuffixProto.valueOf,
        enumValues: SwidNullabilitySuffixProto.values)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'originalPackagePath',
        protoName: 'originalPackagePath')
    ..aOM<SwidFunctionTypeProto>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'constructorType',
        protoName: 'constructorType',
        subBuilder: SwidFunctionTypeProto.create)
    ..pc<SwidFunctionTypeProto>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'generativeConstructors',
        $pb.PbFieldType.PM,
        protoName: 'generativeConstructors',
        subBuilder: SwidFunctionTypeProto.create)
    ..pc<SwidFunctionTypeProto>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'factoryConstructors',
        $pb.PbFieldType.PM,
        protoName: 'factoryConstructors',
        subBuilder: SwidFunctionTypeProto.create)
    ..pc<SwidFunctionTypeProto>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'staticMethods',
        $pb.PbFieldType.PM,
        protoName: 'staticMethods',
        subBuilder: SwidFunctionTypeProto.create)
    ..pc<SwidFunctionTypeProto>(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'methods',
        $pb.PbFieldType.PM,
        subBuilder: SwidFunctionTypeProto.create)
    ..pc<SwidStaticConstFieldDeclarationProto>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'staticConstFieldDeclarations',
        $pb.PbFieldType.PM,
        protoName: 'staticConstFieldDeclarations',
        subBuilder: SwidStaticConstFieldDeclarationProto.create)
    ..m<$core.String, SwidTypeProto>(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'instanceFieldDeclarations',
        protoName: 'instanceFieldDeclarations',
        entryClassName: 'SwidClassProto.InstanceFieldDeclarationsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: SwidTypeProto.create,
        packageName: const $pb.PackageName('org.hydro_sdk.swid.ir'))
    ..aOM<SwidDeclarationModifiersProto>(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'declarationModifiers',
        protoName: 'declarationModifiers',
        subBuilder: SwidDeclarationModifiersProto.create)
    ..pc<SwidClassProto>(
        12,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'mixedInClasses',
        $pb.PbFieldType.PM,
        protoName: 'mixedInClasses',
        subBuilder: SwidClassProto.create)
    ..pc<SwidClassProto>(
        13,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'implementedClasses',
        $pb.PbFieldType.PM,
        protoName: 'implementedClasses',
        subBuilder: SwidClassProto.create)
    ..aOB(
        14,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isMixin',
        protoName: 'isMixin')
    ..pc<SwidTypeFormalProto>(
        15,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'typeFormals',
        $pb.PbFieldType.PM,
        protoName: 'typeFormals',
        subBuilder: SwidTypeFormalProto.create)
    ..aOM<SwidTypeProto>(
        16,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'element',
        subBuilder: SwidTypeProto.create)
    ..aOM<SwidClassProto>(
        17,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'extendedClass',
        protoName: 'extendedClass',
        subBuilder: SwidClassProto.create)
    ..hasRequiredFields = false;

  SwidClassProto._() : super();
  factory SwidClassProto({
    $core.String? name,
    SwidNullabilitySuffixProto? nullabilitySuffix,
    $core.String? originalPackagePath,
    SwidFunctionTypeProto? constructorType,
    $core.Iterable<SwidFunctionTypeProto>? generativeConstructors,
    $core.Iterable<SwidFunctionTypeProto>? factoryConstructors,
    $core.Iterable<SwidFunctionTypeProto>? staticMethods,
    $core.Iterable<SwidFunctionTypeProto>? methods,
    $core.Iterable<SwidStaticConstFieldDeclarationProto>?
        staticConstFieldDeclarations,
    $core.Map<$core.String, SwidTypeProto>? instanceFieldDeclarations,
    SwidDeclarationModifiersProto? declarationModifiers,
    $core.Iterable<SwidClassProto>? mixedInClasses,
    $core.Iterable<SwidClassProto>? implementedClasses,
    $core.bool? isMixin,
    $core.Iterable<SwidTypeFormalProto>? typeFormals,
    SwidTypeProto? element,
    SwidClassProto? extendedClass,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (nullabilitySuffix != null) {
      _result.nullabilitySuffix = nullabilitySuffix;
    }
    if (originalPackagePath != null) {
      _result.originalPackagePath = originalPackagePath;
    }
    if (constructorType != null) {
      _result.constructorType = constructorType;
    }
    if (generativeConstructors != null) {
      _result.generativeConstructors.addAll(generativeConstructors);
    }
    if (factoryConstructors != null) {
      _result.factoryConstructors.addAll(factoryConstructors);
    }
    if (staticMethods != null) {
      _result.staticMethods.addAll(staticMethods);
    }
    if (methods != null) {
      _result.methods.addAll(methods);
    }
    if (staticConstFieldDeclarations != null) {
      _result.staticConstFieldDeclarations.addAll(staticConstFieldDeclarations);
    }
    if (instanceFieldDeclarations != null) {
      _result.instanceFieldDeclarations.addAll(instanceFieldDeclarations);
    }
    if (declarationModifiers != null) {
      _result.declarationModifiers = declarationModifiers;
    }
    if (mixedInClasses != null) {
      _result.mixedInClasses.addAll(mixedInClasses);
    }
    if (implementedClasses != null) {
      _result.implementedClasses.addAll(implementedClasses);
    }
    if (isMixin != null) {
      _result.isMixin = isMixin;
    }
    if (typeFormals != null) {
      _result.typeFormals.addAll(typeFormals);
    }
    if (element != null) {
      _result.element = element;
    }
    if (extendedClass != null) {
      _result.extendedClass = extendedClass;
    }
    return _result;
  }
  factory SwidClassProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidClassProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidClassProto clone() => SwidClassProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidClassProto copyWith(void Function(SwidClassProto) updates) =>
      super.copyWith((message) => updates(message as SwidClassProto))
          as SwidClassProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidClassProto create() => SwidClassProto._();
  SwidClassProto createEmptyInstance() => create();
  static $pb.PbList<SwidClassProto> createRepeated() =>
      $pb.PbList<SwidClassProto>();
  @$core.pragma('dart2js:noInline')
  static SwidClassProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidClassProto>(create);
  static SwidClassProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  SwidNullabilitySuffixProto get nullabilitySuffix => $_getN(1);
  @$pb.TagNumber(2)
  set nullabilitySuffix(SwidNullabilitySuffixProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNullabilitySuffix() => $_has(1);
  @$pb.TagNumber(2)
  void clearNullabilitySuffix() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get originalPackagePath => $_getSZ(2);
  @$pb.TagNumber(3)
  set originalPackagePath($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOriginalPackagePath() => $_has(2);
  @$pb.TagNumber(3)
  void clearOriginalPackagePath() => clearField(3);

  @$pb.TagNumber(4)
  SwidFunctionTypeProto get constructorType => $_getN(3);
  @$pb.TagNumber(4)
  set constructorType(SwidFunctionTypeProto v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasConstructorType() => $_has(3);
  @$pb.TagNumber(4)
  void clearConstructorType() => clearField(4);
  @$pb.TagNumber(4)
  SwidFunctionTypeProto ensureConstructorType() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<SwidFunctionTypeProto> get generativeConstructors => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<SwidFunctionTypeProto> get factoryConstructors => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<SwidFunctionTypeProto> get staticMethods => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<SwidFunctionTypeProto> get methods => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<SwidStaticConstFieldDeclarationProto>
      get staticConstFieldDeclarations => $_getList(8);

  @$pb.TagNumber(10)
  $core.Map<$core.String, SwidTypeProto> get instanceFieldDeclarations =>
      $_getMap(9);

  @$pb.TagNumber(11)
  SwidDeclarationModifiersProto get declarationModifiers => $_getN(10);
  @$pb.TagNumber(11)
  set declarationModifiers(SwidDeclarationModifiersProto v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasDeclarationModifiers() => $_has(10);
  @$pb.TagNumber(11)
  void clearDeclarationModifiers() => clearField(11);
  @$pb.TagNumber(11)
  SwidDeclarationModifiersProto ensureDeclarationModifiers() => $_ensure(10);

  @$pb.TagNumber(12)
  $core.List<SwidClassProto> get mixedInClasses => $_getList(11);

  @$pb.TagNumber(13)
  $core.List<SwidClassProto> get implementedClasses => $_getList(12);

  @$pb.TagNumber(14)
  $core.bool get isMixin => $_getBF(13);
  @$pb.TagNumber(14)
  set isMixin($core.bool v) {
    $_setBool(13, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasIsMixin() => $_has(13);
  @$pb.TagNumber(14)
  void clearIsMixin() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<SwidTypeFormalProto> get typeFormals => $_getList(14);

  @$pb.TagNumber(16)
  SwidTypeProto get element => $_getN(15);
  @$pb.TagNumber(16)
  set element(SwidTypeProto v) {
    setField(16, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasElement() => $_has(15);
  @$pb.TagNumber(16)
  void clearElement() => clearField(16);
  @$pb.TagNumber(16)
  SwidTypeProto ensureElement() => $_ensure(15);

  @$pb.TagNumber(17)
  SwidClassProto get extendedClass => $_getN(16);
  @$pb.TagNumber(17)
  set extendedClass(SwidClassProto v) {
    setField(17, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasExtendedClass() => $_has(16);
  @$pb.TagNumber(17)
  void clearExtendedClass() => clearField(17);
  @$pb.TagNumber(17)
  SwidClassProto ensureExtendedClass() => $_ensure(16);
}

class SwidDefaultFormalParameterProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidDefaultFormalParameterProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..e<SwidNullabilitySuffixProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nullabilitySuffix',
        $pb.PbFieldType.OE,
        protoName: 'nullabilitySuffix',
        defaultOrMaker: SwidNullabilitySuffixProto.question,
        valueOf: SwidNullabilitySuffixProto.valueOf,
        enumValues: SwidNullabilitySuffixProto.values)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'originalPackagePath',
        protoName: 'originalPackagePath')
    ..aOM<SwidTypeProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'staticType',
        protoName: 'staticType',
        subBuilder: SwidTypeProto.create)
    ..aOM<SwidStaticConstProto>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        subBuilder: SwidStaticConstProto.create)
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'defaultValueCode',
        protoName: 'defaultValueCode')
    ..aOM<SwidTypeProto>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'element',
        subBuilder: SwidTypeProto.create)
    ..hasRequiredFields = false;

  SwidDefaultFormalParameterProto._() : super();
  factory SwidDefaultFormalParameterProto({
    SwidNullabilitySuffixProto? nullabilitySuffix,
    $core.String? originalPackagePath,
    SwidTypeProto? staticType,
    SwidStaticConstProto? value,
    $core.String? defaultValueCode,
    SwidTypeProto? element,
  }) {
    final _result = create();
    if (nullabilitySuffix != null) {
      _result.nullabilitySuffix = nullabilitySuffix;
    }
    if (originalPackagePath != null) {
      _result.originalPackagePath = originalPackagePath;
    }
    if (staticType != null) {
      _result.staticType = staticType;
    }
    if (value != null) {
      _result.value = value;
    }
    if (defaultValueCode != null) {
      _result.defaultValueCode = defaultValueCode;
    }
    if (element != null) {
      _result.element = element;
    }
    return _result;
  }
  factory SwidDefaultFormalParameterProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidDefaultFormalParameterProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidDefaultFormalParameterProto clone() =>
      SwidDefaultFormalParameterProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidDefaultFormalParameterProto copyWith(
          void Function(SwidDefaultFormalParameterProto) updates) =>
      super.copyWith(
              (message) => updates(message as SwidDefaultFormalParameterProto))
          as SwidDefaultFormalParameterProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidDefaultFormalParameterProto create() =>
      SwidDefaultFormalParameterProto._();
  SwidDefaultFormalParameterProto createEmptyInstance() => create();
  static $pb.PbList<SwidDefaultFormalParameterProto> createRepeated() =>
      $pb.PbList<SwidDefaultFormalParameterProto>();
  @$core.pragma('dart2js:noInline')
  static SwidDefaultFormalParameterProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidDefaultFormalParameterProto>(
          create);
  static SwidDefaultFormalParameterProto? _defaultInstance;

  @$pb.TagNumber(1)
  SwidNullabilitySuffixProto get nullabilitySuffix => $_getN(0);
  @$pb.TagNumber(1)
  set nullabilitySuffix(SwidNullabilitySuffixProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNullabilitySuffix() => $_has(0);
  @$pb.TagNumber(1)
  void clearNullabilitySuffix() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get originalPackagePath => $_getSZ(1);
  @$pb.TagNumber(2)
  set originalPackagePath($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOriginalPackagePath() => $_has(1);
  @$pb.TagNumber(2)
  void clearOriginalPackagePath() => clearField(2);

  @$pb.TagNumber(3)
  SwidTypeProto get staticType => $_getN(2);
  @$pb.TagNumber(3)
  set staticType(SwidTypeProto v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasStaticType() => $_has(2);
  @$pb.TagNumber(3)
  void clearStaticType() => clearField(3);
  @$pb.TagNumber(3)
  SwidTypeProto ensureStaticType() => $_ensure(2);

  @$pb.TagNumber(4)
  SwidStaticConstProto get value => $_getN(3);
  @$pb.TagNumber(4)
  set value(SwidStaticConstProto v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);
  @$pb.TagNumber(4)
  SwidStaticConstProto ensureValue() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get defaultValueCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set defaultValueCode($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasDefaultValueCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearDefaultValueCode() => clearField(5);

  @$pb.TagNumber(6)
  SwidTypeProto get element => $_getN(5);
  @$pb.TagNumber(6)
  set element(SwidTypeProto v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasElement() => $_has(5);
  @$pb.TagNumber(6)
  void clearElement() => clearField(6);
  @$pb.TagNumber(6)
  SwidTypeProto ensureElement() => $_ensure(5);
}

class SwidDoubleLiteralProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidDoubleLiteralProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value')
    ..hasRequiredFields = false;

  SwidDoubleLiteralProto._() : super();
  factory SwidDoubleLiteralProto({
    $core.String? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory SwidDoubleLiteralProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidDoubleLiteralProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidDoubleLiteralProto clone() =>
      SwidDoubleLiteralProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidDoubleLiteralProto copyWith(
          void Function(SwidDoubleLiteralProto) updates) =>
      super.copyWith((message) => updates(message as SwidDoubleLiteralProto))
          as SwidDoubleLiteralProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidDoubleLiteralProto create() => SwidDoubleLiteralProto._();
  SwidDoubleLiteralProto createEmptyInstance() => create();
  static $pb.PbList<SwidDoubleLiteralProto> createRepeated() =>
      $pb.PbList<SwidDoubleLiteralProto>();
  @$core.pragma('dart2js:noInline')
  static SwidDoubleLiteralProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidDoubleLiteralProto>(create);
  static SwidDoubleLiteralProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

enum SwidElementProto_Value { fromSwidTypeArgumentElement, notSet }

class SwidElementProto extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SwidElementProto_Value>
      _SwidElementProto_ValueByTag = {
    1: SwidElementProto_Value.fromSwidTypeArgumentElement,
    0: SwidElementProto_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidElementProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<SwidTypeArgumentElementProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidTypeArgumentElement',
        protoName: 'fromSwidTypeArgumentElement',
        subBuilder: SwidTypeArgumentElementProto.create)
    ..hasRequiredFields = false;

  SwidElementProto._() : super();
  factory SwidElementProto({
    SwidTypeArgumentElementProto? fromSwidTypeArgumentElement,
  }) {
    final _result = create();
    if (fromSwidTypeArgumentElement != null) {
      _result.fromSwidTypeArgumentElement = fromSwidTypeArgumentElement;
    }
    return _result;
  }
  factory SwidElementProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidElementProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidElementProto clone() => SwidElementProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidElementProto copyWith(void Function(SwidElementProto) updates) =>
      super.copyWith((message) => updates(message as SwidElementProto))
          as SwidElementProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidElementProto create() => SwidElementProto._();
  SwidElementProto createEmptyInstance() => create();
  static $pb.PbList<SwidElementProto> createRepeated() =>
      $pb.PbList<SwidElementProto>();
  @$core.pragma('dart2js:noInline')
  static SwidElementProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidElementProto>(create);
  static SwidElementProto? _defaultInstance;

  SwidElementProto_Value whichValue() =>
      _SwidElementProto_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SwidTypeArgumentElementProto get fromSwidTypeArgumentElement => $_getN(0);
  @$pb.TagNumber(1)
  set fromSwidTypeArgumentElement(SwidTypeArgumentElementProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFromSwidTypeArgumentElement() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromSwidTypeArgumentElement() => clearField(1);
  @$pb.TagNumber(1)
  SwidTypeArgumentElementProto ensureFromSwidTypeArgumentElement() =>
      $_ensure(0);
}

class SwidEnumProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidEnumProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'originalPackagePath',
        protoName: 'originalPackagePath')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'identifier')
    ..pPS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'children')
    ..hasRequiredFields = false;

  SwidEnumProto._() : super();
  factory SwidEnumProto({
    $core.String? originalPackagePath,
    $core.String? identifier,
    $core.Iterable<$core.String>? children,
  }) {
    final _result = create();
    if (originalPackagePath != null) {
      _result.originalPackagePath = originalPackagePath;
    }
    if (identifier != null) {
      _result.identifier = identifier;
    }
    if (children != null) {
      _result.children.addAll(children);
    }
    return _result;
  }
  factory SwidEnumProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidEnumProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidEnumProto clone() => SwidEnumProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidEnumProto copyWith(void Function(SwidEnumProto) updates) =>
      super.copyWith((message) => updates(message as SwidEnumProto))
          as SwidEnumProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidEnumProto create() => SwidEnumProto._();
  SwidEnumProto createEmptyInstance() => create();
  static $pb.PbList<SwidEnumProto> createRepeated() =>
      $pb.PbList<SwidEnumProto>();
  @$core.pragma('dart2js:noInline')
  static SwidEnumProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidEnumProto>(create);
  static SwidEnumProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get originalPackagePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set originalPackagePath($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOriginalPackagePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearOriginalPackagePath() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get identifier => $_getSZ(1);
  @$pb.TagNumber(2)
  set identifier($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIdentifier() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdentifier() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get children => $_getList(2);
}

class SwidFunctionTypeProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidFunctionTypeProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..e<SwidNullabilitySuffixProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nullabilitySuffix',
        $pb.PbFieldType.OE,
        protoName: 'nullabilitySuffix',
        defaultOrMaker: SwidNullabilitySuffixProto.question,
        valueOf: SwidNullabilitySuffixProto.valueOf,
        enumValues: SwidNullabilitySuffixProto.values)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'originalPackagePath',
        protoName: 'originalPackagePath')
    ..m<$core.String, SwidTypeProto>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'namedParameterTypes',
        protoName: 'namedParameterTypes',
        entryClassName: 'SwidFunctionTypeProto.NamedParameterTypesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: SwidTypeProto.create,
        packageName: const $pb.PackageName('org.hydro_sdk.swid.ir'))
    ..m<$core.String, SwidDefaultFormalParameterProto>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'namedDefaults',
        protoName: 'namedDefaults',
        entryClassName: 'SwidFunctionTypeProto.NamedDefaultsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: SwidDefaultFormalParameterProto.create,
        packageName: const $pb.PackageName('org.hydro_sdk.swid.ir'))
    ..pPS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'normalParameterNames',
        protoName: 'normalParameterNames')
    ..pc<SwidTypeProto>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'normalParameterTypes',
        $pb.PbFieldType.PM,
        protoName: 'normalParameterTypes',
        subBuilder: SwidTypeProto.create)
    ..pPS(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'optionalParameterNames',
        protoName: 'optionalParameterNames')
    ..pc<SwidTypeProto>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'optionalParameterTypes',
        $pb.PbFieldType.PM,
        protoName: 'optionalParameterTypes',
        subBuilder: SwidTypeProto.create)
    ..aOM<SwidTypeProto>(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'returnType',
        protoName: 'returnType',
        subBuilder: SwidTypeProto.create)
    ..aOB(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isFactory',
        protoName: 'isFactory')
    ..pc<SwidTypeFormalProto>(
        12,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'typeFormals',
        $pb.PbFieldType.PM,
        protoName: 'typeFormals',
        subBuilder: SwidTypeFormalProto.create)
    ..aOM<SwidDeclarationModifiersProto>(
        13,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'declarationModifiers',
        protoName: 'declarationModifiers',
        subBuilder: SwidDeclarationModifiersProto.create)
    ..aOM<SwidTypeProto>(
        14,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'element',
        subBuilder: SwidTypeProto.create)
    ..hasRequiredFields = false;

  SwidFunctionTypeProto._() : super();
  factory SwidFunctionTypeProto({
    $core.String? name,
    SwidNullabilitySuffixProto? nullabilitySuffix,
    $core.String? originalPackagePath,
    $core.Map<$core.String, SwidTypeProto>? namedParameterTypes,
    $core.Map<$core.String, SwidDefaultFormalParameterProto>? namedDefaults,
    $core.Iterable<$core.String>? normalParameterNames,
    $core.Iterable<SwidTypeProto>? normalParameterTypes,
    $core.Iterable<$core.String>? optionalParameterNames,
    $core.Iterable<SwidTypeProto>? optionalParameterTypes,
    SwidTypeProto? returnType,
    $core.bool? isFactory,
    $core.Iterable<SwidTypeFormalProto>? typeFormals,
    SwidDeclarationModifiersProto? declarationModifiers,
    SwidTypeProto? element,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (nullabilitySuffix != null) {
      _result.nullabilitySuffix = nullabilitySuffix;
    }
    if (originalPackagePath != null) {
      _result.originalPackagePath = originalPackagePath;
    }
    if (namedParameterTypes != null) {
      _result.namedParameterTypes.addAll(namedParameterTypes);
    }
    if (namedDefaults != null) {
      _result.namedDefaults.addAll(namedDefaults);
    }
    if (normalParameterNames != null) {
      _result.normalParameterNames.addAll(normalParameterNames);
    }
    if (normalParameterTypes != null) {
      _result.normalParameterTypes.addAll(normalParameterTypes);
    }
    if (optionalParameterNames != null) {
      _result.optionalParameterNames.addAll(optionalParameterNames);
    }
    if (optionalParameterTypes != null) {
      _result.optionalParameterTypes.addAll(optionalParameterTypes);
    }
    if (returnType != null) {
      _result.returnType = returnType;
    }
    if (isFactory != null) {
      _result.isFactory = isFactory;
    }
    if (typeFormals != null) {
      _result.typeFormals.addAll(typeFormals);
    }
    if (declarationModifiers != null) {
      _result.declarationModifiers = declarationModifiers;
    }
    if (element != null) {
      _result.element = element;
    }
    return _result;
  }
  factory SwidFunctionTypeProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidFunctionTypeProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidFunctionTypeProto clone() =>
      SwidFunctionTypeProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidFunctionTypeProto copyWith(
          void Function(SwidFunctionTypeProto) updates) =>
      super.copyWith((message) => updates(message as SwidFunctionTypeProto))
          as SwidFunctionTypeProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidFunctionTypeProto create() => SwidFunctionTypeProto._();
  SwidFunctionTypeProto createEmptyInstance() => create();
  static $pb.PbList<SwidFunctionTypeProto> createRepeated() =>
      $pb.PbList<SwidFunctionTypeProto>();
  @$core.pragma('dart2js:noInline')
  static SwidFunctionTypeProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidFunctionTypeProto>(create);
  static SwidFunctionTypeProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  SwidNullabilitySuffixProto get nullabilitySuffix => $_getN(1);
  @$pb.TagNumber(2)
  set nullabilitySuffix(SwidNullabilitySuffixProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNullabilitySuffix() => $_has(1);
  @$pb.TagNumber(2)
  void clearNullabilitySuffix() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get originalPackagePath => $_getSZ(2);
  @$pb.TagNumber(3)
  set originalPackagePath($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOriginalPackagePath() => $_has(2);
  @$pb.TagNumber(3)
  void clearOriginalPackagePath() => clearField(3);

  @$pb.TagNumber(4)
  $core.Map<$core.String, SwidTypeProto> get namedParameterTypes => $_getMap(3);

  @$pb.TagNumber(5)
  $core.Map<$core.String, SwidDefaultFormalParameterProto> get namedDefaults =>
      $_getMap(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get normalParameterNames => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<SwidTypeProto> get normalParameterTypes => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$core.String> get optionalParameterNames => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<SwidTypeProto> get optionalParameterTypes => $_getList(8);

  @$pb.TagNumber(10)
  SwidTypeProto get returnType => $_getN(9);
  @$pb.TagNumber(10)
  set returnType(SwidTypeProto v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasReturnType() => $_has(9);
  @$pb.TagNumber(10)
  void clearReturnType() => clearField(10);
  @$pb.TagNumber(10)
  SwidTypeProto ensureReturnType() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.bool get isFactory => $_getBF(10);
  @$pb.TagNumber(11)
  set isFactory($core.bool v) {
    $_setBool(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasIsFactory() => $_has(10);
  @$pb.TagNumber(11)
  void clearIsFactory() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<SwidTypeFormalProto> get typeFormals => $_getList(11);

  @$pb.TagNumber(13)
  SwidDeclarationModifiersProto get declarationModifiers => $_getN(12);
  @$pb.TagNumber(13)
  set declarationModifiers(SwidDeclarationModifiersProto v) {
    setField(13, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasDeclarationModifiers() => $_has(12);
  @$pb.TagNumber(13)
  void clearDeclarationModifiers() => clearField(13);
  @$pb.TagNumber(13)
  SwidDeclarationModifiersProto ensureDeclarationModifiers() => $_ensure(12);

  @$pb.TagNumber(14)
  SwidTypeProto get element => $_getN(13);
  @$pb.TagNumber(14)
  set element(SwidTypeProto v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasElement() => $_has(13);
  @$pb.TagNumber(14)
  void clearElement() => clearField(14);
  @$pb.TagNumber(14)
  SwidTypeProto ensureElement() => $_ensure(13);
}

class SwidGenericInstantiatorProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidGenericInstantiatorProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOM<SwidInstantiatedGenericProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'instantiatedGeneric',
        protoName: 'instantiatedGeneric',
        subBuilder: SwidInstantiatedGenericProto.create)
    ..hasRequiredFields = false;

  SwidGenericInstantiatorProto._() : super();
  factory SwidGenericInstantiatorProto({
    $core.String? name,
    SwidInstantiatedGenericProto? instantiatedGeneric,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (instantiatedGeneric != null) {
      _result.instantiatedGeneric = instantiatedGeneric;
    }
    return _result;
  }
  factory SwidGenericInstantiatorProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidGenericInstantiatorProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidGenericInstantiatorProto clone() =>
      SwidGenericInstantiatorProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidGenericInstantiatorProto copyWith(
          void Function(SwidGenericInstantiatorProto) updates) =>
      super.copyWith(
              (message) => updates(message as SwidGenericInstantiatorProto))
          as SwidGenericInstantiatorProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidGenericInstantiatorProto create() =>
      SwidGenericInstantiatorProto._();
  SwidGenericInstantiatorProto createEmptyInstance() => create();
  static $pb.PbList<SwidGenericInstantiatorProto> createRepeated() =>
      $pb.PbList<SwidGenericInstantiatorProto>();
  @$core.pragma('dart2js:noInline')
  static SwidGenericInstantiatorProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidGenericInstantiatorProto>(create);
  static SwidGenericInstantiatorProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  SwidInstantiatedGenericProto get instantiatedGeneric => $_getN(1);
  @$pb.TagNumber(2)
  set instantiatedGeneric(SwidInstantiatedGenericProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasInstantiatedGeneric() => $_has(1);
  @$pb.TagNumber(2)
  void clearInstantiatedGeneric() => clearField(2);
  @$pb.TagNumber(2)
  SwidInstantiatedGenericProto ensureInstantiatedGeneric() => $_ensure(1);
}

enum SwidInstantiableGenericProto_Value {
  fromSwidClass,
  fromSwidInterface,
  fromSwidFunctionType,
  notSet
}

class SwidInstantiableGenericProto extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SwidInstantiableGenericProto_Value>
      _SwidInstantiableGenericProto_ValueByTag = {
    1: SwidInstantiableGenericProto_Value.fromSwidClass,
    2: SwidInstantiableGenericProto_Value.fromSwidInterface,
    3: SwidInstantiableGenericProto_Value.fromSwidFunctionType,
    0: SwidInstantiableGenericProto_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidInstantiableGenericProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<SwidClassProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidClass',
        protoName: 'fromSwidClass',
        subBuilder: SwidClassProto.create)
    ..aOM<SwidInterfaceProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidInterface',
        protoName: 'fromSwidInterface',
        subBuilder: SwidInterfaceProto.create)
    ..aOM<SwidFunctionTypeProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidFunctionType',
        protoName: 'fromSwidFunctionType',
        subBuilder: SwidFunctionTypeProto.create)
    ..hasRequiredFields = false;

  SwidInstantiableGenericProto._() : super();
  factory SwidInstantiableGenericProto({
    SwidClassProto? fromSwidClass,
    SwidInterfaceProto? fromSwidInterface,
    SwidFunctionTypeProto? fromSwidFunctionType,
  }) {
    final _result = create();
    if (fromSwidClass != null) {
      _result.fromSwidClass = fromSwidClass;
    }
    if (fromSwidInterface != null) {
      _result.fromSwidInterface = fromSwidInterface;
    }
    if (fromSwidFunctionType != null) {
      _result.fromSwidFunctionType = fromSwidFunctionType;
    }
    return _result;
  }
  factory SwidInstantiableGenericProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidInstantiableGenericProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidInstantiableGenericProto clone() =>
      SwidInstantiableGenericProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidInstantiableGenericProto copyWith(
          void Function(SwidInstantiableGenericProto) updates) =>
      super.copyWith(
              (message) => updates(message as SwidInstantiableGenericProto))
          as SwidInstantiableGenericProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidInstantiableGenericProto create() =>
      SwidInstantiableGenericProto._();
  SwidInstantiableGenericProto createEmptyInstance() => create();
  static $pb.PbList<SwidInstantiableGenericProto> createRepeated() =>
      $pb.PbList<SwidInstantiableGenericProto>();
  @$core.pragma('dart2js:noInline')
  static SwidInstantiableGenericProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidInstantiableGenericProto>(create);
  static SwidInstantiableGenericProto? _defaultInstance;

  SwidInstantiableGenericProto_Value whichValue() =>
      _SwidInstantiableGenericProto_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SwidClassProto get fromSwidClass => $_getN(0);
  @$pb.TagNumber(1)
  set fromSwidClass(SwidClassProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFromSwidClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromSwidClass() => clearField(1);
  @$pb.TagNumber(1)
  SwidClassProto ensureFromSwidClass() => $_ensure(0);

  @$pb.TagNumber(2)
  SwidInterfaceProto get fromSwidInterface => $_getN(1);
  @$pb.TagNumber(2)
  set fromSwidInterface(SwidInterfaceProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFromSwidInterface() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromSwidInterface() => clearField(2);
  @$pb.TagNumber(2)
  SwidInterfaceProto ensureFromSwidInterface() => $_ensure(1);

  @$pb.TagNumber(3)
  SwidFunctionTypeProto get fromSwidFunctionType => $_getN(2);
  @$pb.TagNumber(3)
  set fromSwidFunctionType(SwidFunctionTypeProto v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFromSwidFunctionType() => $_has(2);
  @$pb.TagNumber(3)
  void clearFromSwidFunctionType() => clearField(3);
  @$pb.TagNumber(3)
  SwidFunctionTypeProto ensureFromSwidFunctionType() => $_ensure(2);
}

class SwidInstantiatedGenericProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidInstantiatedGenericProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOM<SwidInstantiableGenericProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'instantiableGeneric',
        protoName: 'instantiableGeneric',
        subBuilder: SwidInstantiableGenericProto.create)
    ..e<SwidReferenceDeclarationKindProto>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'referenceDeclarationKind',
        $pb.PbFieldType.OE,
        protoName: 'referenceDeclarationKind',
        defaultOrMaker: SwidReferenceDeclarationKindProto.classElement,
        valueOf: SwidReferenceDeclarationKindProto.valueOf,
        enumValues: SwidReferenceDeclarationKindProto.values)
    ..hasRequiredFields = false;

  SwidInstantiatedGenericProto._() : super();
  factory SwidInstantiatedGenericProto({
    SwidInstantiableGenericProto? instantiableGeneric,
    SwidReferenceDeclarationKindProto? referenceDeclarationKind,
  }) {
    final _result = create();
    if (instantiableGeneric != null) {
      _result.instantiableGeneric = instantiableGeneric;
    }
    if (referenceDeclarationKind != null) {
      _result.referenceDeclarationKind = referenceDeclarationKind;
    }
    return _result;
  }
  factory SwidInstantiatedGenericProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidInstantiatedGenericProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidInstantiatedGenericProto clone() =>
      SwidInstantiatedGenericProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidInstantiatedGenericProto copyWith(
          void Function(SwidInstantiatedGenericProto) updates) =>
      super.copyWith(
              (message) => updates(message as SwidInstantiatedGenericProto))
          as SwidInstantiatedGenericProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidInstantiatedGenericProto create() =>
      SwidInstantiatedGenericProto._();
  SwidInstantiatedGenericProto createEmptyInstance() => create();
  static $pb.PbList<SwidInstantiatedGenericProto> createRepeated() =>
      $pb.PbList<SwidInstantiatedGenericProto>();
  @$core.pragma('dart2js:noInline')
  static SwidInstantiatedGenericProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidInstantiatedGenericProto>(create);
  static SwidInstantiatedGenericProto? _defaultInstance;

  @$pb.TagNumber(3)
  SwidInstantiableGenericProto get instantiableGeneric => $_getN(0);
  @$pb.TagNumber(3)
  set instantiableGeneric(SwidInstantiableGenericProto v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasInstantiableGeneric() => $_has(0);
  @$pb.TagNumber(3)
  void clearInstantiableGeneric() => clearField(3);
  @$pb.TagNumber(3)
  SwidInstantiableGenericProto ensureInstantiableGeneric() => $_ensure(0);

  @$pb.TagNumber(4)
  SwidReferenceDeclarationKindProto get referenceDeclarationKind => $_getN(1);
  @$pb.TagNumber(4)
  set referenceDeclarationKind(SwidReferenceDeclarationKindProto v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasReferenceDeclarationKind() => $_has(1);
  @$pb.TagNumber(4)
  void clearReferenceDeclarationKind() => clearField(4);
}

class SwidIntegerLiteralProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidIntegerLiteralProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value')
    ..hasRequiredFields = false;

  SwidIntegerLiteralProto._() : super();
  factory SwidIntegerLiteralProto({
    $core.String? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory SwidIntegerLiteralProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidIntegerLiteralProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidIntegerLiteralProto clone() =>
      SwidIntegerLiteralProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidIntegerLiteralProto copyWith(
          void Function(SwidIntegerLiteralProto) updates) =>
      super.copyWith((message) => updates(message as SwidIntegerLiteralProto))
          as SwidIntegerLiteralProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidIntegerLiteralProto create() => SwidIntegerLiteralProto._();
  SwidIntegerLiteralProto createEmptyInstance() => create();
  static $pb.PbList<SwidIntegerLiteralProto> createRepeated() =>
      $pb.PbList<SwidIntegerLiteralProto>();
  @$core.pragma('dart2js:noInline')
  static SwidIntegerLiteralProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidIntegerLiteralProto>(create);
  static SwidIntegerLiteralProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class SwidInterfaceProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidInterfaceProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..e<SwidNullabilitySuffixProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nullabilitySuffix',
        $pb.PbFieldType.OE,
        protoName: 'nullabilitySuffix',
        defaultOrMaker: SwidNullabilitySuffixProto.question,
        valueOf: SwidNullabilitySuffixProto.valueOf,
        enumValues: SwidNullabilitySuffixProto.values)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'originalPackagePath',
        protoName: 'originalPackagePath')
    ..pc<SwidTypeArgumentTypeProto>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'typeArguments',
        $pb.PbFieldType.PM,
        protoName: 'typeArguments',
        subBuilder: SwidTypeArgumentTypeProto.create)
    ..e<SwidReferenceDeclarationKindProto>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'referenceDeclarationKind',
        $pb.PbFieldType.OE,
        protoName: 'referenceDeclarationKind',
        defaultOrMaker: SwidReferenceDeclarationKindProto.classElement,
        valueOf: SwidReferenceDeclarationKindProto.valueOf,
        enumValues: SwidReferenceDeclarationKindProto.values)
    ..aOM<SwidDeclarationModifiersProto>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'declarationModifiers',
        protoName: 'declarationModifiers',
        subBuilder: SwidDeclarationModifiersProto.create)
    ..hasRequiredFields = false;

  SwidInterfaceProto._() : super();
  factory SwidInterfaceProto({
    $core.String? name,
    SwidNullabilitySuffixProto? nullabilitySuffix,
    $core.String? originalPackagePath,
    $core.Iterable<SwidTypeArgumentTypeProto>? typeArguments,
    SwidReferenceDeclarationKindProto? referenceDeclarationKind,
    SwidDeclarationModifiersProto? declarationModifiers,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (nullabilitySuffix != null) {
      _result.nullabilitySuffix = nullabilitySuffix;
    }
    if (originalPackagePath != null) {
      _result.originalPackagePath = originalPackagePath;
    }
    if (typeArguments != null) {
      _result.typeArguments.addAll(typeArguments);
    }
    if (referenceDeclarationKind != null) {
      _result.referenceDeclarationKind = referenceDeclarationKind;
    }
    if (declarationModifiers != null) {
      _result.declarationModifiers = declarationModifiers;
    }
    return _result;
  }
  factory SwidInterfaceProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidInterfaceProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidInterfaceProto clone() => SwidInterfaceProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidInterfaceProto copyWith(void Function(SwidInterfaceProto) updates) =>
      super.copyWith((message) => updates(message as SwidInterfaceProto))
          as SwidInterfaceProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidInterfaceProto create() => SwidInterfaceProto._();
  SwidInterfaceProto createEmptyInstance() => create();
  static $pb.PbList<SwidInterfaceProto> createRepeated() =>
      $pb.PbList<SwidInterfaceProto>();
  @$core.pragma('dart2js:noInline')
  static SwidInterfaceProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidInterfaceProto>(create);
  static SwidInterfaceProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  SwidNullabilitySuffixProto get nullabilitySuffix => $_getN(1);
  @$pb.TagNumber(2)
  set nullabilitySuffix(SwidNullabilitySuffixProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNullabilitySuffix() => $_has(1);
  @$pb.TagNumber(2)
  void clearNullabilitySuffix() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get originalPackagePath => $_getSZ(2);
  @$pb.TagNumber(3)
  set originalPackagePath($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOriginalPackagePath() => $_has(2);
  @$pb.TagNumber(3)
  void clearOriginalPackagePath() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<SwidTypeArgumentTypeProto> get typeArguments => $_getList(3);

  @$pb.TagNumber(5)
  SwidReferenceDeclarationKindProto get referenceDeclarationKind => $_getN(4);
  @$pb.TagNumber(5)
  set referenceDeclarationKind(SwidReferenceDeclarationKindProto v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasReferenceDeclarationKind() => $_has(4);
  @$pb.TagNumber(5)
  void clearReferenceDeclarationKind() => clearField(5);

  @$pb.TagNumber(6)
  SwidDeclarationModifiersProto get declarationModifiers => $_getN(5);
  @$pb.TagNumber(6)
  set declarationModifiers(SwidDeclarationModifiersProto v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasDeclarationModifiers() => $_has(5);
  @$pb.TagNumber(6)
  void clearDeclarationModifiers() => clearField(6);
  @$pb.TagNumber(6)
  SwidDeclarationModifiersProto ensureDeclarationModifiers() => $_ensure(5);
}

class SwidOriginatedAncestorTypeFormalProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidOriginatedAncestorTypeFormalProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOM<SwidTypeFormalProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'swidTypeFormal',
        protoName: 'swidTypeFormal',
        subBuilder: SwidTypeFormalProto.create)
    ..e<SwidOriginatedAncestorTypeFormalKindProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'kind',
        $pb.PbFieldType.OE,
        defaultOrMaker: SwidOriginatedAncestorTypeFormalKindProto.kClass,
        valueOf: SwidOriginatedAncestorTypeFormalKindProto.valueOf,
        enumValues: SwidOriginatedAncestorTypeFormalKindProto.values)
    ..hasRequiredFields = false;

  SwidOriginatedAncestorTypeFormalProto._() : super();
  factory SwidOriginatedAncestorTypeFormalProto({
    SwidTypeFormalProto? swidTypeFormal,
    SwidOriginatedAncestorTypeFormalKindProto? kind,
  }) {
    final _result = create();
    if (swidTypeFormal != null) {
      _result.swidTypeFormal = swidTypeFormal;
    }
    if (kind != null) {
      _result.kind = kind;
    }
    return _result;
  }
  factory SwidOriginatedAncestorTypeFormalProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidOriginatedAncestorTypeFormalProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidOriginatedAncestorTypeFormalProto clone() =>
      SwidOriginatedAncestorTypeFormalProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidOriginatedAncestorTypeFormalProto copyWith(
          void Function(SwidOriginatedAncestorTypeFormalProto) updates) =>
      super.copyWith((message) =>
              updates(message as SwidOriginatedAncestorTypeFormalProto))
          as SwidOriginatedAncestorTypeFormalProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidOriginatedAncestorTypeFormalProto create() =>
      SwidOriginatedAncestorTypeFormalProto._();
  SwidOriginatedAncestorTypeFormalProto createEmptyInstance() => create();
  static $pb.PbList<SwidOriginatedAncestorTypeFormalProto> createRepeated() =>
      $pb.PbList<SwidOriginatedAncestorTypeFormalProto>();
  @$core.pragma('dart2js:noInline')
  static SwidOriginatedAncestorTypeFormalProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidOriginatedAncestorTypeFormalProto>(create);
  static SwidOriginatedAncestorTypeFormalProto? _defaultInstance;

  @$pb.TagNumber(1)
  SwidTypeFormalProto get swidTypeFormal => $_getN(0);
  @$pb.TagNumber(1)
  set swidTypeFormal(SwidTypeFormalProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSwidTypeFormal() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwidTypeFormal() => clearField(1);
  @$pb.TagNumber(1)
  SwidTypeFormalProto ensureSwidTypeFormal() => $_ensure(0);

  @$pb.TagNumber(2)
  SwidOriginatedAncestorTypeFormalKindProto get kind => $_getN(1);
  @$pb.TagNumber(2)
  set kind(SwidOriginatedAncestorTypeFormalKindProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => clearField(2);
}

enum SwidStaticConstProto_Value {
  fromSwidBooleanLiteral,
  fromSwidStringLiteral,
  fromSwidIntegerLiteral,
  fromDoubleLiteral,
  fromSwidStaticConstFunctionInvocation,
  fromSwidStaticConstFieldReference,
  fromSwidStaticConstPrefixedExpression,
  fromSwidStaticConstBinaryExpression,
  fromSwidStaticConstPrefixedIdentifier,
  fromSwidStaticConstIdentifier,
  fromSwidStaticConstListLiteral,
  fromSwidStaticConstMapLiteralEntry,
  fromSwidStaticConstMapLiteral,
  fromSwidStaticConstTopLevelVariableReference,
  notSet
}

class SwidStaticConstProto extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SwidStaticConstProto_Value>
      _SwidStaticConstProto_ValueByTag = {
    1: SwidStaticConstProto_Value.fromSwidBooleanLiteral,
    2: SwidStaticConstProto_Value.fromSwidStringLiteral,
    3: SwidStaticConstProto_Value.fromSwidIntegerLiteral,
    4: SwidStaticConstProto_Value.fromDoubleLiteral,
    5: SwidStaticConstProto_Value.fromSwidStaticConstFunctionInvocation,
    6: SwidStaticConstProto_Value.fromSwidStaticConstFieldReference,
    7: SwidStaticConstProto_Value.fromSwidStaticConstPrefixedExpression,
    8: SwidStaticConstProto_Value.fromSwidStaticConstBinaryExpression,
    9: SwidStaticConstProto_Value.fromSwidStaticConstPrefixedIdentifier,
    10: SwidStaticConstProto_Value.fromSwidStaticConstIdentifier,
    11: SwidStaticConstProto_Value.fromSwidStaticConstListLiteral,
    12: SwidStaticConstProto_Value.fromSwidStaticConstMapLiteralEntry,
    13: SwidStaticConstProto_Value.fromSwidStaticConstMapLiteral,
    14: SwidStaticConstProto_Value.fromSwidStaticConstTopLevelVariableReference,
    0: SwidStaticConstProto_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidStaticConstProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14])
    ..aOM<SwidBooleanLiteralProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidBooleanLiteral',
        protoName: 'fromSwidBooleanLiteral',
        subBuilder: SwidBooleanLiteralProto.create)
    ..aOM<SwidStringLiteralProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidStringLiteral',
        protoName: 'fromSwidStringLiteral',
        subBuilder: SwidStringLiteralProto.create)
    ..aOM<SwidIntegerLiteralProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidIntegerLiteral',
        protoName: 'fromSwidIntegerLiteral',
        subBuilder: SwidIntegerLiteralProto.create)
    ..aOM<SwidDoubleLiteralProto>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromDoubleLiteral',
        protoName: 'fromDoubleLiteral',
        subBuilder: SwidDoubleLiteralProto.create)
    ..aOM<SwidStaticConstFunctionInvocationProto>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidStaticConstFunctionInvocation',
        protoName: 'fromSwidStaticConstFunctionInvocation',
        subBuilder: SwidStaticConstFunctionInvocationProto.create)
    ..aOM<SwidStaticConstFieldReferenceProto>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidStaticConstFieldReference',
        protoName: 'fromSwidStaticConstFieldReference',
        subBuilder: SwidStaticConstFieldReferenceProto.create)
    ..aOM<SwidStaticConstPrefixedExpressionProto>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidStaticConstPrefixedExpression',
        protoName: 'fromSwidStaticConstPrefixedExpression',
        subBuilder: SwidStaticConstPrefixedExpressionProto.create)
    ..aOM<SwidStaticConstBinaryExpressionProto>(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidStaticConstBinaryExpression',
        protoName: 'fromSwidStaticConstBinaryExpression',
        subBuilder: SwidStaticConstBinaryExpressionProto.create)
    ..aOM<SwidStaticConstPrefixedIdentifierProto>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidStaticConstPrefixedIdentifier',
        protoName: 'fromSwidStaticConstPrefixedIdentifier',
        subBuilder: SwidStaticConstPrefixedIdentifierProto.create)
    ..aOM<SwidStaticConstIdentifierProto>(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidStaticConstIdentifier',
        protoName: 'fromSwidStaticConstIdentifier',
        subBuilder: SwidStaticConstIdentifierProto.create)
    ..aOM<SwidStaticConstListLiteralProto>(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidStaticConstListLiteral',
        protoName: 'fromSwidStaticConstListLiteral',
        subBuilder: SwidStaticConstListLiteralProto.create)
    ..aOM<SwidStaticConstMapLiteralEntryProto>(
        12,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidStaticConstMapLiteralEntry',
        protoName: 'fromSwidStaticConstMapLiteralEntry',
        subBuilder: SwidStaticConstMapLiteralEntryProto.create)
    ..aOM<SwidStaticConstMapLiteralProto>(
        13,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidStaticConstMapLiteral',
        protoName: 'fromSwidStaticConstMapLiteral',
        subBuilder: SwidStaticConstMapLiteralProto.create)
    ..aOM<SwidStaticConstTopLevelVariableReferenceProto>(
        14,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidStaticConstTopLevelVariableReference',
        protoName: 'fromSwidStaticConstTopLevelVariableReference',
        subBuilder: SwidStaticConstTopLevelVariableReferenceProto.create)
    ..hasRequiredFields = false;

  SwidStaticConstProto._() : super();
  factory SwidStaticConstProto({
    SwidBooleanLiteralProto? fromSwidBooleanLiteral,
    SwidStringLiteralProto? fromSwidStringLiteral,
    SwidIntegerLiteralProto? fromSwidIntegerLiteral,
    SwidDoubleLiteralProto? fromDoubleLiteral,
    SwidStaticConstFunctionInvocationProto?
        fromSwidStaticConstFunctionInvocation,
    SwidStaticConstFieldReferenceProto? fromSwidStaticConstFieldReference,
    SwidStaticConstPrefixedExpressionProto?
        fromSwidStaticConstPrefixedExpression,
    SwidStaticConstBinaryExpressionProto? fromSwidStaticConstBinaryExpression,
    SwidStaticConstPrefixedIdentifierProto?
        fromSwidStaticConstPrefixedIdentifier,
    SwidStaticConstIdentifierProto? fromSwidStaticConstIdentifier,
    SwidStaticConstListLiteralProto? fromSwidStaticConstListLiteral,
    SwidStaticConstMapLiteralEntryProto? fromSwidStaticConstMapLiteralEntry,
    SwidStaticConstMapLiteralProto? fromSwidStaticConstMapLiteral,
    SwidStaticConstTopLevelVariableReferenceProto?
        fromSwidStaticConstTopLevelVariableReference,
  }) {
    final _result = create();
    if (fromSwidBooleanLiteral != null) {
      _result.fromSwidBooleanLiteral = fromSwidBooleanLiteral;
    }
    if (fromSwidStringLiteral != null) {
      _result.fromSwidStringLiteral = fromSwidStringLiteral;
    }
    if (fromSwidIntegerLiteral != null) {
      _result.fromSwidIntegerLiteral = fromSwidIntegerLiteral;
    }
    if (fromDoubleLiteral != null) {
      _result.fromDoubleLiteral = fromDoubleLiteral;
    }
    if (fromSwidStaticConstFunctionInvocation != null) {
      _result.fromSwidStaticConstFunctionInvocation =
          fromSwidStaticConstFunctionInvocation;
    }
    if (fromSwidStaticConstFieldReference != null) {
      _result.fromSwidStaticConstFieldReference =
          fromSwidStaticConstFieldReference;
    }
    if (fromSwidStaticConstPrefixedExpression != null) {
      _result.fromSwidStaticConstPrefixedExpression =
          fromSwidStaticConstPrefixedExpression;
    }
    if (fromSwidStaticConstBinaryExpression != null) {
      _result.fromSwidStaticConstBinaryExpression =
          fromSwidStaticConstBinaryExpression;
    }
    if (fromSwidStaticConstPrefixedIdentifier != null) {
      _result.fromSwidStaticConstPrefixedIdentifier =
          fromSwidStaticConstPrefixedIdentifier;
    }
    if (fromSwidStaticConstIdentifier != null) {
      _result.fromSwidStaticConstIdentifier = fromSwidStaticConstIdentifier;
    }
    if (fromSwidStaticConstListLiteral != null) {
      _result.fromSwidStaticConstListLiteral = fromSwidStaticConstListLiteral;
    }
    if (fromSwidStaticConstMapLiteralEntry != null) {
      _result.fromSwidStaticConstMapLiteralEntry =
          fromSwidStaticConstMapLiteralEntry;
    }
    if (fromSwidStaticConstMapLiteral != null) {
      _result.fromSwidStaticConstMapLiteral = fromSwidStaticConstMapLiteral;
    }
    if (fromSwidStaticConstTopLevelVariableReference != null) {
      _result.fromSwidStaticConstTopLevelVariableReference =
          fromSwidStaticConstTopLevelVariableReference;
    }
    return _result;
  }
  factory SwidStaticConstProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidStaticConstProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidStaticConstProto clone() =>
      SwidStaticConstProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidStaticConstProto copyWith(void Function(SwidStaticConstProto) updates) =>
      super.copyWith((message) => updates(message as SwidStaticConstProto))
          as SwidStaticConstProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstProto create() => SwidStaticConstProto._();
  SwidStaticConstProto createEmptyInstance() => create();
  static $pb.PbList<SwidStaticConstProto> createRepeated() =>
      $pb.PbList<SwidStaticConstProto>();
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidStaticConstProto>(create);
  static SwidStaticConstProto? _defaultInstance;

  SwidStaticConstProto_Value whichValue() =>
      _SwidStaticConstProto_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SwidBooleanLiteralProto get fromSwidBooleanLiteral => $_getN(0);
  @$pb.TagNumber(1)
  set fromSwidBooleanLiteral(SwidBooleanLiteralProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFromSwidBooleanLiteral() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromSwidBooleanLiteral() => clearField(1);
  @$pb.TagNumber(1)
  SwidBooleanLiteralProto ensureFromSwidBooleanLiteral() => $_ensure(0);

  @$pb.TagNumber(2)
  SwidStringLiteralProto get fromSwidStringLiteral => $_getN(1);
  @$pb.TagNumber(2)
  set fromSwidStringLiteral(SwidStringLiteralProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFromSwidStringLiteral() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromSwidStringLiteral() => clearField(2);
  @$pb.TagNumber(2)
  SwidStringLiteralProto ensureFromSwidStringLiteral() => $_ensure(1);

  @$pb.TagNumber(3)
  SwidIntegerLiteralProto get fromSwidIntegerLiteral => $_getN(2);
  @$pb.TagNumber(3)
  set fromSwidIntegerLiteral(SwidIntegerLiteralProto v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFromSwidIntegerLiteral() => $_has(2);
  @$pb.TagNumber(3)
  void clearFromSwidIntegerLiteral() => clearField(3);
  @$pb.TagNumber(3)
  SwidIntegerLiteralProto ensureFromSwidIntegerLiteral() => $_ensure(2);

  @$pb.TagNumber(4)
  SwidDoubleLiteralProto get fromDoubleLiteral => $_getN(3);
  @$pb.TagNumber(4)
  set fromDoubleLiteral(SwidDoubleLiteralProto v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFromDoubleLiteral() => $_has(3);
  @$pb.TagNumber(4)
  void clearFromDoubleLiteral() => clearField(4);
  @$pb.TagNumber(4)
  SwidDoubleLiteralProto ensureFromDoubleLiteral() => $_ensure(3);

  @$pb.TagNumber(5)
  SwidStaticConstFunctionInvocationProto
      get fromSwidStaticConstFunctionInvocation => $_getN(4);
  @$pb.TagNumber(5)
  set fromSwidStaticConstFunctionInvocation(
      SwidStaticConstFunctionInvocationProto v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasFromSwidStaticConstFunctionInvocation() => $_has(4);
  @$pb.TagNumber(5)
  void clearFromSwidStaticConstFunctionInvocation() => clearField(5);
  @$pb.TagNumber(5)
  SwidStaticConstFunctionInvocationProto
      ensureFromSwidStaticConstFunctionInvocation() => $_ensure(4);

  @$pb.TagNumber(6)
  SwidStaticConstFieldReferenceProto get fromSwidStaticConstFieldReference =>
      $_getN(5);
  @$pb.TagNumber(6)
  set fromSwidStaticConstFieldReference(SwidStaticConstFieldReferenceProto v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasFromSwidStaticConstFieldReference() => $_has(5);
  @$pb.TagNumber(6)
  void clearFromSwidStaticConstFieldReference() => clearField(6);
  @$pb.TagNumber(6)
  SwidStaticConstFieldReferenceProto
      ensureFromSwidStaticConstFieldReference() => $_ensure(5);

  @$pb.TagNumber(7)
  SwidStaticConstPrefixedExpressionProto
      get fromSwidStaticConstPrefixedExpression => $_getN(6);
  @$pb.TagNumber(7)
  set fromSwidStaticConstPrefixedExpression(
      SwidStaticConstPrefixedExpressionProto v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasFromSwidStaticConstPrefixedExpression() => $_has(6);
  @$pb.TagNumber(7)
  void clearFromSwidStaticConstPrefixedExpression() => clearField(7);
  @$pb.TagNumber(7)
  SwidStaticConstPrefixedExpressionProto
      ensureFromSwidStaticConstPrefixedExpression() => $_ensure(6);

  @$pb.TagNumber(8)
  SwidStaticConstBinaryExpressionProto
      get fromSwidStaticConstBinaryExpression => $_getN(7);
  @$pb.TagNumber(8)
  set fromSwidStaticConstBinaryExpression(
      SwidStaticConstBinaryExpressionProto v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasFromSwidStaticConstBinaryExpression() => $_has(7);
  @$pb.TagNumber(8)
  void clearFromSwidStaticConstBinaryExpression() => clearField(8);
  @$pb.TagNumber(8)
  SwidStaticConstBinaryExpressionProto
      ensureFromSwidStaticConstBinaryExpression() => $_ensure(7);

  @$pb.TagNumber(9)
  SwidStaticConstPrefixedIdentifierProto
      get fromSwidStaticConstPrefixedIdentifier => $_getN(8);
  @$pb.TagNumber(9)
  set fromSwidStaticConstPrefixedIdentifier(
      SwidStaticConstPrefixedIdentifierProto v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasFromSwidStaticConstPrefixedIdentifier() => $_has(8);
  @$pb.TagNumber(9)
  void clearFromSwidStaticConstPrefixedIdentifier() => clearField(9);
  @$pb.TagNumber(9)
  SwidStaticConstPrefixedIdentifierProto
      ensureFromSwidStaticConstPrefixedIdentifier() => $_ensure(8);

  @$pb.TagNumber(10)
  SwidStaticConstIdentifierProto get fromSwidStaticConstIdentifier => $_getN(9);
  @$pb.TagNumber(10)
  set fromSwidStaticConstIdentifier(SwidStaticConstIdentifierProto v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasFromSwidStaticConstIdentifier() => $_has(9);
  @$pb.TagNumber(10)
  void clearFromSwidStaticConstIdentifier() => clearField(10);
  @$pb.TagNumber(10)
  SwidStaticConstIdentifierProto ensureFromSwidStaticConstIdentifier() =>
      $_ensure(9);

  @$pb.TagNumber(11)
  SwidStaticConstListLiteralProto get fromSwidStaticConstListLiteral =>
      $_getN(10);
  @$pb.TagNumber(11)
  set fromSwidStaticConstListLiteral(SwidStaticConstListLiteralProto v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasFromSwidStaticConstListLiteral() => $_has(10);
  @$pb.TagNumber(11)
  void clearFromSwidStaticConstListLiteral() => clearField(11);
  @$pb.TagNumber(11)
  SwidStaticConstListLiteralProto ensureFromSwidStaticConstListLiteral() =>
      $_ensure(10);

  @$pb.TagNumber(12)
  SwidStaticConstMapLiteralEntryProto get fromSwidStaticConstMapLiteralEntry =>
      $_getN(11);
  @$pb.TagNumber(12)
  set fromSwidStaticConstMapLiteralEntry(
      SwidStaticConstMapLiteralEntryProto v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasFromSwidStaticConstMapLiteralEntry() => $_has(11);
  @$pb.TagNumber(12)
  void clearFromSwidStaticConstMapLiteralEntry() => clearField(12);
  @$pb.TagNumber(12)
  SwidStaticConstMapLiteralEntryProto
      ensureFromSwidStaticConstMapLiteralEntry() => $_ensure(11);

  @$pb.TagNumber(13)
  SwidStaticConstMapLiteralProto get fromSwidStaticConstMapLiteral =>
      $_getN(12);
  @$pb.TagNumber(13)
  set fromSwidStaticConstMapLiteral(SwidStaticConstMapLiteralProto v) {
    setField(13, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasFromSwidStaticConstMapLiteral() => $_has(12);
  @$pb.TagNumber(13)
  void clearFromSwidStaticConstMapLiteral() => clearField(13);
  @$pb.TagNumber(13)
  SwidStaticConstMapLiteralProto ensureFromSwidStaticConstMapLiteral() =>
      $_ensure(12);

  @$pb.TagNumber(14)
  SwidStaticConstTopLevelVariableReferenceProto
      get fromSwidStaticConstTopLevelVariableReference => $_getN(13);
  @$pb.TagNumber(14)
  set fromSwidStaticConstTopLevelVariableReference(
      SwidStaticConstTopLevelVariableReferenceProto v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasFromSwidStaticConstTopLevelVariableReference() => $_has(13);
  @$pb.TagNumber(14)
  void clearFromSwidStaticConstTopLevelVariableReference() => clearField(14);
  @$pb.TagNumber(14)
  SwidStaticConstTopLevelVariableReferenceProto
      ensureFromSwidStaticConstTopLevelVariableReference() => $_ensure(13);
}

class SwidStaticConstBinaryExpressionProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidStaticConstBinaryExpressionProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'operator')
    ..aOM<SwidStaticConstProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'leftOperand',
        protoName: 'leftOperand',
        subBuilder: SwidStaticConstProto.create)
    ..aOM<SwidStaticConstProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'rightOperand',
        protoName: 'rightOperand',
        subBuilder: SwidStaticConstProto.create)
    ..hasRequiredFields = false;

  SwidStaticConstBinaryExpressionProto._() : super();
  factory SwidStaticConstBinaryExpressionProto({
    $core.String? operator,
    SwidStaticConstProto? leftOperand,
    SwidStaticConstProto? rightOperand,
  }) {
    final _result = create();
    if (operator != null) {
      _result.operator = operator;
    }
    if (leftOperand != null) {
      _result.leftOperand = leftOperand;
    }
    if (rightOperand != null) {
      _result.rightOperand = rightOperand;
    }
    return _result;
  }
  factory SwidStaticConstBinaryExpressionProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidStaticConstBinaryExpressionProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidStaticConstBinaryExpressionProto clone() =>
      SwidStaticConstBinaryExpressionProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidStaticConstBinaryExpressionProto copyWith(
          void Function(SwidStaticConstBinaryExpressionProto) updates) =>
      super.copyWith((message) =>
              updates(message as SwidStaticConstBinaryExpressionProto))
          as SwidStaticConstBinaryExpressionProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstBinaryExpressionProto create() =>
      SwidStaticConstBinaryExpressionProto._();
  SwidStaticConstBinaryExpressionProto createEmptyInstance() => create();
  static $pb.PbList<SwidStaticConstBinaryExpressionProto> createRepeated() =>
      $pb.PbList<SwidStaticConstBinaryExpressionProto>();
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstBinaryExpressionProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidStaticConstBinaryExpressionProto>(create);
  static SwidStaticConstBinaryExpressionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get operator => $_getSZ(0);
  @$pb.TagNumber(1)
  set operator($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOperator() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperator() => clearField(1);

  @$pb.TagNumber(2)
  SwidStaticConstProto get leftOperand => $_getN(1);
  @$pb.TagNumber(2)
  set leftOperand(SwidStaticConstProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLeftOperand() => $_has(1);
  @$pb.TagNumber(2)
  void clearLeftOperand() => clearField(2);
  @$pb.TagNumber(2)
  SwidStaticConstProto ensureLeftOperand() => $_ensure(1);

  @$pb.TagNumber(3)
  SwidStaticConstProto get rightOperand => $_getN(2);
  @$pb.TagNumber(3)
  set rightOperand(SwidStaticConstProto v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRightOperand() => $_has(2);
  @$pb.TagNumber(3)
  void clearRightOperand() => clearField(3);
  @$pb.TagNumber(3)
  SwidStaticConstProto ensureRightOperand() => $_ensure(2);
}

class SwidStaticConstFieldDeclarationProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidStaticConstFieldDeclarationProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOM<SwidStaticConstProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        subBuilder: SwidStaticConstProto.create)
    ..hasRequiredFields = false;

  SwidStaticConstFieldDeclarationProto._() : super();
  factory SwidStaticConstFieldDeclarationProto({
    $core.String? name,
    SwidStaticConstProto? value,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory SwidStaticConstFieldDeclarationProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidStaticConstFieldDeclarationProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidStaticConstFieldDeclarationProto clone() =>
      SwidStaticConstFieldDeclarationProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidStaticConstFieldDeclarationProto copyWith(
          void Function(SwidStaticConstFieldDeclarationProto) updates) =>
      super.copyWith((message) =>
              updates(message as SwidStaticConstFieldDeclarationProto))
          as SwidStaticConstFieldDeclarationProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstFieldDeclarationProto create() =>
      SwidStaticConstFieldDeclarationProto._();
  SwidStaticConstFieldDeclarationProto createEmptyInstance() => create();
  static $pb.PbList<SwidStaticConstFieldDeclarationProto> createRepeated() =>
      $pb.PbList<SwidStaticConstFieldDeclarationProto>();
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstFieldDeclarationProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidStaticConstFieldDeclarationProto>(create);
  static SwidStaticConstFieldDeclarationProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  SwidStaticConstProto get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(SwidStaticConstProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
  @$pb.TagNumber(2)
  SwidStaticConstProto ensureValue() => $_ensure(1);
}

class SwidStaticConstFieldReferenceProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidStaticConstFieldReferenceProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..hasRequiredFields = false;

  SwidStaticConstFieldReferenceProto._() : super();
  factory SwidStaticConstFieldReferenceProto({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory SwidStaticConstFieldReferenceProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidStaticConstFieldReferenceProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidStaticConstFieldReferenceProto clone() =>
      SwidStaticConstFieldReferenceProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidStaticConstFieldReferenceProto copyWith(
          void Function(SwidStaticConstFieldReferenceProto) updates) =>
      super.copyWith((message) =>
              updates(message as SwidStaticConstFieldReferenceProto))
          as SwidStaticConstFieldReferenceProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstFieldReferenceProto create() =>
      SwidStaticConstFieldReferenceProto._();
  SwidStaticConstFieldReferenceProto createEmptyInstance() => create();
  static $pb.PbList<SwidStaticConstFieldReferenceProto> createRepeated() =>
      $pb.PbList<SwidStaticConstFieldReferenceProto>();
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstFieldReferenceProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidStaticConstFieldReferenceProto>(
          create);
  static SwidStaticConstFieldReferenceProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class SwidStaticConstFunctionInvocationProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidStaticConstFunctionInvocationProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value')
    ..aOM<SwidTypeProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'staticType',
        protoName: 'staticType',
        subBuilder: SwidTypeProto.create)
    ..pc<SwidStaticConstProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'normalParameters',
        $pb.PbFieldType.PM,
        protoName: 'normalParameters',
        subBuilder: SwidStaticConstProto.create)
    ..m<$core.String, SwidStaticConstProto>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'namedParameters',
        protoName: 'namedParameters',
        entryClassName:
            'SwidStaticConstFunctionInvocationProto.NamedParametersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: SwidStaticConstProto.create,
        packageName: const $pb.PackageName('org.hydro_sdk.swid.ir'))
    ..aOB(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isConstructorInvocation',
        protoName: 'isConstructorInvocation')
    ..hasRequiredFields = false;

  SwidStaticConstFunctionInvocationProto._() : super();
  factory SwidStaticConstFunctionInvocationProto({
    $core.String? value,
    SwidTypeProto? staticType,
    $core.Iterable<SwidStaticConstProto>? normalParameters,
    $core.Map<$core.String, SwidStaticConstProto>? namedParameters,
    $core.bool? isConstructorInvocation,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    if (staticType != null) {
      _result.staticType = staticType;
    }
    if (normalParameters != null) {
      _result.normalParameters.addAll(normalParameters);
    }
    if (namedParameters != null) {
      _result.namedParameters.addAll(namedParameters);
    }
    if (isConstructorInvocation != null) {
      _result.isConstructorInvocation = isConstructorInvocation;
    }
    return _result;
  }
  factory SwidStaticConstFunctionInvocationProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidStaticConstFunctionInvocationProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidStaticConstFunctionInvocationProto clone() =>
      SwidStaticConstFunctionInvocationProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidStaticConstFunctionInvocationProto copyWith(
          void Function(SwidStaticConstFunctionInvocationProto) updates) =>
      super.copyWith((message) =>
              updates(message as SwidStaticConstFunctionInvocationProto))
          as SwidStaticConstFunctionInvocationProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstFunctionInvocationProto create() =>
      SwidStaticConstFunctionInvocationProto._();
  SwidStaticConstFunctionInvocationProto createEmptyInstance() => create();
  static $pb.PbList<SwidStaticConstFunctionInvocationProto> createRepeated() =>
      $pb.PbList<SwidStaticConstFunctionInvocationProto>();
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstFunctionInvocationProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidStaticConstFunctionInvocationProto>(create);
  static SwidStaticConstFunctionInvocationProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

  @$pb.TagNumber(2)
  SwidTypeProto get staticType => $_getN(1);
  @$pb.TagNumber(2)
  set staticType(SwidTypeProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStaticType() => $_has(1);
  @$pb.TagNumber(2)
  void clearStaticType() => clearField(2);
  @$pb.TagNumber(2)
  SwidTypeProto ensureStaticType() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<SwidStaticConstProto> get normalParameters => $_getList(2);

  @$pb.TagNumber(4)
  $core.Map<$core.String, SwidStaticConstProto> get namedParameters =>
      $_getMap(3);

  @$pb.TagNumber(5)
  $core.bool get isConstructorInvocation => $_getBF(4);
  @$pb.TagNumber(5)
  set isConstructorInvocation($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasIsConstructorInvocation() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsConstructorInvocation() => clearField(5);
}

class SwidStaticConstIdentifierProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidStaticConstIdentifierProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'identifier')
    ..aOM<SwidTypeProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'enclosingType',
        protoName: 'enclosingType',
        subBuilder: SwidTypeProto.create)
    ..hasRequiredFields = false;

  SwidStaticConstIdentifierProto._() : super();
  factory SwidStaticConstIdentifierProto({
    $core.String? identifier,
    SwidTypeProto? enclosingType,
  }) {
    final _result = create();
    if (identifier != null) {
      _result.identifier = identifier;
    }
    if (enclosingType != null) {
      _result.enclosingType = enclosingType;
    }
    return _result;
  }
  factory SwidStaticConstIdentifierProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidStaticConstIdentifierProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidStaticConstIdentifierProto clone() =>
      SwidStaticConstIdentifierProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidStaticConstIdentifierProto copyWith(
          void Function(SwidStaticConstIdentifierProto) updates) =>
      super.copyWith(
              (message) => updates(message as SwidStaticConstIdentifierProto))
          as SwidStaticConstIdentifierProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstIdentifierProto create() =>
      SwidStaticConstIdentifierProto._();
  SwidStaticConstIdentifierProto createEmptyInstance() => create();
  static $pb.PbList<SwidStaticConstIdentifierProto> createRepeated() =>
      $pb.PbList<SwidStaticConstIdentifierProto>();
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstIdentifierProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidStaticConstIdentifierProto>(create);
  static SwidStaticConstIdentifierProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get identifier => $_getSZ(0);
  @$pb.TagNumber(1)
  set identifier($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIdentifier() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentifier() => clearField(1);

  @$pb.TagNumber(2)
  SwidTypeProto get enclosingType => $_getN(1);
  @$pb.TagNumber(2)
  set enclosingType(SwidTypeProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasEnclosingType() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnclosingType() => clearField(2);
  @$pb.TagNumber(2)
  SwidTypeProto ensureEnclosingType() => $_ensure(1);
}

class SwidStaticConstListLiteralProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidStaticConstListLiteralProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..pc<SwidStaticConstProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'elements',
        $pb.PbFieldType.PM,
        subBuilder: SwidStaticConstProto.create)
    ..aOM<SwidTypeProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'staticType',
        protoName: 'staticType',
        subBuilder: SwidTypeProto.create)
    ..hasRequiredFields = false;

  SwidStaticConstListLiteralProto._() : super();
  factory SwidStaticConstListLiteralProto({
    $core.Iterable<SwidStaticConstProto>? elements,
    SwidTypeProto? staticType,
  }) {
    final _result = create();
    if (elements != null) {
      _result.elements.addAll(elements);
    }
    if (staticType != null) {
      _result.staticType = staticType;
    }
    return _result;
  }
  factory SwidStaticConstListLiteralProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidStaticConstListLiteralProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidStaticConstListLiteralProto clone() =>
      SwidStaticConstListLiteralProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidStaticConstListLiteralProto copyWith(
          void Function(SwidStaticConstListLiteralProto) updates) =>
      super.copyWith(
              (message) => updates(message as SwidStaticConstListLiteralProto))
          as SwidStaticConstListLiteralProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstListLiteralProto create() =>
      SwidStaticConstListLiteralProto._();
  SwidStaticConstListLiteralProto createEmptyInstance() => create();
  static $pb.PbList<SwidStaticConstListLiteralProto> createRepeated() =>
      $pb.PbList<SwidStaticConstListLiteralProto>();
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstListLiteralProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidStaticConstListLiteralProto>(
          create);
  static SwidStaticConstListLiteralProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SwidStaticConstProto> get elements => $_getList(0);

  @$pb.TagNumber(2)
  SwidTypeProto get staticType => $_getN(1);
  @$pb.TagNumber(2)
  set staticType(SwidTypeProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStaticType() => $_has(1);
  @$pb.TagNumber(2)
  void clearStaticType() => clearField(2);
  @$pb.TagNumber(2)
  SwidTypeProto ensureStaticType() => $_ensure(1);
}

class SwidStaticConstMapLiteralProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidStaticConstMapLiteralProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..pc<SwidStaticConstMapLiteralEntryProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'elements',
        $pb.PbFieldType.PM,
        subBuilder: SwidStaticConstMapLiteralEntryProto.create)
    ..aOM<SwidTypeProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'staticType',
        protoName: 'staticType',
        subBuilder: SwidTypeProto.create)
    ..hasRequiredFields = false;

  SwidStaticConstMapLiteralProto._() : super();
  factory SwidStaticConstMapLiteralProto({
    $core.Iterable<SwidStaticConstMapLiteralEntryProto>? elements,
    SwidTypeProto? staticType,
  }) {
    final _result = create();
    if (elements != null) {
      _result.elements.addAll(elements);
    }
    if (staticType != null) {
      _result.staticType = staticType;
    }
    return _result;
  }
  factory SwidStaticConstMapLiteralProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidStaticConstMapLiteralProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidStaticConstMapLiteralProto clone() =>
      SwidStaticConstMapLiteralProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidStaticConstMapLiteralProto copyWith(
          void Function(SwidStaticConstMapLiteralProto) updates) =>
      super.copyWith(
              (message) => updates(message as SwidStaticConstMapLiteralProto))
          as SwidStaticConstMapLiteralProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstMapLiteralProto create() =>
      SwidStaticConstMapLiteralProto._();
  SwidStaticConstMapLiteralProto createEmptyInstance() => create();
  static $pb.PbList<SwidStaticConstMapLiteralProto> createRepeated() =>
      $pb.PbList<SwidStaticConstMapLiteralProto>();
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstMapLiteralProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidStaticConstMapLiteralProto>(create);
  static SwidStaticConstMapLiteralProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SwidStaticConstMapLiteralEntryProto> get elements => $_getList(0);

  @$pb.TagNumber(2)
  SwidTypeProto get staticType => $_getN(1);
  @$pb.TagNumber(2)
  set staticType(SwidTypeProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStaticType() => $_has(1);
  @$pb.TagNumber(2)
  void clearStaticType() => clearField(2);
  @$pb.TagNumber(2)
  SwidTypeProto ensureStaticType() => $_ensure(1);
}

class SwidStaticConstMapLiteralEntryProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidStaticConstMapLiteralEntryProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOM<SwidStaticConstProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'key',
        subBuilder: SwidStaticConstProto.create)
    ..aOM<SwidStaticConstProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        subBuilder: SwidStaticConstProto.create)
    ..hasRequiredFields = false;

  SwidStaticConstMapLiteralEntryProto._() : super();
  factory SwidStaticConstMapLiteralEntryProto({
    SwidStaticConstProto? key,
    SwidStaticConstProto? value,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory SwidStaticConstMapLiteralEntryProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidStaticConstMapLiteralEntryProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidStaticConstMapLiteralEntryProto clone() =>
      SwidStaticConstMapLiteralEntryProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidStaticConstMapLiteralEntryProto copyWith(
          void Function(SwidStaticConstMapLiteralEntryProto) updates) =>
      super.copyWith((message) =>
              updates(message as SwidStaticConstMapLiteralEntryProto))
          as SwidStaticConstMapLiteralEntryProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstMapLiteralEntryProto create() =>
      SwidStaticConstMapLiteralEntryProto._();
  SwidStaticConstMapLiteralEntryProto createEmptyInstance() => create();
  static $pb.PbList<SwidStaticConstMapLiteralEntryProto> createRepeated() =>
      $pb.PbList<SwidStaticConstMapLiteralEntryProto>();
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstMapLiteralEntryProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidStaticConstMapLiteralEntryProto>(create);
  static SwidStaticConstMapLiteralEntryProto? _defaultInstance;

  @$pb.TagNumber(1)
  SwidStaticConstProto get key => $_getN(0);
  @$pb.TagNumber(1)
  set key(SwidStaticConstProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
  @$pb.TagNumber(1)
  SwidStaticConstProto ensureKey() => $_ensure(0);

  @$pb.TagNumber(2)
  SwidStaticConstProto get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(SwidStaticConstProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
  @$pb.TagNumber(2)
  SwidStaticConstProto ensureValue() => $_ensure(1);
}

class SwidStaticConstPrefixedExpressionProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidStaticConstPrefixedExpressionProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'prefix')
    ..aOM<SwidStaticConstProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'expression',
        subBuilder: SwidStaticConstProto.create)
    ..hasRequiredFields = false;

  SwidStaticConstPrefixedExpressionProto._() : super();
  factory SwidStaticConstPrefixedExpressionProto({
    $core.String? prefix,
    SwidStaticConstProto? expression,
  }) {
    final _result = create();
    if (prefix != null) {
      _result.prefix = prefix;
    }
    if (expression != null) {
      _result.expression = expression;
    }
    return _result;
  }
  factory SwidStaticConstPrefixedExpressionProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidStaticConstPrefixedExpressionProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidStaticConstPrefixedExpressionProto clone() =>
      SwidStaticConstPrefixedExpressionProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidStaticConstPrefixedExpressionProto copyWith(
          void Function(SwidStaticConstPrefixedExpressionProto) updates) =>
      super.copyWith((message) =>
              updates(message as SwidStaticConstPrefixedExpressionProto))
          as SwidStaticConstPrefixedExpressionProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstPrefixedExpressionProto create() =>
      SwidStaticConstPrefixedExpressionProto._();
  SwidStaticConstPrefixedExpressionProto createEmptyInstance() => create();
  static $pb.PbList<SwidStaticConstPrefixedExpressionProto> createRepeated() =>
      $pb.PbList<SwidStaticConstPrefixedExpressionProto>();
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstPrefixedExpressionProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidStaticConstPrefixedExpressionProto>(create);
  static SwidStaticConstPrefixedExpressionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get prefix => $_getSZ(0);
  @$pb.TagNumber(1)
  set prefix($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPrefix() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrefix() => clearField(1);

  @$pb.TagNumber(2)
  SwidStaticConstProto get expression => $_getN(1);
  @$pb.TagNumber(2)
  set expression(SwidStaticConstProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasExpression() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpression() => clearField(2);
  @$pb.TagNumber(2)
  SwidStaticConstProto ensureExpression() => $_ensure(1);
}

class SwidStaticConstPrefixedIdentifierProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidStaticConstPrefixedIdentifierProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOM<SwidInterfaceProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'prefix',
        subBuilder: SwidInterfaceProto.create)
    ..aOM<SwidStaticConstFieldReferenceProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'staticConstFieldReference',
        protoName: 'staticConstFieldReference',
        subBuilder: SwidStaticConstFieldReferenceProto.create)
    ..hasRequiredFields = false;

  SwidStaticConstPrefixedIdentifierProto._() : super();
  factory SwidStaticConstPrefixedIdentifierProto({
    SwidInterfaceProto? prefix,
    SwidStaticConstFieldReferenceProto? staticConstFieldReference,
  }) {
    final _result = create();
    if (prefix != null) {
      _result.prefix = prefix;
    }
    if (staticConstFieldReference != null) {
      _result.staticConstFieldReference = staticConstFieldReference;
    }
    return _result;
  }
  factory SwidStaticConstPrefixedIdentifierProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidStaticConstPrefixedIdentifierProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidStaticConstPrefixedIdentifierProto clone() =>
      SwidStaticConstPrefixedIdentifierProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidStaticConstPrefixedIdentifierProto copyWith(
          void Function(SwidStaticConstPrefixedIdentifierProto) updates) =>
      super.copyWith((message) =>
              updates(message as SwidStaticConstPrefixedIdentifierProto))
          as SwidStaticConstPrefixedIdentifierProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstPrefixedIdentifierProto create() =>
      SwidStaticConstPrefixedIdentifierProto._();
  SwidStaticConstPrefixedIdentifierProto createEmptyInstance() => create();
  static $pb.PbList<SwidStaticConstPrefixedIdentifierProto> createRepeated() =>
      $pb.PbList<SwidStaticConstPrefixedIdentifierProto>();
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstPrefixedIdentifierProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidStaticConstPrefixedIdentifierProto>(create);
  static SwidStaticConstPrefixedIdentifierProto? _defaultInstance;

  @$pb.TagNumber(1)
  SwidInterfaceProto get prefix => $_getN(0);
  @$pb.TagNumber(1)
  set prefix(SwidInterfaceProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPrefix() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrefix() => clearField(1);
  @$pb.TagNumber(1)
  SwidInterfaceProto ensurePrefix() => $_ensure(0);

  @$pb.TagNumber(2)
  SwidStaticConstFieldReferenceProto get staticConstFieldReference => $_getN(1);
  @$pb.TagNumber(2)
  set staticConstFieldReference(SwidStaticConstFieldReferenceProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStaticConstFieldReference() => $_has(1);
  @$pb.TagNumber(2)
  void clearStaticConstFieldReference() => clearField(2);
  @$pb.TagNumber(2)
  SwidStaticConstFieldReferenceProto ensureStaticConstFieldReference() =>
      $_ensure(1);
}

class SwidStaticConstTopLevelVariableReferenceProto
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidStaticConstTopLevelVariableReferenceProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'identifier')
    ..aOM<SwidTypeProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'topLevelReference',
        protoName: 'topLevelReference',
        subBuilder: SwidTypeProto.create)
    ..hasRequiredFields = false;

  SwidStaticConstTopLevelVariableReferenceProto._() : super();
  factory SwidStaticConstTopLevelVariableReferenceProto({
    $core.String? identifier,
    SwidTypeProto? topLevelReference,
  }) {
    final _result = create();
    if (identifier != null) {
      _result.identifier = identifier;
    }
    if (topLevelReference != null) {
      _result.topLevelReference = topLevelReference;
    }
    return _result;
  }
  factory SwidStaticConstTopLevelVariableReferenceProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidStaticConstTopLevelVariableReferenceProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidStaticConstTopLevelVariableReferenceProto clone() =>
      SwidStaticConstTopLevelVariableReferenceProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidStaticConstTopLevelVariableReferenceProto copyWith(
          void Function(SwidStaticConstTopLevelVariableReferenceProto)
              updates) =>
      super.copyWith((message) =>
              updates(message as SwidStaticConstTopLevelVariableReferenceProto))
          as SwidStaticConstTopLevelVariableReferenceProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstTopLevelVariableReferenceProto create() =>
      SwidStaticConstTopLevelVariableReferenceProto._();
  SwidStaticConstTopLevelVariableReferenceProto createEmptyInstance() =>
      create();
  static $pb.PbList<SwidStaticConstTopLevelVariableReferenceProto>
      createRepeated() =>
          $pb.PbList<SwidStaticConstTopLevelVariableReferenceProto>();
  @$core.pragma('dart2js:noInline')
  static SwidStaticConstTopLevelVariableReferenceProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidStaticConstTopLevelVariableReferenceProto>(create);
  static SwidStaticConstTopLevelVariableReferenceProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get identifier => $_getSZ(0);
  @$pb.TagNumber(1)
  set identifier($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIdentifier() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentifier() => clearField(1);

  @$pb.TagNumber(2)
  SwidTypeProto get topLevelReference => $_getN(1);
  @$pb.TagNumber(2)
  set topLevelReference(SwidTypeProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTopLevelReference() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopLevelReference() => clearField(2);
  @$pb.TagNumber(2)
  SwidTypeProto ensureTopLevelReference() => $_ensure(1);
}

class SwidStringLiteralProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidStringLiteralProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value')
    ..hasRequiredFields = false;

  SwidStringLiteralProto._() : super();
  factory SwidStringLiteralProto({
    $core.String? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory SwidStringLiteralProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidStringLiteralProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidStringLiteralProto clone() =>
      SwidStringLiteralProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidStringLiteralProto copyWith(
          void Function(SwidStringLiteralProto) updates) =>
      super.copyWith((message) => updates(message as SwidStringLiteralProto))
          as SwidStringLiteralProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidStringLiteralProto create() => SwidStringLiteralProto._();
  SwidStringLiteralProto createEmptyInstance() => create();
  static $pb.PbList<SwidStringLiteralProto> createRepeated() =>
      $pb.PbList<SwidStringLiteralProto>();
  @$core.pragma('dart2js:noInline')
  static SwidStringLiteralProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidStringLiteralProto>(create);
  static SwidStringLiteralProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class SwidTopLevelStaticConstFieldDeclarationProto
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidTopLevelStaticConstFieldDeclarationProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'originalPackagePath',
        protoName: 'originalPackagePath')
    ..aOM<SwidStaticConstFieldDeclarationProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'declaration',
        subBuilder: SwidStaticConstFieldDeclarationProto.create)
    ..hasRequiredFields = false;

  SwidTopLevelStaticConstFieldDeclarationProto._() : super();
  factory SwidTopLevelStaticConstFieldDeclarationProto({
    $core.String? originalPackagePath,
    SwidStaticConstFieldDeclarationProto? declaration,
  }) {
    final _result = create();
    if (originalPackagePath != null) {
      _result.originalPackagePath = originalPackagePath;
    }
    if (declaration != null) {
      _result.declaration = declaration;
    }
    return _result;
  }
  factory SwidTopLevelStaticConstFieldDeclarationProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidTopLevelStaticConstFieldDeclarationProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidTopLevelStaticConstFieldDeclarationProto clone() =>
      SwidTopLevelStaticConstFieldDeclarationProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidTopLevelStaticConstFieldDeclarationProto copyWith(
          void Function(SwidTopLevelStaticConstFieldDeclarationProto)
              updates) =>
      super.copyWith((message) =>
              updates(message as SwidTopLevelStaticConstFieldDeclarationProto))
          as SwidTopLevelStaticConstFieldDeclarationProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidTopLevelStaticConstFieldDeclarationProto create() =>
      SwidTopLevelStaticConstFieldDeclarationProto._();
  SwidTopLevelStaticConstFieldDeclarationProto createEmptyInstance() =>
      create();
  static $pb.PbList<SwidTopLevelStaticConstFieldDeclarationProto>
      createRepeated() =>
          $pb.PbList<SwidTopLevelStaticConstFieldDeclarationProto>();
  @$core.pragma('dart2js:noInline')
  static SwidTopLevelStaticConstFieldDeclarationProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidTopLevelStaticConstFieldDeclarationProto>(create);
  static SwidTopLevelStaticConstFieldDeclarationProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get originalPackagePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set originalPackagePath($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOriginalPackagePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearOriginalPackagePath() => clearField(1);

  @$pb.TagNumber(2)
  SwidStaticConstFieldDeclarationProto get declaration => $_getN(1);
  @$pb.TagNumber(2)
  set declaration(SwidStaticConstFieldDeclarationProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDeclaration() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeclaration() => clearField(2);
  @$pb.TagNumber(2)
  SwidStaticConstFieldDeclarationProto ensureDeclaration() => $_ensure(1);
}

enum SwidTypeProto_Value {
  fromSwidInterface,
  fromSwidClass,
  fromSwidDefaultFormalParameter,
  fromSwidFunctionType,
  notSet
}

class SwidTypeProto extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SwidTypeProto_Value>
      _SwidTypeProto_ValueByTag = {
    1: SwidTypeProto_Value.fromSwidInterface,
    2: SwidTypeProto_Value.fromSwidClass,
    3: SwidTypeProto_Value.fromSwidDefaultFormalParameter,
    4: SwidTypeProto_Value.fromSwidFunctionType,
    0: SwidTypeProto_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidTypeProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<SwidInterfaceProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidInterface',
        protoName: 'fromSwidInterface',
        subBuilder: SwidInterfaceProto.create)
    ..aOM<SwidClassProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidClass',
        protoName: 'fromSwidClass',
        subBuilder: SwidClassProto.create)
    ..aOM<SwidDefaultFormalParameterProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidDefaultFormalParameter',
        protoName: 'fromSwidDefaultFormalParameter',
        subBuilder: SwidDefaultFormalParameterProto.create)
    ..aOM<SwidFunctionTypeProto>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidFunctionType',
        protoName: 'fromSwidFunctionType',
        subBuilder: SwidFunctionTypeProto.create)
    ..hasRequiredFields = false;

  SwidTypeProto._() : super();
  factory SwidTypeProto({
    SwidInterfaceProto? fromSwidInterface,
    SwidClassProto? fromSwidClass,
    SwidDefaultFormalParameterProto? fromSwidDefaultFormalParameter,
    SwidFunctionTypeProto? fromSwidFunctionType,
  }) {
    final _result = create();
    if (fromSwidInterface != null) {
      _result.fromSwidInterface = fromSwidInterface;
    }
    if (fromSwidClass != null) {
      _result.fromSwidClass = fromSwidClass;
    }
    if (fromSwidDefaultFormalParameter != null) {
      _result.fromSwidDefaultFormalParameter = fromSwidDefaultFormalParameter;
    }
    if (fromSwidFunctionType != null) {
      _result.fromSwidFunctionType = fromSwidFunctionType;
    }
    return _result;
  }
  factory SwidTypeProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidTypeProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidTypeProto clone() => SwidTypeProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidTypeProto copyWith(void Function(SwidTypeProto) updates) =>
      super.copyWith((message) => updates(message as SwidTypeProto))
          as SwidTypeProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidTypeProto create() => SwidTypeProto._();
  SwidTypeProto createEmptyInstance() => create();
  static $pb.PbList<SwidTypeProto> createRepeated() =>
      $pb.PbList<SwidTypeProto>();
  @$core.pragma('dart2js:noInline')
  static SwidTypeProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidTypeProto>(create);
  static SwidTypeProto? _defaultInstance;

  SwidTypeProto_Value whichValue() =>
      _SwidTypeProto_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SwidInterfaceProto get fromSwidInterface => $_getN(0);
  @$pb.TagNumber(1)
  set fromSwidInterface(SwidInterfaceProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFromSwidInterface() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromSwidInterface() => clearField(1);
  @$pb.TagNumber(1)
  SwidInterfaceProto ensureFromSwidInterface() => $_ensure(0);

  @$pb.TagNumber(2)
  SwidClassProto get fromSwidClass => $_getN(1);
  @$pb.TagNumber(2)
  set fromSwidClass(SwidClassProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFromSwidClass() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromSwidClass() => clearField(2);
  @$pb.TagNumber(2)
  SwidClassProto ensureFromSwidClass() => $_ensure(1);

  @$pb.TagNumber(3)
  SwidDefaultFormalParameterProto get fromSwidDefaultFormalParameter =>
      $_getN(2);
  @$pb.TagNumber(3)
  set fromSwidDefaultFormalParameter(SwidDefaultFormalParameterProto v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFromSwidDefaultFormalParameter() => $_has(2);
  @$pb.TagNumber(3)
  void clearFromSwidDefaultFormalParameter() => clearField(3);
  @$pb.TagNumber(3)
  SwidDefaultFormalParameterProto ensureFromSwidDefaultFormalParameter() =>
      $_ensure(2);

  @$pb.TagNumber(4)
  SwidFunctionTypeProto get fromSwidFunctionType => $_getN(3);
  @$pb.TagNumber(4)
  set fromSwidFunctionType(SwidFunctionTypeProto v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFromSwidFunctionType() => $_has(3);
  @$pb.TagNumber(4)
  void clearFromSwidFunctionType() => clearField(4);
  @$pb.TagNumber(4)
  SwidFunctionTypeProto ensureFromSwidFunctionType() => $_ensure(3);
}

class SwidTypeArgumentElementProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidTypeArgumentElementProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOM<SwidTypeProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bound',
        subBuilder: SwidTypeProto.create)
    ..hasRequiredFields = false;

  SwidTypeArgumentElementProto._() : super();
  factory SwidTypeArgumentElementProto({
    SwidTypeProto? bound,
  }) {
    final _result = create();
    if (bound != null) {
      _result.bound = bound;
    }
    return _result;
  }
  factory SwidTypeArgumentElementProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidTypeArgumentElementProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidTypeArgumentElementProto clone() =>
      SwidTypeArgumentElementProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidTypeArgumentElementProto copyWith(
          void Function(SwidTypeArgumentElementProto) updates) =>
      super.copyWith(
              (message) => updates(message as SwidTypeArgumentElementProto))
          as SwidTypeArgumentElementProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidTypeArgumentElementProto create() =>
      SwidTypeArgumentElementProto._();
  SwidTypeArgumentElementProto createEmptyInstance() => create();
  static $pb.PbList<SwidTypeArgumentElementProto> createRepeated() =>
      $pb.PbList<SwidTypeArgumentElementProto>();
  @$core.pragma('dart2js:noInline')
  static SwidTypeArgumentElementProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidTypeArgumentElementProto>(create);
  static SwidTypeArgumentElementProto? _defaultInstance;

  @$pb.TagNumber(1)
  SwidTypeProto get bound => $_getN(0);
  @$pb.TagNumber(1)
  set bound(SwidTypeProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBound() => $_has(0);
  @$pb.TagNumber(1)
  void clearBound() => clearField(1);
  @$pb.TagNumber(1)
  SwidTypeProto ensureBound() => $_ensure(0);
}

class SwidTypeArgumentTypeProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidTypeArgumentTypeProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOM<SwidTypeProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'type',
        subBuilder: SwidTypeProto.create)
    ..aOM<SwidElementProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'element',
        subBuilder: SwidElementProto.create)
    ..hasRequiredFields = false;

  SwidTypeArgumentTypeProto._() : super();
  factory SwidTypeArgumentTypeProto({
    SwidTypeProto? type,
    SwidElementProto? element,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (element != null) {
      _result.element = element;
    }
    return _result;
  }
  factory SwidTypeArgumentTypeProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidTypeArgumentTypeProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidTypeArgumentTypeProto clone() =>
      SwidTypeArgumentTypeProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidTypeArgumentTypeProto copyWith(
          void Function(SwidTypeArgumentTypeProto) updates) =>
      super.copyWith((message) => updates(message as SwidTypeArgumentTypeProto))
          as SwidTypeArgumentTypeProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidTypeArgumentTypeProto create() => SwidTypeArgumentTypeProto._();
  SwidTypeArgumentTypeProto createEmptyInstance() => create();
  static $pb.PbList<SwidTypeArgumentTypeProto> createRepeated() =>
      $pb.PbList<SwidTypeArgumentTypeProto>();
  @$core.pragma('dart2js:noInline')
  static SwidTypeArgumentTypeProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidTypeArgumentTypeProto>(create);
  static SwidTypeArgumentTypeProto? _defaultInstance;

  @$pb.TagNumber(1)
  SwidTypeProto get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(SwidTypeProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);
  @$pb.TagNumber(1)
  SwidTypeProto ensureType() => $_ensure(0);

  @$pb.TagNumber(2)
  SwidElementProto get element => $_getN(1);
  @$pb.TagNumber(2)
  set element(SwidElementProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasElement() => $_has(1);
  @$pb.TagNumber(2)
  void clearElement() => clearField(2);
  @$pb.TagNumber(2)
  SwidElementProto ensureElement() => $_ensure(1);
}

class SwidTypeFormalProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidTypeFormalProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOM<SwidTypeFormalValueProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        subBuilder: SwidTypeFormalValueProto.create)
    ..e<SwidReferenceDeclarationKindProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'swidReferenceDeclarationKind',
        $pb.PbFieldType.OE,
        protoName: 'swidReferenceDeclarationKind',
        defaultOrMaker: SwidReferenceDeclarationKindProto.classElement,
        valueOf: SwidReferenceDeclarationKindProto.valueOf,
        enumValues: SwidReferenceDeclarationKindProto.values)
    ..aOM<SwidTypeFormalBoundProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'swidTypeFormalBound',
        protoName: 'swidTypeFormalBound',
        subBuilder: SwidTypeFormalBoundProto.create)
    ..hasRequiredFields = false;

  SwidTypeFormalProto._() : super();
  factory SwidTypeFormalProto({
    SwidTypeFormalValueProto? value,
    SwidReferenceDeclarationKindProto? swidReferenceDeclarationKind,
    SwidTypeFormalBoundProto? swidTypeFormalBound,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    if (swidReferenceDeclarationKind != null) {
      _result.swidReferenceDeclarationKind = swidReferenceDeclarationKind;
    }
    if (swidTypeFormalBound != null) {
      _result.swidTypeFormalBound = swidTypeFormalBound;
    }
    return _result;
  }
  factory SwidTypeFormalProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidTypeFormalProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidTypeFormalProto clone() => SwidTypeFormalProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidTypeFormalProto copyWith(void Function(SwidTypeFormalProto) updates) =>
      super.copyWith((message) => updates(message as SwidTypeFormalProto))
          as SwidTypeFormalProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidTypeFormalProto create() => SwidTypeFormalProto._();
  SwidTypeFormalProto createEmptyInstance() => create();
  static $pb.PbList<SwidTypeFormalProto> createRepeated() =>
      $pb.PbList<SwidTypeFormalProto>();
  @$core.pragma('dart2js:noInline')
  static SwidTypeFormalProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidTypeFormalProto>(create);
  static SwidTypeFormalProto? _defaultInstance;

  @$pb.TagNumber(1)
  SwidTypeFormalValueProto get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(SwidTypeFormalValueProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  SwidTypeFormalValueProto ensureValue() => $_ensure(0);

  @$pb.TagNumber(2)
  SwidReferenceDeclarationKindProto get swidReferenceDeclarationKind =>
      $_getN(1);
  @$pb.TagNumber(2)
  set swidReferenceDeclarationKind(SwidReferenceDeclarationKindProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSwidReferenceDeclarationKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearSwidReferenceDeclarationKind() => clearField(2);

  @$pb.TagNumber(3)
  SwidTypeFormalBoundProto get swidTypeFormalBound => $_getN(2);
  @$pb.TagNumber(3)
  set swidTypeFormalBound(SwidTypeFormalBoundProto v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSwidTypeFormalBound() => $_has(2);
  @$pb.TagNumber(3)
  void clearSwidTypeFormalBound() => clearField(3);
  @$pb.TagNumber(3)
  SwidTypeFormalBoundProto ensureSwidTypeFormalBound() => $_ensure(2);
}

enum SwidTypeFormalBoundProto_Value {
  fromSwidInterface,
  fromSwidFunctionType,
  notSet
}

class SwidTypeFormalBoundProto extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SwidTypeFormalBoundProto_Value>
      _SwidTypeFormalBoundProto_ValueByTag = {
    1: SwidTypeFormalBoundProto_Value.fromSwidInterface,
    2: SwidTypeFormalBoundProto_Value.fromSwidFunctionType,
    0: SwidTypeFormalBoundProto_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidTypeFormalBoundProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SwidInterfaceProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidInterface',
        protoName: 'fromSwidInterface',
        subBuilder: SwidInterfaceProto.create)
    ..aOM<SwidFunctionTypeProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidFunctionType',
        protoName: 'fromSwidFunctionType',
        subBuilder: SwidFunctionTypeProto.create)
    ..hasRequiredFields = false;

  SwidTypeFormalBoundProto._() : super();
  factory SwidTypeFormalBoundProto({
    SwidInterfaceProto? fromSwidInterface,
    SwidFunctionTypeProto? fromSwidFunctionType,
  }) {
    final _result = create();
    if (fromSwidInterface != null) {
      _result.fromSwidInterface = fromSwidInterface;
    }
    if (fromSwidFunctionType != null) {
      _result.fromSwidFunctionType = fromSwidFunctionType;
    }
    return _result;
  }
  factory SwidTypeFormalBoundProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidTypeFormalBoundProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidTypeFormalBoundProto clone() =>
      SwidTypeFormalBoundProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidTypeFormalBoundProto copyWith(
          void Function(SwidTypeFormalBoundProto) updates) =>
      super.copyWith((message) => updates(message as SwidTypeFormalBoundProto))
          as SwidTypeFormalBoundProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidTypeFormalBoundProto create() => SwidTypeFormalBoundProto._();
  SwidTypeFormalBoundProto createEmptyInstance() => create();
  static $pb.PbList<SwidTypeFormalBoundProto> createRepeated() =>
      $pb.PbList<SwidTypeFormalBoundProto>();
  @$core.pragma('dart2js:noInline')
  static SwidTypeFormalBoundProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidTypeFormalBoundProto>(create);
  static SwidTypeFormalBoundProto? _defaultInstance;

  SwidTypeFormalBoundProto_Value whichValue() =>
      _SwidTypeFormalBoundProto_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SwidInterfaceProto get fromSwidInterface => $_getN(0);
  @$pb.TagNumber(1)
  set fromSwidInterface(SwidInterfaceProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFromSwidInterface() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromSwidInterface() => clearField(1);
  @$pb.TagNumber(1)
  SwidInterfaceProto ensureFromSwidInterface() => $_ensure(0);

  @$pb.TagNumber(2)
  SwidFunctionTypeProto get fromSwidFunctionType => $_getN(1);
  @$pb.TagNumber(2)
  set fromSwidFunctionType(SwidFunctionTypeProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFromSwidFunctionType() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromSwidFunctionType() => clearField(2);
  @$pb.TagNumber(2)
  SwidFunctionTypeProto ensureFromSwidFunctionType() => $_ensure(1);
}

enum SwidTypeFormalValueProto_Value {
  fromString,
  fromSwidClass,
  fromSwidInterface,
  fromSwidFunctionType,
  notSet
}

class SwidTypeFormalValueProto extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SwidTypeFormalValueProto_Value>
      _SwidTypeFormalValueProto_ValueByTag = {
    1: SwidTypeFormalValueProto_Value.fromString,
    2: SwidTypeFormalValueProto_Value.fromSwidClass,
    3: SwidTypeFormalValueProto_Value.fromSwidInterface,
    4: SwidTypeFormalValueProto_Value.fromSwidFunctionType,
    0: SwidTypeFormalValueProto_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidTypeFormalValueProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromString',
        protoName: 'fromString')
    ..aOM<SwidClassProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidClass',
        protoName: 'fromSwidClass',
        subBuilder: SwidClassProto.create)
    ..aOM<SwidInterfaceProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidInterface',
        protoName: 'fromSwidInterface',
        subBuilder: SwidInterfaceProto.create)
    ..aOM<SwidFunctionTypeProto>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidFunctionType',
        protoName: 'fromSwidFunctionType',
        subBuilder: SwidFunctionTypeProto.create)
    ..hasRequiredFields = false;

  SwidTypeFormalValueProto._() : super();
  factory SwidTypeFormalValueProto({
    $core.String? fromString,
    SwidClassProto? fromSwidClass,
    SwidInterfaceProto? fromSwidInterface,
    SwidFunctionTypeProto? fromSwidFunctionType,
  }) {
    final _result = create();
    if (fromString != null) {
      _result.fromString = fromString;
    }
    if (fromSwidClass != null) {
      _result.fromSwidClass = fromSwidClass;
    }
    if (fromSwidInterface != null) {
      _result.fromSwidInterface = fromSwidInterface;
    }
    if (fromSwidFunctionType != null) {
      _result.fromSwidFunctionType = fromSwidFunctionType;
    }
    return _result;
  }
  factory SwidTypeFormalValueProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidTypeFormalValueProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidTypeFormalValueProto clone() =>
      SwidTypeFormalValueProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidTypeFormalValueProto copyWith(
          void Function(SwidTypeFormalValueProto) updates) =>
      super.copyWith((message) => updates(message as SwidTypeFormalValueProto))
          as SwidTypeFormalValueProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidTypeFormalValueProto create() => SwidTypeFormalValueProto._();
  SwidTypeFormalValueProto createEmptyInstance() => create();
  static $pb.PbList<SwidTypeFormalValueProto> createRepeated() =>
      $pb.PbList<SwidTypeFormalValueProto>();
  @$core.pragma('dart2js:noInline')
  static SwidTypeFormalValueProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidTypeFormalValueProto>(create);
  static SwidTypeFormalValueProto? _defaultInstance;

  SwidTypeFormalValueProto_Value whichValue() =>
      _SwidTypeFormalValueProto_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get fromString => $_getSZ(0);
  @$pb.TagNumber(1)
  set fromString($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFromString() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromString() => clearField(1);

  @$pb.TagNumber(2)
  SwidClassProto get fromSwidClass => $_getN(1);
  @$pb.TagNumber(2)
  set fromSwidClass(SwidClassProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFromSwidClass() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromSwidClass() => clearField(2);
  @$pb.TagNumber(2)
  SwidClassProto ensureFromSwidClass() => $_ensure(1);

  @$pb.TagNumber(3)
  SwidInterfaceProto get fromSwidInterface => $_getN(2);
  @$pb.TagNumber(3)
  set fromSwidInterface(SwidInterfaceProto v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFromSwidInterface() => $_has(2);
  @$pb.TagNumber(3)
  void clearFromSwidInterface() => clearField(3);
  @$pb.TagNumber(3)
  SwidInterfaceProto ensureFromSwidInterface() => $_ensure(2);

  @$pb.TagNumber(4)
  SwidFunctionTypeProto get fromSwidFunctionType => $_getN(3);
  @$pb.TagNumber(4)
  set fromSwidFunctionType(SwidFunctionTypeProto v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFromSwidFunctionType() => $_has(3);
  @$pb.TagNumber(4)
  void clearFromSwidFunctionType() => clearField(4);
  @$pb.TagNumber(4)
  SwidFunctionTypeProto ensureFromSwidFunctionType() => $_ensure(3);
}
