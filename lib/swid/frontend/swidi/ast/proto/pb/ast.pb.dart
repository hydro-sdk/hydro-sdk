///
//  Generated code. Do not modify.
//  source: ast.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ast.pbenum.dart';

export 'ast.pbenum.dart';

class SwidiAnnotationProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiAnnotationProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOM<SwidiConstProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        subBuilder: SwidiConstProto.create)
    ..hasRequiredFields = false;

  SwidiAnnotationProto._() : super();
  factory SwidiAnnotationProto({
    SwidiConstProto? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory SwidiAnnotationProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiAnnotationProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiAnnotationProto clone() =>
      SwidiAnnotationProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiAnnotationProto copyWith(void Function(SwidiAnnotationProto) updates) =>
      super.copyWith((message) => updates(message as SwidiAnnotationProto))
          as SwidiAnnotationProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiAnnotationProto create() => SwidiAnnotationProto._();
  SwidiAnnotationProto createEmptyInstance() => create();
  static $pb.PbList<SwidiAnnotationProto> createRepeated() =>
      $pb.PbList<SwidiAnnotationProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiAnnotationProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiAnnotationProto>(create);
  static SwidiAnnotationProto? _defaultInstance;

  @$pb.TagNumber(1)
  SwidiConstProto get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(SwidiConstProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  SwidiConstProto ensureValue() => $_ensure(0);
}

class SwidiAnnotationListProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiAnnotationListProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..pc<SwidiAnnotationProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'annotationList',
        $pb.PbFieldType.PM,
        protoName: 'annotationList',
        subBuilder: SwidiAnnotationProto.create)
    ..hasRequiredFields = false;

  SwidiAnnotationListProto._() : super();
  factory SwidiAnnotationListProto({
    $core.Iterable<SwidiAnnotationProto>? annotationList,
  }) {
    final _result = create();
    if (annotationList != null) {
      _result.annotationList.addAll(annotationList);
    }
    return _result;
  }
  factory SwidiAnnotationListProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiAnnotationListProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiAnnotationListProto clone() =>
      SwidiAnnotationListProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiAnnotationListProto copyWith(
          void Function(SwidiAnnotationListProto) updates) =>
      super.copyWith((message) => updates(message as SwidiAnnotationListProto))
          as SwidiAnnotationListProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiAnnotationListProto create() => SwidiAnnotationListProto._();
  SwidiAnnotationListProto createEmptyInstance() => create();
  static $pb.PbList<SwidiAnnotationListProto> createRepeated() =>
      $pb.PbList<SwidiAnnotationListProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiAnnotationListProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiAnnotationListProto>(create);
  static SwidiAnnotationListProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SwidiAnnotationProto> get annotationList => $_getList(0);
}

class SwidiClassProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiClassProto',
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
    ..aOM<SwidiLibraryScopePrefixProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'libraryScopePrefix',
        protoName: 'libraryScopePrefix',
        subBuilder: SwidiLibraryScopePrefixProto.create)
    ..pc<SwidiFunctionDeclarationProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'methods',
        $pb.PbFieldType.PM,
        subBuilder: SwidiFunctionDeclarationProto.create)
    ..pc<SwidiFunctionDeclarationProto>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'staticMethods',
        $pb.PbFieldType.PM,
        protoName: 'staticMethods',
        subBuilder: SwidiFunctionDeclarationProto.create)
    ..aOM<SwidiConstProto>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'shortHandOverride',
        protoName: 'shortHandOverride',
        subBuilder: SwidiConstProto.create)
    ..hasRequiredFields = false;

  SwidiClassProto._() : super();
  factory SwidiClassProto({
    $core.String? name,
    SwidiLibraryScopePrefixProto? libraryScopePrefix,
    $core.Iterable<SwidiFunctionDeclarationProto>? methods,
    $core.Iterable<SwidiFunctionDeclarationProto>? staticMethods,
    SwidiConstProto? shortHandOverride,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (libraryScopePrefix != null) {
      _result.libraryScopePrefix = libraryScopePrefix;
    }
    if (methods != null) {
      _result.methods.addAll(methods);
    }
    if (staticMethods != null) {
      _result.staticMethods.addAll(staticMethods);
    }
    if (shortHandOverride != null) {
      _result.shortHandOverride = shortHandOverride;
    }
    return _result;
  }
  factory SwidiClassProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiClassProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiClassProto clone() => SwidiClassProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiClassProto copyWith(void Function(SwidiClassProto) updates) =>
      super.copyWith((message) => updates(message as SwidiClassProto))
          as SwidiClassProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiClassProto create() => SwidiClassProto._();
  SwidiClassProto createEmptyInstance() => create();
  static $pb.PbList<SwidiClassProto> createRepeated() =>
      $pb.PbList<SwidiClassProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiClassProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiClassProto>(create);
  static SwidiClassProto? _defaultInstance;

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
  SwidiLibraryScopePrefixProto get libraryScopePrefix => $_getN(1);
  @$pb.TagNumber(2)
  set libraryScopePrefix(SwidiLibraryScopePrefixProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLibraryScopePrefix() => $_has(1);
  @$pb.TagNumber(2)
  void clearLibraryScopePrefix() => clearField(2);
  @$pb.TagNumber(2)
  SwidiLibraryScopePrefixProto ensureLibraryScopePrefix() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<SwidiFunctionDeclarationProto> get methods => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<SwidiFunctionDeclarationProto> get staticMethods => $_getList(3);

  @$pb.TagNumber(5)
  SwidiConstProto get shortHandOverride => $_getN(4);
  @$pb.TagNumber(5)
  set shortHandOverride(SwidiConstProto v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasShortHandOverride() => $_has(4);
  @$pb.TagNumber(5)
  void clearShortHandOverride() => clearField(5);
  @$pb.TagNumber(5)
  SwidiConstProto ensureShortHandOverride() => $_ensure(4);
}

enum SwidiConstProto_Value {
  fromSwidiEmptyConst,
  fromSwidiConstNumber,
  fromSwidiConstString,
  fromSwidiConstFunctionInvocation,
  fromSwidiConstMap,
  fromSwidiConstBoolean,
  notSet
}

class SwidiConstProto extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SwidiConstProto_Value>
      _SwidiConstProto_ValueByTag = {
    1: SwidiConstProto_Value.fromSwidiEmptyConst,
    2: SwidiConstProto_Value.fromSwidiConstNumber,
    3: SwidiConstProto_Value.fromSwidiConstString,
    4: SwidiConstProto_Value.fromSwidiConstFunctionInvocation,
    5: SwidiConstProto_Value.fromSwidiConstMap,
    6: SwidiConstProto_Value.fromSwidiConstBoolean,
    0: SwidiConstProto_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiConstProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOM<SwidiEmptyConstProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidiEmptyConst',
        protoName: 'fromSwidiEmptyConst',
        subBuilder: SwidiEmptyConstProto.create)
    ..aOM<SwidiConstNumberProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidiConstNumber',
        protoName: 'fromSwidiConstNumber',
        subBuilder: SwidiConstNumberProto.create)
    ..aOM<SwidiConstStringProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidiConstString',
        protoName: 'fromSwidiConstString',
        subBuilder: SwidiConstStringProto.create)
    ..aOM<SwidiConstFunctionInvocationProto>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidiConstFunctionInvocation',
        protoName: 'fromSwidiConstFunctionInvocation',
        subBuilder: SwidiConstFunctionInvocationProto.create)
    ..aOM<SwidiConstMapProto>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidiConstMap',
        protoName: 'fromSwidiConstMap',
        subBuilder: SwidiConstMapProto.create)
    ..aOM<SwidiConstBooleanProto>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidiConstBoolean',
        protoName: 'fromSwidiConstBoolean',
        subBuilder: SwidiConstBooleanProto.create)
    ..hasRequiredFields = false;

  SwidiConstProto._() : super();
  factory SwidiConstProto({
    SwidiEmptyConstProto? fromSwidiEmptyConst,
    SwidiConstNumberProto? fromSwidiConstNumber,
    SwidiConstStringProto? fromSwidiConstString,
    SwidiConstFunctionInvocationProto? fromSwidiConstFunctionInvocation,
    SwidiConstMapProto? fromSwidiConstMap,
    SwidiConstBooleanProto? fromSwidiConstBoolean,
  }) {
    final _result = create();
    if (fromSwidiEmptyConst != null) {
      _result.fromSwidiEmptyConst = fromSwidiEmptyConst;
    }
    if (fromSwidiConstNumber != null) {
      _result.fromSwidiConstNumber = fromSwidiConstNumber;
    }
    if (fromSwidiConstString != null) {
      _result.fromSwidiConstString = fromSwidiConstString;
    }
    if (fromSwidiConstFunctionInvocation != null) {
      _result.fromSwidiConstFunctionInvocation =
          fromSwidiConstFunctionInvocation;
    }
    if (fromSwidiConstMap != null) {
      _result.fromSwidiConstMap = fromSwidiConstMap;
    }
    if (fromSwidiConstBoolean != null) {
      _result.fromSwidiConstBoolean = fromSwidiConstBoolean;
    }
    return _result;
  }
  factory SwidiConstProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiConstProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiConstProto clone() => SwidiConstProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiConstProto copyWith(void Function(SwidiConstProto) updates) =>
      super.copyWith((message) => updates(message as SwidiConstProto))
          as SwidiConstProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiConstProto create() => SwidiConstProto._();
  SwidiConstProto createEmptyInstance() => create();
  static $pb.PbList<SwidiConstProto> createRepeated() =>
      $pb.PbList<SwidiConstProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiConstProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiConstProto>(create);
  static SwidiConstProto? _defaultInstance;

  SwidiConstProto_Value whichValue() =>
      _SwidiConstProto_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SwidiEmptyConstProto get fromSwidiEmptyConst => $_getN(0);
  @$pb.TagNumber(1)
  set fromSwidiEmptyConst(SwidiEmptyConstProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFromSwidiEmptyConst() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromSwidiEmptyConst() => clearField(1);
  @$pb.TagNumber(1)
  SwidiEmptyConstProto ensureFromSwidiEmptyConst() => $_ensure(0);

  @$pb.TagNumber(2)
  SwidiConstNumberProto get fromSwidiConstNumber => $_getN(1);
  @$pb.TagNumber(2)
  set fromSwidiConstNumber(SwidiConstNumberProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFromSwidiConstNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromSwidiConstNumber() => clearField(2);
  @$pb.TagNumber(2)
  SwidiConstNumberProto ensureFromSwidiConstNumber() => $_ensure(1);

  @$pb.TagNumber(3)
  SwidiConstStringProto get fromSwidiConstString => $_getN(2);
  @$pb.TagNumber(3)
  set fromSwidiConstString(SwidiConstStringProto v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFromSwidiConstString() => $_has(2);
  @$pb.TagNumber(3)
  void clearFromSwidiConstString() => clearField(3);
  @$pb.TagNumber(3)
  SwidiConstStringProto ensureFromSwidiConstString() => $_ensure(2);

  @$pb.TagNumber(4)
  SwidiConstFunctionInvocationProto get fromSwidiConstFunctionInvocation =>
      $_getN(3);
  @$pb.TagNumber(4)
  set fromSwidiConstFunctionInvocation(SwidiConstFunctionInvocationProto v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFromSwidiConstFunctionInvocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearFromSwidiConstFunctionInvocation() => clearField(4);
  @$pb.TagNumber(4)
  SwidiConstFunctionInvocationProto ensureFromSwidiConstFunctionInvocation() =>
      $_ensure(3);

  @$pb.TagNumber(5)
  SwidiConstMapProto get fromSwidiConstMap => $_getN(4);
  @$pb.TagNumber(5)
  set fromSwidiConstMap(SwidiConstMapProto v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasFromSwidiConstMap() => $_has(4);
  @$pb.TagNumber(5)
  void clearFromSwidiConstMap() => clearField(5);
  @$pb.TagNumber(5)
  SwidiConstMapProto ensureFromSwidiConstMap() => $_ensure(4);

  @$pb.TagNumber(6)
  SwidiConstBooleanProto get fromSwidiConstBoolean => $_getN(5);
  @$pb.TagNumber(6)
  set fromSwidiConstBoolean(SwidiConstBooleanProto v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasFromSwidiConstBoolean() => $_has(5);
  @$pb.TagNumber(6)
  void clearFromSwidiConstBoolean() => clearField(6);
  @$pb.TagNumber(6)
  SwidiConstBooleanProto ensureFromSwidiConstBoolean() => $_ensure(5);
}

enum SwidiConstBooleanProto_Value {
  fromSwidiConstBooleanTrue,
  swidiConstBooleanFalse,
  notSet
}

class SwidiConstBooleanProto extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SwidiConstBooleanProto_Value>
      _SwidiConstBooleanProto_ValueByTag = {
    1: SwidiConstBooleanProto_Value.fromSwidiConstBooleanTrue,
    2: SwidiConstBooleanProto_Value.swidiConstBooleanFalse,
    0: SwidiConstBooleanProto_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiConstBooleanProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SwidiConstBooleanTrueProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidiConstBooleanTrue',
        protoName: 'fromSwidiConstBooleanTrue',
        subBuilder: SwidiConstBooleanTrueProto.create)
    ..aOM<SwidiConstBooleanFalseProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'SwidiConstBooleanFalse',
        protoName: 'SwidiConstBooleanFalse',
        subBuilder: SwidiConstBooleanFalseProto.create)
    ..hasRequiredFields = false;

  SwidiConstBooleanProto._() : super();
  factory SwidiConstBooleanProto({
    SwidiConstBooleanTrueProto? fromSwidiConstBooleanTrue,
    SwidiConstBooleanFalseProto? swidiConstBooleanFalse,
  }) {
    final _result = create();
    if (fromSwidiConstBooleanTrue != null) {
      _result.fromSwidiConstBooleanTrue = fromSwidiConstBooleanTrue;
    }
    if (swidiConstBooleanFalse != null) {
      _result.swidiConstBooleanFalse = swidiConstBooleanFalse;
    }
    return _result;
  }
  factory SwidiConstBooleanProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiConstBooleanProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiConstBooleanProto clone() =>
      SwidiConstBooleanProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiConstBooleanProto copyWith(
          void Function(SwidiConstBooleanProto) updates) =>
      super.copyWith((message) => updates(message as SwidiConstBooleanProto))
          as SwidiConstBooleanProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiConstBooleanProto create() => SwidiConstBooleanProto._();
  SwidiConstBooleanProto createEmptyInstance() => create();
  static $pb.PbList<SwidiConstBooleanProto> createRepeated() =>
      $pb.PbList<SwidiConstBooleanProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiConstBooleanProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiConstBooleanProto>(create);
  static SwidiConstBooleanProto? _defaultInstance;

  SwidiConstBooleanProto_Value whichValue() =>
      _SwidiConstBooleanProto_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SwidiConstBooleanTrueProto get fromSwidiConstBooleanTrue => $_getN(0);
  @$pb.TagNumber(1)
  set fromSwidiConstBooleanTrue(SwidiConstBooleanTrueProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFromSwidiConstBooleanTrue() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromSwidiConstBooleanTrue() => clearField(1);
  @$pb.TagNumber(1)
  SwidiConstBooleanTrueProto ensureFromSwidiConstBooleanTrue() => $_ensure(0);

  @$pb.TagNumber(2)
  SwidiConstBooleanFalseProto get swidiConstBooleanFalse => $_getN(1);
  @$pb.TagNumber(2)
  set swidiConstBooleanFalse(SwidiConstBooleanFalseProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSwidiConstBooleanFalse() => $_has(1);
  @$pb.TagNumber(2)
  void clearSwidiConstBooleanFalse() => clearField(2);
  @$pb.TagNumber(2)
  SwidiConstBooleanFalseProto ensureSwidiConstBooleanFalse() => $_ensure(1);
}

class SwidiConstBooleanFalseProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiConstBooleanFalseProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  SwidiConstBooleanFalseProto._() : super();
  factory SwidiConstBooleanFalseProto() => create();
  factory SwidiConstBooleanFalseProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiConstBooleanFalseProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiConstBooleanFalseProto clone() =>
      SwidiConstBooleanFalseProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiConstBooleanFalseProto copyWith(
          void Function(SwidiConstBooleanFalseProto) updates) =>
      super.copyWith(
              (message) => updates(message as SwidiConstBooleanFalseProto))
          as SwidiConstBooleanFalseProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiConstBooleanFalseProto create() =>
      SwidiConstBooleanFalseProto._();
  SwidiConstBooleanFalseProto createEmptyInstance() => create();
  static $pb.PbList<SwidiConstBooleanFalseProto> createRepeated() =>
      $pb.PbList<SwidiConstBooleanFalseProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiConstBooleanFalseProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiConstBooleanFalseProto>(create);
  static SwidiConstBooleanFalseProto? _defaultInstance;
}

class SwidiConstBooleanTrueProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiConstBooleanTrueProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  SwidiConstBooleanTrueProto._() : super();
  factory SwidiConstBooleanTrueProto() => create();
  factory SwidiConstBooleanTrueProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiConstBooleanTrueProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiConstBooleanTrueProto clone() =>
      SwidiConstBooleanTrueProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiConstBooleanTrueProto copyWith(
          void Function(SwidiConstBooleanTrueProto) updates) =>
      super.copyWith(
              (message) => updates(message as SwidiConstBooleanTrueProto))
          as SwidiConstBooleanTrueProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiConstBooleanTrueProto create() => SwidiConstBooleanTrueProto._();
  SwidiConstBooleanTrueProto createEmptyInstance() => create();
  static $pb.PbList<SwidiConstBooleanTrueProto> createRepeated() =>
      $pb.PbList<SwidiConstBooleanTrueProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiConstBooleanTrueProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiConstBooleanTrueProto>(create);
  static SwidiConstBooleanTrueProto? _defaultInstance;
}

class SwidiConstFunctionInvocationProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiConstFunctionInvocationProto',
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
    ..pc<SwidiConstProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'positionalParameters',
        $pb.PbFieldType.PM,
        protoName: 'positionalParameters',
        subBuilder: SwidiConstProto.create)
    ..m<$core.String, SwidiConstProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'namedParameters',
        protoName: 'namedParameters',
        entryClassName:
            'SwidiConstFunctionInvocationProto.NamedParametersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: SwidiConstProto.create,
        packageName: const $pb.PackageName('org.hydro_sdk.swid.ir'))
    ..hasRequiredFields = false;

  SwidiConstFunctionInvocationProto._() : super();
  factory SwidiConstFunctionInvocationProto({
    $core.String? value,
    $core.Iterable<SwidiConstProto>? positionalParameters,
    $core.Map<$core.String, SwidiConstProto>? namedParameters,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    if (positionalParameters != null) {
      _result.positionalParameters.addAll(positionalParameters);
    }
    if (namedParameters != null) {
      _result.namedParameters.addAll(namedParameters);
    }
    return _result;
  }
  factory SwidiConstFunctionInvocationProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiConstFunctionInvocationProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiConstFunctionInvocationProto clone() =>
      SwidiConstFunctionInvocationProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiConstFunctionInvocationProto copyWith(
          void Function(SwidiConstFunctionInvocationProto) updates) =>
      super.copyWith((message) =>
              updates(message as SwidiConstFunctionInvocationProto))
          as SwidiConstFunctionInvocationProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiConstFunctionInvocationProto create() =>
      SwidiConstFunctionInvocationProto._();
  SwidiConstFunctionInvocationProto createEmptyInstance() => create();
  static $pb.PbList<SwidiConstFunctionInvocationProto> createRepeated() =>
      $pb.PbList<SwidiConstFunctionInvocationProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiConstFunctionInvocationProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiConstFunctionInvocationProto>(
          create);
  static SwidiConstFunctionInvocationProto? _defaultInstance;

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
  $core.List<SwidiConstProto> get positionalParameters => $_getList(1);

  @$pb.TagNumber(3)
  $core.Map<$core.String, SwidiConstProto> get namedParameters => $_getMap(2);
}

class SwidiConstTupleProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiConstTupleProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOM<SwidiConstProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'item1',
        subBuilder: SwidiConstProto.create)
    ..aOM<SwidiConstProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'item2',
        subBuilder: SwidiConstProto.create)
    ..hasRequiredFields = false;

  SwidiConstTupleProto._() : super();
  factory SwidiConstTupleProto({
    SwidiConstProto? item1,
    SwidiConstProto? item2,
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
  factory SwidiConstTupleProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiConstTupleProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiConstTupleProto clone() =>
      SwidiConstTupleProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiConstTupleProto copyWith(void Function(SwidiConstTupleProto) updates) =>
      super.copyWith((message) => updates(message as SwidiConstTupleProto))
          as SwidiConstTupleProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiConstTupleProto create() => SwidiConstTupleProto._();
  SwidiConstTupleProto createEmptyInstance() => create();
  static $pb.PbList<SwidiConstTupleProto> createRepeated() =>
      $pb.PbList<SwidiConstTupleProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiConstTupleProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiConstTupleProto>(create);
  static SwidiConstTupleProto? _defaultInstance;

  @$pb.TagNumber(1)
  SwidiConstProto get item1 => $_getN(0);
  @$pb.TagNumber(1)
  set item1(SwidiConstProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItem1() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem1() => clearField(1);
  @$pb.TagNumber(1)
  SwidiConstProto ensureItem1() => $_ensure(0);

  @$pb.TagNumber(2)
  SwidiConstProto get item2 => $_getN(1);
  @$pb.TagNumber(2)
  set item2(SwidiConstProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasItem2() => $_has(1);
  @$pb.TagNumber(2)
  void clearItem2() => clearField(2);
  @$pb.TagNumber(2)
  SwidiConstProto ensureItem2() => $_ensure(1);
}

class SwidiConstMapProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiConstMapProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..pc<SwidiConstTupleProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'entries',
        $pb.PbFieldType.PM,
        subBuilder: SwidiConstTupleProto.create)
    ..hasRequiredFields = false;

  SwidiConstMapProto._() : super();
  factory SwidiConstMapProto({
    $core.Iterable<SwidiConstTupleProto>? entries,
  }) {
    final _result = create();
    if (entries != null) {
      _result.entries.addAll(entries);
    }
    return _result;
  }
  factory SwidiConstMapProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiConstMapProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiConstMapProto clone() => SwidiConstMapProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiConstMapProto copyWith(void Function(SwidiConstMapProto) updates) =>
      super.copyWith((message) => updates(message as SwidiConstMapProto))
          as SwidiConstMapProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiConstMapProto create() => SwidiConstMapProto._();
  SwidiConstMapProto createEmptyInstance() => create();
  static $pb.PbList<SwidiConstMapProto> createRepeated() =>
      $pb.PbList<SwidiConstMapProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiConstMapProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiConstMapProto>(create);
  static SwidiConstMapProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SwidiConstTupleProto> get entries => $_getList(0);
}

class SwidiConstNamedParameterProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiConstNamedParameterProto',
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
    ..aOM<SwidiConstProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        subBuilder: SwidiConstProto.create)
    ..hasRequiredFields = false;

  SwidiConstNamedParameterProto._() : super();
  factory SwidiConstNamedParameterProto({
    $core.String? name,
    SwidiConstProto? value,
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
  factory SwidiConstNamedParameterProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiConstNamedParameterProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiConstNamedParameterProto clone() =>
      SwidiConstNamedParameterProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiConstNamedParameterProto copyWith(
          void Function(SwidiConstNamedParameterProto) updates) =>
      super.copyWith(
              (message) => updates(message as SwidiConstNamedParameterProto))
          as SwidiConstNamedParameterProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiConstNamedParameterProto create() =>
      SwidiConstNamedParameterProto._();
  SwidiConstNamedParameterProto createEmptyInstance() => create();
  static $pb.PbList<SwidiConstNamedParameterProto> createRepeated() =>
      $pb.PbList<SwidiConstNamedParameterProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiConstNamedParameterProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiConstNamedParameterProto>(create);
  static SwidiConstNamedParameterProto? _defaultInstance;

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
  SwidiConstProto get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(SwidiConstProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
  @$pb.TagNumber(2)
  SwidiConstProto ensureValue() => $_ensure(1);
}

class SwidiConstNamedParameterListProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiConstNamedParameterListProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..pc<SwidiConstNamedParameterProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parameters',
        $pb.PbFieldType.PM,
        subBuilder: SwidiConstNamedParameterProto.create)
    ..hasRequiredFields = false;

  SwidiConstNamedParameterListProto._() : super();
  factory SwidiConstNamedParameterListProto({
    $core.Iterable<SwidiConstNamedParameterProto>? parameters,
  }) {
    final _result = create();
    if (parameters != null) {
      _result.parameters.addAll(parameters);
    }
    return _result;
  }
  factory SwidiConstNamedParameterListProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiConstNamedParameterListProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiConstNamedParameterListProto clone() =>
      SwidiConstNamedParameterListProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiConstNamedParameterListProto copyWith(
          void Function(SwidiConstNamedParameterListProto) updates) =>
      super.copyWith((message) =>
              updates(message as SwidiConstNamedParameterListProto))
          as SwidiConstNamedParameterListProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiConstNamedParameterListProto create() =>
      SwidiConstNamedParameterListProto._();
  SwidiConstNamedParameterListProto createEmptyInstance() => create();
  static $pb.PbList<SwidiConstNamedParameterListProto> createRepeated() =>
      $pb.PbList<SwidiConstNamedParameterListProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiConstNamedParameterListProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiConstNamedParameterListProto>(
          create);
  static SwidiConstNamedParameterListProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SwidiConstNamedParameterProto> get parameters => $_getList(0);
}

class SwidiConstNumberProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiConstNumberProto',
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

  SwidiConstNumberProto._() : super();
  factory SwidiConstNumberProto({
    $core.String? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory SwidiConstNumberProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiConstNumberProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiConstNumberProto clone() =>
      SwidiConstNumberProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiConstNumberProto copyWith(
          void Function(SwidiConstNumberProto) updates) =>
      super.copyWith((message) => updates(message as SwidiConstNumberProto))
          as SwidiConstNumberProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiConstNumberProto create() => SwidiConstNumberProto._();
  SwidiConstNumberProto createEmptyInstance() => create();
  static $pb.PbList<SwidiConstNumberProto> createRepeated() =>
      $pb.PbList<SwidiConstNumberProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiConstNumberProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiConstNumberProto>(create);
  static SwidiConstNumberProto? _defaultInstance;

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

class SwidiConstParameterListProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiConstParameterListProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..pc<SwidiConstProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'positionalParameters',
        $pb.PbFieldType.PM,
        protoName: 'positionalParameters',
        subBuilder: SwidiConstProto.create)
    ..pc<SwidiConstNamedParameterProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'namedParameters',
        $pb.PbFieldType.PM,
        protoName: 'namedParameters',
        subBuilder: SwidiConstNamedParameterProto.create)
    ..hasRequiredFields = false;

  SwidiConstParameterListProto._() : super();
  factory SwidiConstParameterListProto({
    $core.Iterable<SwidiConstProto>? positionalParameters,
    $core.Iterable<SwidiConstNamedParameterProto>? namedParameters,
  }) {
    final _result = create();
    if (positionalParameters != null) {
      _result.positionalParameters.addAll(positionalParameters);
    }
    if (namedParameters != null) {
      _result.namedParameters.addAll(namedParameters);
    }
    return _result;
  }
  factory SwidiConstParameterListProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiConstParameterListProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiConstParameterListProto clone() =>
      SwidiConstParameterListProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiConstParameterListProto copyWith(
          void Function(SwidiConstParameterListProto) updates) =>
      super.copyWith(
              (message) => updates(message as SwidiConstParameterListProto))
          as SwidiConstParameterListProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiConstParameterListProto create() =>
      SwidiConstParameterListProto._();
  SwidiConstParameterListProto createEmptyInstance() => create();
  static $pb.PbList<SwidiConstParameterListProto> createRepeated() =>
      $pb.PbList<SwidiConstParameterListProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiConstParameterListProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiConstParameterListProto>(create);
  static SwidiConstParameterListProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SwidiConstProto> get positionalParameters => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<SwidiConstNamedParameterProto> get namedParameters => $_getList(1);
}

class SwidiConstPositionalParameterListProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiConstPositionalParameterListProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..pc<SwidiConstProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parameters',
        $pb.PbFieldType.PM,
        subBuilder: SwidiConstProto.create)
    ..hasRequiredFields = false;

  SwidiConstPositionalParameterListProto._() : super();
  factory SwidiConstPositionalParameterListProto({
    $core.Iterable<SwidiConstProto>? parameters,
  }) {
    final _result = create();
    if (parameters != null) {
      _result.parameters.addAll(parameters);
    }
    return _result;
  }
  factory SwidiConstPositionalParameterListProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiConstPositionalParameterListProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiConstPositionalParameterListProto clone() =>
      SwidiConstPositionalParameterListProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiConstPositionalParameterListProto copyWith(
          void Function(SwidiConstPositionalParameterListProto) updates) =>
      super.copyWith((message) =>
              updates(message as SwidiConstPositionalParameterListProto))
          as SwidiConstPositionalParameterListProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiConstPositionalParameterListProto create() =>
      SwidiConstPositionalParameterListProto._();
  SwidiConstPositionalParameterListProto createEmptyInstance() => create();
  static $pb.PbList<SwidiConstPositionalParameterListProto> createRepeated() =>
      $pb.PbList<SwidiConstPositionalParameterListProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiConstPositionalParameterListProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidiConstPositionalParameterListProto>(create);
  static SwidiConstPositionalParameterListProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SwidiConstProto> get parameters => $_getList(0);
}

class SwidiConstStringProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiConstStringProto',
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

  SwidiConstStringProto._() : super();
  factory SwidiConstStringProto({
    $core.String? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory SwidiConstStringProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiConstStringProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiConstStringProto clone() =>
      SwidiConstStringProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiConstStringProto copyWith(
          void Function(SwidiConstStringProto) updates) =>
      super.copyWith((message) => updates(message as SwidiConstStringProto))
          as SwidiConstStringProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiConstStringProto create() => SwidiConstStringProto._();
  SwidiConstStringProto createEmptyInstance() => create();
  static $pb.PbList<SwidiConstStringProto> createRepeated() =>
      $pb.PbList<SwidiConstStringProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiConstStringProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiConstStringProto>(create);
  static SwidiConstStringProto? _defaultInstance;

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

class SwidiDeclarationProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiDeclarationProto',
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
    ..aOM<SwidiTypeProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'type',
        subBuilder: SwidiTypeProto.create)
    ..aOM<SwidiConstProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'defaultConstValue',
        protoName: 'defaultConstValue',
        subBuilder: SwidiConstProto.create)
    ..hasRequiredFields = false;

  SwidiDeclarationProto._() : super();
  factory SwidiDeclarationProto({
    $core.String? name,
    SwidiTypeProto? type,
    SwidiConstProto? defaultConstValue,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (type != null) {
      _result.type = type;
    }
    if (defaultConstValue != null) {
      _result.defaultConstValue = defaultConstValue;
    }
    return _result;
  }
  factory SwidiDeclarationProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiDeclarationProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiDeclarationProto clone() =>
      SwidiDeclarationProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiDeclarationProto copyWith(
          void Function(SwidiDeclarationProto) updates) =>
      super.copyWith((message) => updates(message as SwidiDeclarationProto))
          as SwidiDeclarationProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiDeclarationProto create() => SwidiDeclarationProto._();
  SwidiDeclarationProto createEmptyInstance() => create();
  static $pb.PbList<SwidiDeclarationProto> createRepeated() =>
      $pb.PbList<SwidiDeclarationProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiDeclarationProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiDeclarationProto>(create);
  static SwidiDeclarationProto? _defaultInstance;

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
  SwidiTypeProto get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(SwidiTypeProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
  @$pb.TagNumber(2)
  SwidiTypeProto ensureType() => $_ensure(1);

  @$pb.TagNumber(3)
  SwidiConstProto get defaultConstValue => $_getN(2);
  @$pb.TagNumber(3)
  set defaultConstValue(SwidiConstProto v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDefaultConstValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearDefaultConstValue() => clearField(3);
  @$pb.TagNumber(3)
  SwidiConstProto ensureDefaultConstValue() => $_ensure(2);
}

class SwidiEmptyConstProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiEmptyConstProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  SwidiEmptyConstProto._() : super();
  factory SwidiEmptyConstProto() => create();
  factory SwidiEmptyConstProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiEmptyConstProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiEmptyConstProto clone() =>
      SwidiEmptyConstProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiEmptyConstProto copyWith(void Function(SwidiEmptyConstProto) updates) =>
      super.copyWith((message) => updates(message as SwidiEmptyConstProto))
          as SwidiEmptyConstProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiEmptyConstProto create() => SwidiEmptyConstProto._();
  SwidiEmptyConstProto createEmptyInstance() => create();
  static $pb.PbList<SwidiEmptyConstProto> createRepeated() =>
      $pb.PbList<SwidiEmptyConstProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiEmptyConstProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiEmptyConstProto>(create);
  static SwidiEmptyConstProto? _defaultInstance;
}

class SwidiFunctionDeclarationProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiFunctionDeclarationProto',
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
    ..aOM<SwidiTypeProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'returnType',
        protoName: 'returnType',
        subBuilder: SwidiTypeProto.create)
    ..pc<SwidiFunctionDeclarationPositionalParameterProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'positionalParameters',
        $pb.PbFieldType.PM,
        protoName: 'positionalParameters',
        subBuilder: SwidiFunctionDeclarationPositionalParameterProto.create)
    ..pc<SwidiFunctionDeclarationOptionalParameterProto>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'optionalParameters',
        $pb.PbFieldType.PM,
        protoName: 'optionalParameters',
        subBuilder: SwidiFunctionDeclarationOptionalParameterProto.create)
    ..pc<SwidiFunctionDeclarationNamedParameterProto>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'namedParameters',
        $pb.PbFieldType.PM,
        protoName: 'namedParameters',
        subBuilder: SwidiFunctionDeclarationNamedParameterProto.create)
    ..pc<SwidiTypeFormalProto>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'typeFormals',
        $pb.PbFieldType.PM,
        protoName: 'typeFormals',
        subBuilder: SwidiTypeFormalProto.create)
    ..aOM<SwidiConstProto>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'shortHandOverride',
        protoName: 'shortHandOverride',
        subBuilder: SwidiConstProto.create)
    ..hasRequiredFields = false;

  SwidiFunctionDeclarationProto._() : super();
  factory SwidiFunctionDeclarationProto({
    $core.String? name,
    SwidiTypeProto? returnType,
    $core.Iterable<SwidiFunctionDeclarationPositionalParameterProto>?
        positionalParameters,
    $core.Iterable<SwidiFunctionDeclarationOptionalParameterProto>?
        optionalParameters,
    $core.Iterable<SwidiFunctionDeclarationNamedParameterProto>?
        namedParameters,
    $core.Iterable<SwidiTypeFormalProto>? typeFormals,
    SwidiConstProto? shortHandOverride,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (returnType != null) {
      _result.returnType = returnType;
    }
    if (positionalParameters != null) {
      _result.positionalParameters.addAll(positionalParameters);
    }
    if (optionalParameters != null) {
      _result.optionalParameters.addAll(optionalParameters);
    }
    if (namedParameters != null) {
      _result.namedParameters.addAll(namedParameters);
    }
    if (typeFormals != null) {
      _result.typeFormals.addAll(typeFormals);
    }
    if (shortHandOverride != null) {
      _result.shortHandOverride = shortHandOverride;
    }
    return _result;
  }
  factory SwidiFunctionDeclarationProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiFunctionDeclarationProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiFunctionDeclarationProto clone() =>
      SwidiFunctionDeclarationProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiFunctionDeclarationProto copyWith(
          void Function(SwidiFunctionDeclarationProto) updates) =>
      super.copyWith(
              (message) => updates(message as SwidiFunctionDeclarationProto))
          as SwidiFunctionDeclarationProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionDeclarationProto create() =>
      SwidiFunctionDeclarationProto._();
  SwidiFunctionDeclarationProto createEmptyInstance() => create();
  static $pb.PbList<SwidiFunctionDeclarationProto> createRepeated() =>
      $pb.PbList<SwidiFunctionDeclarationProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionDeclarationProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiFunctionDeclarationProto>(create);
  static SwidiFunctionDeclarationProto? _defaultInstance;

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
  SwidiTypeProto get returnType => $_getN(1);
  @$pb.TagNumber(2)
  set returnType(SwidiTypeProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasReturnType() => $_has(1);
  @$pb.TagNumber(2)
  void clearReturnType() => clearField(2);
  @$pb.TagNumber(2)
  SwidiTypeProto ensureReturnType() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<SwidiFunctionDeclarationPositionalParameterProto>
      get positionalParameters => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<SwidiFunctionDeclarationOptionalParameterProto>
      get optionalParameters => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<SwidiFunctionDeclarationNamedParameterProto> get namedParameters =>
      $_getList(4);

  @$pb.TagNumber(6)
  $core.List<SwidiTypeFormalProto> get typeFormals => $_getList(5);

  @$pb.TagNumber(7)
  SwidiConstProto get shortHandOverride => $_getN(6);
  @$pb.TagNumber(7)
  set shortHandOverride(SwidiConstProto v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasShortHandOverride() => $_has(6);
  @$pb.TagNumber(7)
  void clearShortHandOverride() => clearField(7);
  @$pb.TagNumber(7)
  SwidiConstProto ensureShortHandOverride() => $_ensure(6);
}

class SwidiFunctionDeclarationNamedParameterProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiFunctionDeclarationNamedParameterProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOM<SwidiDeclarationProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'declaration',
        subBuilder: SwidiDeclarationProto.create)
    ..hasRequiredFields = false;

  SwidiFunctionDeclarationNamedParameterProto._() : super();
  factory SwidiFunctionDeclarationNamedParameterProto({
    SwidiDeclarationProto? declaration,
  }) {
    final _result = create();
    if (declaration != null) {
      _result.declaration = declaration;
    }
    return _result;
  }
  factory SwidiFunctionDeclarationNamedParameterProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiFunctionDeclarationNamedParameterProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiFunctionDeclarationNamedParameterProto clone() =>
      SwidiFunctionDeclarationNamedParameterProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiFunctionDeclarationNamedParameterProto copyWith(
          void Function(SwidiFunctionDeclarationNamedParameterProto) updates) =>
      super.copyWith((message) =>
              updates(message as SwidiFunctionDeclarationNamedParameterProto))
          as SwidiFunctionDeclarationNamedParameterProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionDeclarationNamedParameterProto create() =>
      SwidiFunctionDeclarationNamedParameterProto._();
  SwidiFunctionDeclarationNamedParameterProto createEmptyInstance() => create();
  static $pb.PbList<SwidiFunctionDeclarationNamedParameterProto>
      createRepeated() =>
          $pb.PbList<SwidiFunctionDeclarationNamedParameterProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionDeclarationNamedParameterProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidiFunctionDeclarationNamedParameterProto>(create);
  static SwidiFunctionDeclarationNamedParameterProto? _defaultInstance;

  @$pb.TagNumber(1)
  SwidiDeclarationProto get declaration => $_getN(0);
  @$pb.TagNumber(1)
  set declaration(SwidiDeclarationProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDeclaration() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeclaration() => clearField(1);
  @$pb.TagNumber(1)
  SwidiDeclarationProto ensureDeclaration() => $_ensure(0);
}

class SwidiFunctionDeclarationOptionalParameterProto
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiFunctionDeclarationOptionalParameterProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOM<SwidiDeclarationProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'declaration',
        subBuilder: SwidiDeclarationProto.create)
    ..hasRequiredFields = false;

  SwidiFunctionDeclarationOptionalParameterProto._() : super();
  factory SwidiFunctionDeclarationOptionalParameterProto({
    SwidiDeclarationProto? declaration,
  }) {
    final _result = create();
    if (declaration != null) {
      _result.declaration = declaration;
    }
    return _result;
  }
  factory SwidiFunctionDeclarationOptionalParameterProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiFunctionDeclarationOptionalParameterProto.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiFunctionDeclarationOptionalParameterProto clone() =>
      SwidiFunctionDeclarationOptionalParameterProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiFunctionDeclarationOptionalParameterProto copyWith(
          void Function(SwidiFunctionDeclarationOptionalParameterProto)
              updates) =>
      super.copyWith((message) => updates(
              message as SwidiFunctionDeclarationOptionalParameterProto))
          as SwidiFunctionDeclarationOptionalParameterProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionDeclarationOptionalParameterProto create() =>
      SwidiFunctionDeclarationOptionalParameterProto._();
  SwidiFunctionDeclarationOptionalParameterProto createEmptyInstance() =>
      create();
  static $pb.PbList<SwidiFunctionDeclarationOptionalParameterProto>
      createRepeated() =>
          $pb.PbList<SwidiFunctionDeclarationOptionalParameterProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionDeclarationOptionalParameterProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidiFunctionDeclarationOptionalParameterProto>(create);
  static SwidiFunctionDeclarationOptionalParameterProto? _defaultInstance;

  @$pb.TagNumber(1)
  SwidiDeclarationProto get declaration => $_getN(0);
  @$pb.TagNumber(1)
  set declaration(SwidiDeclarationProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDeclaration() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeclaration() => clearField(1);
  @$pb.TagNumber(1)
  SwidiDeclarationProto ensureDeclaration() => $_ensure(0);
}

