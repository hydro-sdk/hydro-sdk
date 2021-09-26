import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBarrelLoadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBindInstanceField.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBindInstanceFieldDirect.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBoxEnumReference.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBoxList.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/backend/dart/dartFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/backend/dart/dartImportStatement.dart';
import 'package:hydro_sdk/swid/backend/dart/dartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/backend/dart/dartLinebreak.dart';
import 'package:hydro_sdk/swid/backend/dart/dartLoadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/backend/dart/dartMethodInjectionImplementation.dart';
import 'package:hydro_sdk/swid/backend/dart/dartRtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/backend/dart/dartStaticMethodNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/backend/dart/dartUnboxingExpression.dart';
import 'package:hydro_sdk/swid/backend/dart/dartUnpackClosures.dart';
import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassBoxerRegistrant.dart';
import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassMethodInjectionImplementation.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';

part 'dartir.freezed.dart';

@freezed
class DartIr with _$DartIr {
  DartIr._();

  factory DartIr.fromDartBarrelLoadNamespaceSymbolDeclaration({
    required final DartBarrelLoadNamespaceSymbolDeclaration
        dartBarrelLoadNamespaceSymbolDeclaration,
  }) = _$FromDartBarrelLoadNamespaceSymbolDeclaration;

  factory DartIr.fromDartBindInstanceField({
    required final DartBindInstanceField dartBindInstanceField,
  }) = _$FromDartBindInstanceField;

  factory DartIr.fromDartBindInstanceFieldDirect({
    required final DartBindInstanceFieldDirect dartBindInstanceFieldDirect,
  }) = _$FromDartBindInstanceFieldDirect;

  factory DartIr.fromDartBoxEnumReference({
    required final DartBoxEnumReference dartBoxEnumReference,
  }) = _$FromDartBoxEnumReference;

  factory DartIr.fromDartBoxList({
    required final DartBoxList dartBoxList,
  }) = _$FromDartBoxList;

  factory DartIr.fromDartBoxObjectReference({
    required final DartBoxObjectReference dartBoxObjectReference,
  }) = _$FromDartBoxObjectReference;

  factory DartIr.fromDartImportStatement({
    required final DartImportStatement dartImportStatement,
  }) = _$FromDartImportStatement;

  factory DartIr.fromDartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration({
    required final DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration
        dartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration,
  }) = _$FromDartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration;

  factory DartIr.fromDartFunctionSelfBindingInvocation({
    required final DartFunctionSelfBindingInvocation
        dartFunctionSelfBindingInvocation,
  }) = _$FromDartFunctionSelfBindingInvocation;

  factory DartIr.fromDartLinebreak({
    required final DartLinebreak dartLinebreak,
  }) = _$FromDartLinebreak;

  factory DartIr.fromDartUnboxingExpression({
    required final DartUnboxingExpression dartUnboxingExpression,
  }) = _$FromDartUnboxingExpression;

  factory DartIr.fromDartUnpackClosures({
    required final DartUnpackClosures dartUnpackClosures,
  }) = _$FromDartUnpackClosures;

  factory DartIr.fromDartVMManagedClassBoxerRegistrant({
    required final DartVMManagedClassBoxerRegistrant
        dartVMManagedClassBoxerRegistrant,
  }) = $FromDartVMManagedClassBoxerRegistrant;

  factory DartIr.fromLoadNamepsaceSymbolDeclaration({
    required final DartLoadNamespaceSymbolDeclaration
        loadNamespaceSymbolDeclaration,
  }) = _$FromLoadNamespaceSymbolDeclaration;

  factory DartIr.fromMethodInjectionImplementation({
    required final DartMethodInjectionImplementation
        methodInjectionImplementation,
  }) = _$FromMethodInjectionImplementation;

  factory DartIr.fromRTManagedClassDeclaration({
    required final DartRTManagedClassDeclaration rtManagedClassDeclaration,
  }) = _$FromRTManagedClassDeclaration;

  factory DartIr.fromDartStaticMethodNamespaceSymbolDeclaration({
    required final DartStaticMethodNamespaceSymbolDeclaration
        staticMethodNamespaceSymbolDeclaration,
  }) = _$FromDartStaticMethodNamespaceSymbolDeclaration;

  factory DartIr.fromVMManagedClassDeclaration({
    required final DartVMManagedClassDeclaration vmManagedClassDeclaration,
  }) = _$FromVMManagedClassDeclaration;

  factory DartIr.fromVMManagedClassMethodInjectionImplementation({
    required final DartVMManagedClassMethodInjectionImplementation
        vmManagedClassMethodInjectionImplementation,
  }) = _$FromVMManagedClassMethodInjectionImplementation;

  String transform({
    required ISwarsPipeline pipeline,
  }) =>
      when(
        fromDartBarrelLoadNamespaceSymbolDeclaration: (val) => val
            .transform(
              pipeline: pipeline,
            )
            .unwrap(),
        fromDartBindInstanceField: (val) => val
            .transform(
              pipeline: pipeline,
            )
            .unwrap(),
        fromDartBindInstanceFieldDirect: (val) => val
            .transform(
              pipeline: pipeline,
            )
            .unwrap(),
        fromDartBoxEnumReference: (val) => val
            .transform(
              pipeline: pipeline,
            )
            .unwrap(),
        fromDartBoxList: (val) => val
            .transform(
              pipeline: pipeline,
            )
            .unwrap(),
        fromDartBoxObjectReference: (val) => val
            .transform(
              pipeline: pipeline,
            )
            .unwrap(),
        fromDartImportStatement: (val) => val
            .transform(
              pipeline: pipeline,
            )
            .unwrap(),
        fromDartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration:
            (val) => val
                .transform(
                  pipeline: pipeline,
                )
                .unwrap(),
        fromDartFunctionSelfBindingInvocation: (val) => val
            .transform(
              pipeline: pipeline,
            )
            .unwrap(),
        fromDartLinebreak: (val) => val.toDartSource(),
        fromDartUnboxingExpression: (val) => val
            .transform(
              pipeline: pipeline,
            )
            .unwrap(),
        fromDartUnpackClosures: (val) => val
            .transform(
              pipeline: pipeline,
            )
            .unwrap(),
        fromDartVMManagedClassBoxerRegistrant: (val) => val
            .transform(
              pipeline: pipeline,
            )
            .unwrap(),
        fromLoadNamepsaceSymbolDeclaration: (val) => val
            .transform(
              pipeline: pipeline,
            )
            .unwrap(),
        fromMethodInjectionImplementation: (val) => val
            .transform(
              pipeline: pipeline,
            )
            .unwrap(),
        fromRTManagedClassDeclaration: (val) => val
            .transform(
              pipeline: pipeline,
            )
            .unwrap(),
        fromDartStaticMethodNamespaceSymbolDeclaration: (val) => val
            .transform(
              pipeline: pipeline,
            )
            .unwrap(),
        fromVMManagedClassDeclaration: (val) => val
            .transform(
              pipeline: pipeline,
            )
            .unwrap(),
        fromVMManagedClassMethodInjectionImplementation: (val) => val
            .transform(
              pipeline: pipeline,
            )
            .unwrap(),
      );
}