enum SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto_Value {
  fromSwidiFunctionDeclarationPositionalParameter,
  fromSwidiFunctionDeclarationOptionalParameter,
  fromSwidiFunctionDeclarationNamedParameter,
  notSet
}

class SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto
    extends $pb.GeneratedMessage {
  static const $core.Map<$core.int,
          SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto_Value>
      _SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto_ValueByTag =
      {
    1: SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto_Value
        .fromSwidiFunctionDeclarationPositionalParameter,
    2: SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto_Value
        .fromSwidiFunctionDeclarationOptionalParameter,
    3: SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto_Value
        .fromSwidiFunctionDeclarationNamedParameter,
    0: SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto_Value
        .notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<SwidiFunctionDeclarationPositionalParameterProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidiFunctionDeclarationPositionalParameter',
        protoName: 'fromSwidiFunctionDeclarationPositionalParameter',
        subBuilder: SwidiFunctionDeclarationPositionalParameterProto.create)
    ..aOM<SwidiFunctionDeclarationOptionalParameterProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidiFunctionDeclarationOptionalParameter',
        protoName: 'fromSwidiFunctionDeclarationOptionalParameter',
        subBuilder: SwidiFunctionDeclarationOptionalParameterProto.create)
    ..aOM<SwidiFunctionDeclarationNamedParameterProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidiFunctionDeclarationNamedParameter',
        protoName: 'fromSwidiFunctionDeclarationNamedParameter',
        subBuilder: SwidiFunctionDeclarationNamedParameterProto.create)
    ..hasRequiredFields = false;

  SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto._()
      : super();
  factory SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto({
    SwidiFunctionDeclarationPositionalParameterProto?
        fromSwidiFunctionDeclarationPositionalParameter,
    SwidiFunctionDeclarationOptionalParameterProto?
        fromSwidiFunctionDeclarationOptionalParameter,
    SwidiFunctionDeclarationNamedParameterProto?
        fromSwidiFunctionDeclarationNamedParameter,
  }) {
    final _result = create();
    if (fromSwidiFunctionDeclarationPositionalParameter != null) {
      _result.fromSwidiFunctionDeclarationPositionalParameter =
          fromSwidiFunctionDeclarationPositionalParameter;
    }
    if (fromSwidiFunctionDeclarationOptionalParameter != null) {
      _result.fromSwidiFunctionDeclarationOptionalParameter =
          fromSwidiFunctionDeclarationOptionalParameter;
    }
    if (fromSwidiFunctionDeclarationNamedParameter != null) {
      _result.fromSwidiFunctionDeclarationNamedParameter =
          fromSwidiFunctionDeclarationNamedParameter;
    }
    return _result;
  }
  factory SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto clone() =>
      SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto copyWith(
          void Function(
                  SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto)
              updates) =>
      super.copyWith((message) => updates(message
              as SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto))
          as SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto
      create() =>
          SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto._();
  SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto
      createEmptyInstance() => create();
  static $pb.PbList<
          SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto>
      createRepeated() => $pb.PbList<
          SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
              SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto>(
          create);
  static SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto?
      _defaultInstance;

  SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto_Value
      whichValue() =>
          _SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameterProto_ValueByTag[
              $_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SwidiFunctionDeclarationPositionalParameterProto
      get fromSwidiFunctionDeclarationPositionalParameter => $_getN(0);
  @$pb.TagNumber(1)
  set fromSwidiFunctionDeclarationPositionalParameter(
      SwidiFunctionDeclarationPositionalParameterProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFromSwidiFunctionDeclarationPositionalParameter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromSwidiFunctionDeclarationPositionalParameter() => clearField(1);
  @$pb.TagNumber(1)
  SwidiFunctionDeclarationPositionalParameterProto
      ensureFromSwidiFunctionDeclarationPositionalParameter() => $_ensure(0);

  @$pb.TagNumber(2)
  SwidiFunctionDeclarationOptionalParameterProto
      get fromSwidiFunctionDeclarationOptionalParameter => $_getN(1);
  @$pb.TagNumber(2)
  set fromSwidiFunctionDeclarationOptionalParameter(
      SwidiFunctionDeclarationOptionalParameterProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFromSwidiFunctionDeclarationOptionalParameter() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromSwidiFunctionDeclarationOptionalParameter() => clearField(2);
  @$pb.TagNumber(2)
  SwidiFunctionDeclarationOptionalParameterProto
      ensureFromSwidiFunctionDeclarationOptionalParameter() => $_ensure(1);

  @$pb.TagNumber(3)
  SwidiFunctionDeclarationNamedParameterProto
      get fromSwidiFunctionDeclarationNamedParameter => $_getN(2);
  @$pb.TagNumber(3)
  set fromSwidiFunctionDeclarationNamedParameter(
      SwidiFunctionDeclarationNamedParameterProto v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFromSwidiFunctionDeclarationNamedParameter() => $_has(2);
  @$pb.TagNumber(3)
  void clearFromSwidiFunctionDeclarationNamedParameter() => clearField(3);
  @$pb.TagNumber(3)
  SwidiFunctionDeclarationNamedParameterProto
      ensureFromSwidiFunctionDeclarationNamedParameter() => $_ensure(2);
}

class SwidiFunctionDeclarationPositionalParameterProto
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiFunctionDeclarationPositionalParameterProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOM<SwidiDeclarationProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'declaration',
        subBuilder: SwidiDeclarationProto.create)
    ..hasRequiredFields = false;

  SwidiFunctionDeclarationPositionalParameterProto._() : super();
  factory SwidiFunctionDeclarationPositionalParameterProto({
    SwidiDeclarationProto? declaration,
  }) {
    final _result = create();
    if (declaration != null) {
      _result.declaration = declaration;
    }
    return _result;
  }
  factory SwidiFunctionDeclarationPositionalParameterProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiFunctionDeclarationPositionalParameterProto.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiFunctionDeclarationPositionalParameterProto clone() =>
      SwidiFunctionDeclarationPositionalParameterProto()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiFunctionDeclarationPositionalParameterProto copyWith(
          void Function(SwidiFunctionDeclarationPositionalParameterProto)
              updates) =>
      super.copyWith((message) => updates(
              message as SwidiFunctionDeclarationPositionalParameterProto))
          as SwidiFunctionDeclarationPositionalParameterProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionDeclarationPositionalParameterProto create() =>
      SwidiFunctionDeclarationPositionalParameterProto._();
  SwidiFunctionDeclarationPositionalParameterProto createEmptyInstance() =>
      create();
  static $pb.PbList<SwidiFunctionDeclarationPositionalParameterProto>
      createRepeated() =>
          $pb.PbList<SwidiFunctionDeclarationPositionalParameterProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionDeclarationPositionalParameterProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidiFunctionDeclarationPositionalParameterProto>(create);
  static SwidiFunctionDeclarationPositionalParameterProto? _defaultInstance;

  @$pb.TagNumber(1)
  SwidiDeclarationProto get declaration => $_getN(0);
  @$pb.TagNumber(1)
  set declaration(SwidiDeclarationProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDeclaration() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeclaration() => clearField(1);
  @$pb.TagNumber(1)
  SwidiDeclarationProto ensureDeclaration() => $_ensure(0);
}

class SwidiFunctionTypeProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiFunctionTypeProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOM<SwidiTypeProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'returnType',
        protoName: 'returnType',
        subBuilder: SwidiTypeProto.create)
    ..pc<SwidiFunctionTypePositionalParameterProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'positionalParameters',
        $pb.PbFieldType.PM,
        protoName: 'positionalParameters',
        subBuilder: SwidiFunctionTypePositionalParameterProto.create)
    ..pc<SwidiFunctionTypeOptionalParameterProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'optionalParameters',
        $pb.PbFieldType.PM,
        protoName: 'optionalParameters',
        subBuilder: SwidiFunctionTypeOptionalParameterProto.create)
    ..pc<SwidiFunctionTypeNamedParameterProto>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'namedParameters',
        $pb.PbFieldType.PM,
        protoName: 'namedParameters',
        subBuilder: SwidiFunctionTypeNamedParameterProto.create)
    ..e<SwidiNullabilitySuffixProto>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nullabilitySuffix',
        $pb.PbFieldType.OE,
        protoName: 'nullabilitySuffix',
        defaultOrMaker: SwidiNullabilitySuffixProto.question,
        valueOf: SwidiNullabilitySuffixProto.valueOf,
        enumValues: SwidiNullabilitySuffixProto.values)
    ..aOM<SwidiTypeFormalProto>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'typeFormals',
        protoName: 'typeFormals',
        subBuilder: SwidiTypeFormalProto.create)
    ..aOM<SwidiAnnotationProto>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'annotations',
        subBuilder: SwidiAnnotationProto.create)
    ..hasRequiredFields = false;

  SwidiFunctionTypeProto._() : super();
  factory SwidiFunctionTypeProto({
    SwidiTypeProto? returnType,
    $core.Iterable<SwidiFunctionTypePositionalParameterProto>?
        positionalParameters,
    $core.Iterable<SwidiFunctionTypeOptionalParameterProto>? optionalParameters,
    $core.Iterable<SwidiFunctionTypeNamedParameterProto>? namedParameters,
    SwidiNullabilitySuffixProto? nullabilitySuffix,
    SwidiTypeFormalProto? typeFormals,
    SwidiAnnotationProto? annotations,
  }) {
    final _result = create();
    if (returnType != null) {
      _result.returnType = returnType;
    }
    if (positionalParameters != null) {
      _result.positionalParameters.addAll(positionalParameters);
    }
    if (optionalParameters != null) {
      _result.optionalParameters.addAll(optionalParameters);
    }
    if (namedParameters != null) {
      _result.namedParameters.addAll(namedParameters);
    }
    if (nullabilitySuffix != null) {
      _result.nullabilitySuffix = nullabilitySuffix;
    }
    if (typeFormals != null) {
      _result.typeFormals = typeFormals;
    }
    if (annotations != null) {
      _result.annotations = annotations;
    }
    return _result;
  }
  factory SwidiFunctionTypeProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiFunctionTypeProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiFunctionTypeProto clone() =>
      SwidiFunctionTypeProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiFunctionTypeProto copyWith(
          void Function(SwidiFunctionTypeProto) updates) =>
      super.copyWith((message) => updates(message as SwidiFunctionTypeProto))
          as SwidiFunctionTypeProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionTypeProto create() => SwidiFunctionTypeProto._();
  SwidiFunctionTypeProto createEmptyInstance() => create();
  static $pb.PbList<SwidiFunctionTypeProto> createRepeated() =>
      $pb.PbList<SwidiFunctionTypeProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionTypeProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiFunctionTypeProto>(create);
  static SwidiFunctionTypeProto? _defaultInstance;

  @$pb.TagNumber(1)
  SwidiTypeProto get returnType => $_getN(0);
  @$pb.TagNumber(1)
  set returnType(SwidiTypeProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasReturnType() => $_has(0);
  @$pb.TagNumber(1)
  void clearReturnType() => clearField(1);
  @$pb.TagNumber(1)
  SwidiTypeProto ensureReturnType() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<SwidiFunctionTypePositionalParameterProto>
      get positionalParameters => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<SwidiFunctionTypeOptionalParameterProto> get optionalParameters =>
      $_getList(2);

  @$pb.TagNumber(4)
  $core.List<SwidiFunctionTypeNamedParameterProto> get namedParameters =>
      $_getList(3);

  @$pb.TagNumber(5)
  SwidiNullabilitySuffixProto get nullabilitySuffix => $_getN(4);
  @$pb.TagNumber(5)
  set nullabilitySuffix(SwidiNullabilitySuffixProto v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasNullabilitySuffix() => $_has(4);
  @$pb.TagNumber(5)
  void clearNullabilitySuffix() => clearField(5);

  @$pb.TagNumber(6)
  SwidiTypeFormalProto get typeFormals => $_getN(5);
  @$pb.TagNumber(6)
  set typeFormals(SwidiTypeFormalProto v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTypeFormals() => $_has(5);
  @$pb.TagNumber(6)
  void clearTypeFormals() => clearField(6);
  @$pb.TagNumber(6)
  SwidiTypeFormalProto ensureTypeFormals() => $_ensure(5);

  @$pb.TagNumber(7)
  SwidiAnnotationProto get annotations => $_getN(6);
  @$pb.TagNumber(7)
  set annotations(SwidiAnnotationProto v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasAnnotations() => $_has(6);
  @$pb.TagNumber(7)
  void clearAnnotations() => clearField(7);
  @$pb.TagNumber(7)
  SwidiAnnotationProto ensureAnnotations() => $_ensure(6);
}

class SwidiFunctionTypeNamedParameterProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiFunctionTypeNamedParameterProto',
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
    ..aOM<SwidiTypeProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'type',
        subBuilder: SwidiTypeProto.create)
    ..hasRequiredFields = false;

  SwidiFunctionTypeNamedParameterProto._() : super();
  factory SwidiFunctionTypeNamedParameterProto({
    $core.String? name,
    SwidiTypeProto? type,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory SwidiFunctionTypeNamedParameterProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiFunctionTypeNamedParameterProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiFunctionTypeNamedParameterProto clone() =>
      SwidiFunctionTypeNamedParameterProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiFunctionTypeNamedParameterProto copyWith(
          void Function(SwidiFunctionTypeNamedParameterProto) updates) =>
      super.copyWith((message) =>
              updates(message as SwidiFunctionTypeNamedParameterProto))
          as SwidiFunctionTypeNamedParameterProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionTypeNamedParameterProto create() =>
      SwidiFunctionTypeNamedParameterProto._();
  SwidiFunctionTypeNamedParameterProto createEmptyInstance() => create();
  static $pb.PbList<SwidiFunctionTypeNamedParameterProto> createRepeated() =>
      $pb.PbList<SwidiFunctionTypeNamedParameterProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionTypeNamedParameterProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidiFunctionTypeNamedParameterProto>(create);
  static SwidiFunctionTypeNamedParameterProto? _defaultInstance;

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
  SwidiTypeProto get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(SwidiTypeProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
  @$pb.TagNumber(2)
  SwidiTypeProto ensureType() => $_ensure(1);
}

class SwidiFunctionTypeOptionalParameterProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiFunctionTypeOptionalParameterProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOM<SwidiTypeProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'type',
        subBuilder: SwidiTypeProto.create)
    ..hasRequiredFields = false;

  SwidiFunctionTypeOptionalParameterProto._() : super();
  factory SwidiFunctionTypeOptionalParameterProto({
    SwidiTypeProto? type,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory SwidiFunctionTypeOptionalParameterProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiFunctionTypeOptionalParameterProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiFunctionTypeOptionalParameterProto clone() =>
      SwidiFunctionTypeOptionalParameterProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiFunctionTypeOptionalParameterProto copyWith(
          void Function(SwidiFunctionTypeOptionalParameterProto) updates) =>
      super.copyWith((message) =>
              updates(message as SwidiFunctionTypeOptionalParameterProto))
          as SwidiFunctionTypeOptionalParameterProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionTypeOptionalParameterProto create() =>
      SwidiFunctionTypeOptionalParameterProto._();
  SwidiFunctionTypeOptionalParameterProto createEmptyInstance() => create();
  static $pb.PbList<SwidiFunctionTypeOptionalParameterProto> createRepeated() =>
      $pb.PbList<SwidiFunctionTypeOptionalParameterProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionTypeOptionalParameterProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidiFunctionTypeOptionalParameterProto>(create);
  static SwidiFunctionTypeOptionalParameterProto? _defaultInstance;

  @$pb.TagNumber(1)
  SwidiTypeProto get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(SwidiTypeProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);
  @$pb.TagNumber(1)
  SwidiTypeProto ensureType() => $_ensure(0);
}

enum SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto_Value {
  fromSwidiFunctionTypePositionalParameter,
  fromSwidiFunctionTypeOptionalParameter,
  fromSwidiFunctionTypeNamedParameter,
  notSet
}

class SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto
    extends $pb.GeneratedMessage {
  static const $core.Map<$core.int,
          SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto_Value>
      _SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto_ValueByTag = {
    1: SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto_Value
        .fromSwidiFunctionTypePositionalParameter,
    2: SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto_Value
        .fromSwidiFunctionTypeOptionalParameter,
    3: SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto_Value
        .fromSwidiFunctionTypeNamedParameter,
    0: SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<SwidiFunctionTypePositionalParameterProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidiFunctionTypePositionalParameter',
        protoName: 'fromSwidiFunctionTypePositionalParameter',
        subBuilder: SwidiFunctionTypePositionalParameterProto.create)
    ..aOM<SwidiFunctionTypeOptionalParameterProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidiFunctionTypeOptionalParameter',
        protoName: 'fromSwidiFunctionTypeOptionalParameter',
        subBuilder: SwidiFunctionTypeOptionalParameterProto.create)
    ..aOM<SwidiFunctionTypeNamedParameterProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidiFunctionTypeNamedParameter',
        protoName: 'fromSwidiFunctionTypeNamedParameter',
        subBuilder: SwidiFunctionTypeNamedParameterProto.create)
    ..hasRequiredFields = false;

  SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto._() : super();
  factory SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto({
    SwidiFunctionTypePositionalParameterProto?
        fromSwidiFunctionTypePositionalParameter,
    SwidiFunctionTypeOptionalParameterProto?
        fromSwidiFunctionTypeOptionalParameter,
    SwidiFunctionTypeNamedParameterProto? fromSwidiFunctionTypeNamedParameter,
  }) {
    final _result = create();
    if (fromSwidiFunctionTypePositionalParameter != null) {
      _result.fromSwidiFunctionTypePositionalParameter =
          fromSwidiFunctionTypePositionalParameter;
    }
    if (fromSwidiFunctionTypeOptionalParameter != null) {
      _result.fromSwidiFunctionTypeOptionalParameter =
          fromSwidiFunctionTypeOptionalParameter;
    }
    if (fromSwidiFunctionTypeNamedParameter != null) {
      _result.fromSwidiFunctionTypeNamedParameter =
          fromSwidiFunctionTypeNamedParameter;
    }
    return _result;
  }
  factory SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto clone() =>
      SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto copyWith(
          void Function(
                  SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto)
              updates) =>
      super.copyWith((message) => updates(message
              as SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto))
          as SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto create() =>
      SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto._();
  SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto
      createEmptyInstance() => create();
  static $pb.PbList<SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto>
      createRepeated() => $pb.PbList<
          SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto>(create);
  static SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto?
      _defaultInstance;

  SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto_Value
      whichValue() =>
          _SwidiFunctionTypePositionalOrOptionalOrNamedParameterProto_ValueByTag[
              $_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SwidiFunctionTypePositionalParameterProto
      get fromSwidiFunctionTypePositionalParameter => $_getN(0);
  @$pb.TagNumber(1)
  set fromSwidiFunctionTypePositionalParameter(
      SwidiFunctionTypePositionalParameterProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFromSwidiFunctionTypePositionalParameter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromSwidiFunctionTypePositionalParameter() => clearField(1);
  @$pb.TagNumber(1)
  SwidiFunctionTypePositionalParameterProto
      ensureFromSwidiFunctionTypePositionalParameter() => $_ensure(0);

  @$pb.TagNumber(2)
  SwidiFunctionTypeOptionalParameterProto
      get fromSwidiFunctionTypeOptionalParameter => $_getN(1);
  @$pb.TagNumber(2)
  set fromSwidiFunctionTypeOptionalParameter(
      SwidiFunctionTypeOptionalParameterProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFromSwidiFunctionTypeOptionalParameter() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromSwidiFunctionTypeOptionalParameter() => clearField(2);
  @$pb.TagNumber(2)
  SwidiFunctionTypeOptionalParameterProto
      ensureFromSwidiFunctionTypeOptionalParameter() => $_ensure(1);

  @$pb.TagNumber(3)
  SwidiFunctionTypeNamedParameterProto
      get fromSwidiFunctionTypeNamedParameter => $_getN(2);
  @$pb.TagNumber(3)
  set fromSwidiFunctionTypeNamedParameter(
      SwidiFunctionTypeNamedParameterProto v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFromSwidiFunctionTypeNamedParameter() => $_has(2);
  @$pb.TagNumber(3)
  void clearFromSwidiFunctionTypeNamedParameter() => clearField(3);
  @$pb.TagNumber(3)
  SwidiFunctionTypeNamedParameterProto
      ensureFromSwidiFunctionTypeNamedParameter() => $_ensure(2);
}

class SwidiFunctionTypePositionalParameterProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiFunctionTypePositionalParameterProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOM<SwidiTypeProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'type',
        subBuilder: SwidiTypeProto.create)
    ..hasRequiredFields = false;

  SwidiFunctionTypePositionalParameterProto._() : super();
  factory SwidiFunctionTypePositionalParameterProto({
    SwidiTypeProto? type,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory SwidiFunctionTypePositionalParameterProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiFunctionTypePositionalParameterProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiFunctionTypePositionalParameterProto clone() =>
      SwidiFunctionTypePositionalParameterProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiFunctionTypePositionalParameterProto copyWith(
          void Function(SwidiFunctionTypePositionalParameterProto) updates) =>
      super.copyWith((message) =>
              updates(message as SwidiFunctionTypePositionalParameterProto))
          as SwidiFunctionTypePositionalParameterProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionTypePositionalParameterProto create() =>
      SwidiFunctionTypePositionalParameterProto._();
  SwidiFunctionTypePositionalParameterProto createEmptyInstance() => create();
  static $pb.PbList<SwidiFunctionTypePositionalParameterProto>
      createRepeated() =>
          $pb.PbList<SwidiFunctionTypePositionalParameterProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiFunctionTypePositionalParameterProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidiFunctionTypePositionalParameterProto>(create);
  static SwidiFunctionTypePositionalParameterProto? _defaultInstance;

  @$pb.TagNumber(1)
  SwidiTypeProto get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(SwidiTypeProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);
  @$pb.TagNumber(1)
  SwidiTypeProto ensureType() => $_ensure(0);
}

class SwidiInterfaceProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiInterfaceProto',
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
    ..aOM<SwidiLibraryScopePrefixProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'libraryScopePrefix',
        protoName: 'libraryScopePrefix',
        subBuilder: SwidiLibraryScopePrefixProto.create)
    ..aOM<SwidiReferenceDeclarationPrefixProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'referenceDeclarationPrefix',
        protoName: 'referenceDeclarationPrefix',
        subBuilder: SwidiReferenceDeclarationPrefixProto.create)
    ..e<SwidiNullabilitySuffixProto>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nullabilitySuffix',
        $pb.PbFieldType.OE,
        protoName: 'nullabilitySuffix',
        defaultOrMaker: SwidiNullabilitySuffixProto.question,
        valueOf: SwidiNullabilitySuffixProto.valueOf,
        enumValues: SwidiNullabilitySuffixProto.values)
    ..pc<SwidiInterfaceProto>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'typeArguments',
        $pb.PbFieldType.PM,
        protoName: 'typeArguments',
        subBuilder: SwidiInterfaceProto.create)
    ..pc<SwidiAnnotationProto>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'annotations',
        $pb.PbFieldType.PM,
        subBuilder: SwidiAnnotationProto.create)
    ..hasRequiredFields = false;

  SwidiInterfaceProto._() : super();
  factory SwidiInterfaceProto({
    $core.String? name,
    SwidiLibraryScopePrefixProto? libraryScopePrefix,
    SwidiReferenceDeclarationPrefixProto? referenceDeclarationPrefix,
    SwidiNullabilitySuffixProto? nullabilitySuffix,
    $core.Iterable<SwidiInterfaceProto>? typeArguments,
    $core.Iterable<SwidiAnnotationProto>? annotations,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (libraryScopePrefix != null) {
      _result.libraryScopePrefix = libraryScopePrefix;
    }
    if (referenceDeclarationPrefix != null) {
      _result.referenceDeclarationPrefix = referenceDeclarationPrefix;
    }
    if (nullabilitySuffix != null) {
      _result.nullabilitySuffix = nullabilitySuffix;
    }
    if (typeArguments != null) {
      _result.typeArguments.addAll(typeArguments);
    }
    if (annotations != null) {
      _result.annotations.addAll(annotations);
    }
    return _result;
  }
  factory SwidiInterfaceProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiInterfaceProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiInterfaceProto clone() => SwidiInterfaceProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiInterfaceProto copyWith(void Function(SwidiInterfaceProto) updates) =>
      super.copyWith((message) => updates(message as SwidiInterfaceProto))
          as SwidiInterfaceProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiInterfaceProto create() => SwidiInterfaceProto._();
  SwidiInterfaceProto createEmptyInstance() => create();
  static $pb.PbList<SwidiInterfaceProto> createRepeated() =>
      $pb.PbList<SwidiInterfaceProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiInterfaceProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiInterfaceProto>(create);
  static SwidiInterfaceProto? _defaultInstance;

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
  SwidiLibraryScopePrefixProto get libraryScopePrefix => $_getN(1);
  @$pb.TagNumber(2)
  set libraryScopePrefix(SwidiLibraryScopePrefixProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLibraryScopePrefix() => $_has(1);
  @$pb.TagNumber(2)
  void clearLibraryScopePrefix() => clearField(2);
  @$pb.TagNumber(2)
  SwidiLibraryScopePrefixProto ensureLibraryScopePrefix() => $_ensure(1);

  @$pb.TagNumber(3)
  SwidiReferenceDeclarationPrefixProto get referenceDeclarationPrefix =>
      $_getN(2);
  @$pb.TagNumber(3)
  set referenceDeclarationPrefix(SwidiReferenceDeclarationPrefixProto v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasReferenceDeclarationPrefix() => $_has(2);
  @$pb.TagNumber(3)
  void clearReferenceDeclarationPrefix() => clearField(3);
  @$pb.TagNumber(3)
  SwidiReferenceDeclarationPrefixProto ensureReferenceDeclarationPrefix() =>
      $_ensure(2);

  @$pb.TagNumber(4)
  SwidiNullabilitySuffixProto get nullabilitySuffix => $_getN(3);
  @$pb.TagNumber(4)
  set nullabilitySuffix(SwidiNullabilitySuffixProto v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasNullabilitySuffix() => $_has(3);
  @$pb.TagNumber(4)
  void clearNullabilitySuffix() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<SwidiInterfaceProto> get typeArguments => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<SwidiAnnotationProto> get annotations => $_getList(5);
}

class SwidiLibraryScopePrefixProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiLibraryScopePrefixProto',
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

  SwidiLibraryScopePrefixProto._() : super();
  factory SwidiLibraryScopePrefixProto({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory SwidiLibraryScopePrefixProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiLibraryScopePrefixProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiLibraryScopePrefixProto clone() =>
      SwidiLibraryScopePrefixProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiLibraryScopePrefixProto copyWith(
          void Function(SwidiLibraryScopePrefixProto) updates) =>
      super.copyWith(
              (message) => updates(message as SwidiLibraryScopePrefixProto))
          as SwidiLibraryScopePrefixProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiLibraryScopePrefixProto create() =>
      SwidiLibraryScopePrefixProto._();
  SwidiLibraryScopePrefixProto createEmptyInstance() => create();
  static $pb.PbList<SwidiLibraryScopePrefixProto> createRepeated() =>
      $pb.PbList<SwidiLibraryScopePrefixProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiLibraryScopePrefixProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiLibraryScopePrefixProto>(create);
  static SwidiLibraryScopePrefixProto? _defaultInstance;

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

class SwidiReferenceDeclarationPrefixProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiReferenceDeclarationPrefixProto',
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

  SwidiReferenceDeclarationPrefixProto._() : super();
  factory SwidiReferenceDeclarationPrefixProto({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory SwidiReferenceDeclarationPrefixProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiReferenceDeclarationPrefixProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiReferenceDeclarationPrefixProto clone() =>
      SwidiReferenceDeclarationPrefixProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiReferenceDeclarationPrefixProto copyWith(
          void Function(SwidiReferenceDeclarationPrefixProto) updates) =>
      super.copyWith((message) =>
              updates(message as SwidiReferenceDeclarationPrefixProto))
          as SwidiReferenceDeclarationPrefixProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiReferenceDeclarationPrefixProto create() =>
      SwidiReferenceDeclarationPrefixProto._();
  SwidiReferenceDeclarationPrefixProto createEmptyInstance() => create();
  static $pb.PbList<SwidiReferenceDeclarationPrefixProto> createRepeated() =>
      $pb.PbList<SwidiReferenceDeclarationPrefixProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiReferenceDeclarationPrefixProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidiReferenceDeclarationPrefixProto>(create);
  static SwidiReferenceDeclarationPrefixProto? _defaultInstance;

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

class SwidiStaticFunctionDeclarationProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiStaticFunctionDeclarationProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..aOM<SwidiFunctionDeclarationProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'functionDeclaration',
        protoName: 'functionDeclaration',
        subBuilder: SwidiFunctionDeclarationProto.create)
    ..hasRequiredFields = false;

  SwidiStaticFunctionDeclarationProto._() : super();
  factory SwidiStaticFunctionDeclarationProto({
    SwidiFunctionDeclarationProto? functionDeclaration,
  }) {
    final _result = create();
    if (functionDeclaration != null) {
      _result.functionDeclaration = functionDeclaration;
    }
    return _result;
  }
  factory SwidiStaticFunctionDeclarationProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiStaticFunctionDeclarationProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiStaticFunctionDeclarationProto clone() =>
      SwidiStaticFunctionDeclarationProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiStaticFunctionDeclarationProto copyWith(
          void Function(SwidiStaticFunctionDeclarationProto) updates) =>
      super.copyWith((message) =>
              updates(message as SwidiStaticFunctionDeclarationProto))
          as SwidiStaticFunctionDeclarationProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiStaticFunctionDeclarationProto create() =>
      SwidiStaticFunctionDeclarationProto._();
  SwidiStaticFunctionDeclarationProto createEmptyInstance() => create();
  static $pb.PbList<SwidiStaticFunctionDeclarationProto> createRepeated() =>
      $pb.PbList<SwidiStaticFunctionDeclarationProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiStaticFunctionDeclarationProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SwidiStaticFunctionDeclarationProto>(create);
  static SwidiStaticFunctionDeclarationProto? _defaultInstance;

  @$pb.TagNumber(1)
  SwidiFunctionDeclarationProto get functionDeclaration => $_getN(0);
  @$pb.TagNumber(1)
  set functionDeclaration(SwidiFunctionDeclarationProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFunctionDeclaration() => $_has(0);
  @$pb.TagNumber(1)
  void clearFunctionDeclaration() => clearField(1);
  @$pb.TagNumber(1)
  SwidiFunctionDeclarationProto ensureFunctionDeclaration() => $_ensure(0);
}

enum SwidiTypeProto_Value { fromSwidiInterface, fromSwidiFunctionType, notSet }

class SwidiTypeProto extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SwidiTypeProto_Value>
      _SwidiTypeProto_ValueByTag = {
    1: SwidiTypeProto_Value.fromSwidiInterface,
    2: SwidiTypeProto_Value.fromSwidiFunctionType,
    0: SwidiTypeProto_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiTypeProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SwidiInterfaceProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidiInterface',
        protoName: 'fromSwidiInterface',
        subBuilder: SwidiInterfaceProto.create)
    ..aOM<SwidiFunctionTypeProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromSwidiFunctionType',
        protoName: 'fromSwidiFunctionType',
        subBuilder: SwidiFunctionTypeProto.create)
    ..hasRequiredFields = false;

  SwidiTypeProto._() : super();
  factory SwidiTypeProto({
    SwidiInterfaceProto? fromSwidiInterface,
    SwidiFunctionTypeProto? fromSwidiFunctionType,
  }) {
    final _result = create();
    if (fromSwidiInterface != null) {
      _result.fromSwidiInterface = fromSwidiInterface;
    }
    if (fromSwidiFunctionType != null) {
      _result.fromSwidiFunctionType = fromSwidiFunctionType;
    }
    return _result;
  }
  factory SwidiTypeProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiTypeProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiTypeProto clone() => SwidiTypeProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiTypeProto copyWith(void Function(SwidiTypeProto) updates) =>
      super.copyWith((message) => updates(message as SwidiTypeProto))
          as SwidiTypeProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiTypeProto create() => SwidiTypeProto._();
  SwidiTypeProto createEmptyInstance() => create();
  static $pb.PbList<SwidiTypeProto> createRepeated() =>
      $pb.PbList<SwidiTypeProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiTypeProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiTypeProto>(create);
  static SwidiTypeProto? _defaultInstance;

  SwidiTypeProto_Value whichValue() =>
      _SwidiTypeProto_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SwidiInterfaceProto get fromSwidiInterface => $_getN(0);
  @$pb.TagNumber(1)
  set fromSwidiInterface(SwidiInterfaceProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFromSwidiInterface() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromSwidiInterface() => clearField(1);
  @$pb.TagNumber(1)
  SwidiInterfaceProto ensureFromSwidiInterface() => $_ensure(0);

  @$pb.TagNumber(2)
  SwidiFunctionTypeProto get fromSwidiFunctionType => $_getN(1);
  @$pb.TagNumber(2)
  set fromSwidiFunctionType(SwidiFunctionTypeProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFromSwidiFunctionType() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromSwidiFunctionType() => clearField(2);
  @$pb.TagNumber(2)
  SwidiFunctionTypeProto ensureFromSwidiFunctionType() => $_ensure(1);
}

class SwidiTypeArgumentListProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiTypeArgumentListProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..pc<SwidiInterfaceProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'typeList',
        $pb.PbFieldType.PM,
        protoName: 'typeList',
        subBuilder: SwidiInterfaceProto.create)
    ..hasRequiredFields = false;

  SwidiTypeArgumentListProto._() : super();
  factory SwidiTypeArgumentListProto({
    $core.Iterable<SwidiInterfaceProto>? typeList,
  }) {
    final _result = create();
    if (typeList != null) {
      _result.typeList.addAll(typeList);
    }
    return _result;
  }
  factory SwidiTypeArgumentListProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiTypeArgumentListProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiTypeArgumentListProto clone() =>
      SwidiTypeArgumentListProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiTypeArgumentListProto copyWith(
          void Function(SwidiTypeArgumentListProto) updates) =>
      super.copyWith(
              (message) => updates(message as SwidiTypeArgumentListProto))
          as SwidiTypeArgumentListProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiTypeArgumentListProto create() => SwidiTypeArgumentListProto._();
  SwidiTypeArgumentListProto createEmptyInstance() => create();
  static $pb.PbList<SwidiTypeArgumentListProto> createRepeated() =>
      $pb.PbList<SwidiTypeArgumentListProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiTypeArgumentListProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiTypeArgumentListProto>(create);
  static SwidiTypeArgumentListProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SwidiInterfaceProto> get typeList => $_getList(0);
}

class SwidiTypeFormalProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiTypeFormalProto',
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
    ..aOM<SwidiInterfaceProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bound',
        subBuilder: SwidiInterfaceProto.create)
    ..hasRequiredFields = false;

  SwidiTypeFormalProto._() : super();
  factory SwidiTypeFormalProto({
    $core.String? name,
    SwidiInterfaceProto? bound,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (bound != null) {
      _result.bound = bound;
    }
    return _result;
  }
  factory SwidiTypeFormalProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiTypeFormalProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiTypeFormalProto clone() =>
      SwidiTypeFormalProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiTypeFormalProto copyWith(void Function(SwidiTypeFormalProto) updates) =>
      super.copyWith((message) => updates(message as SwidiTypeFormalProto))
          as SwidiTypeFormalProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiTypeFormalProto create() => SwidiTypeFormalProto._();
  SwidiTypeFormalProto createEmptyInstance() => create();
  static $pb.PbList<SwidiTypeFormalProto> createRepeated() =>
      $pb.PbList<SwidiTypeFormalProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiTypeFormalProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiTypeFormalProto>(create);
  static SwidiTypeFormalProto? _defaultInstance;

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
  SwidiInterfaceProto get bound => $_getN(1);
  @$pb.TagNumber(2)
  set bound(SwidiInterfaceProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBound() => $_has(1);
  @$pb.TagNumber(2)
  void clearBound() => clearField(2);
  @$pb.TagNumber(2)
  SwidiInterfaceProto ensureBound() => $_ensure(1);
}

class SwidiTypeFormalListProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SwidiTypeFormalListProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'org.hydro_sdk.swid.ir'),
      createEmptyInstance: create)
    ..pc<SwidiTypeFormalProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'typeFormalList',
        $pb.PbFieldType.PM,
        protoName: 'typeFormalList',
        subBuilder: SwidiTypeFormalProto.create)
    ..hasRequiredFields = false;

  SwidiTypeFormalListProto._() : super();
  factory SwidiTypeFormalListProto({
    $core.Iterable<SwidiTypeFormalProto>? typeFormalList,
  }) {
    final _result = create();
    if (typeFormalList != null) {
      _result.typeFormalList.addAll(typeFormalList);
    }
    return _result;
  }
  factory SwidiTypeFormalListProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SwidiTypeFormalListProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SwidiTypeFormalListProto clone() =>
      SwidiTypeFormalListProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SwidiTypeFormalListProto copyWith(
          void Function(SwidiTypeFormalListProto) updates) =>
      super.copyWith((message) => updates(message as SwidiTypeFormalListProto))
          as SwidiTypeFormalListProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwidiTypeFormalListProto create() => SwidiTypeFormalListProto._();
  SwidiTypeFormalListProto createEmptyInstance() => create();
  static $pb.PbList<SwidiTypeFormalListProto> createRepeated() =>
      $pb.PbList<SwidiTypeFormalListProto>();
  @$core.pragma('dart2js:noInline')
  static SwidiTypeFormalListProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwidiTypeFormalListProto>(create);
  static SwidiTypeFormalListProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SwidiTypeFormalProto> get typeFormalList => $_getList(0);
}
