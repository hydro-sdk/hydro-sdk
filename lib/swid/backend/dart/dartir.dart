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

part 'dartir.freezed.dart';

@freezed
class DartIr with _$DartIr {
  factory DartIr.fromDartBarrelLoadNamespaceSymbolDeclaration(
          {required final DartBarrelLoadNamespaceSymbolDeclaration
              dartBarrelLoadNamespaceSymbolDeclaration}) =
      _$FromDartBarrelLoadNamespaceSymbolDeclaration;
  factory DartIr.fromDartBindInstanceField(
          {required final DartBindInstanceField dartBindInstanceField}) =
      _$FromDartBindInstanceField;
  factory DartIr.fromDartBindInstanceFieldDirect(
          {required final DartBindInstanceFieldDirect dartBindInstanceFieldDirect}) =
      _$FromDartBindInstanceFieldDirect;
  factory DartIr.fromDartBoxEnumReference(
          {required final DartBoxEnumReference dartBoxEnumReference}) =
      _$FromDartBoxEnumReference;
  factory DartIr.fromDartBoxList({required final DartBoxList dartBoxList}) =
      _$FromDartBoxList;
  factory DartIr.fromDartBoxObjectReference(
          {required final DartBoxObjectReference dartBoxObjectReference}) =
      _$FromDartBoxObjectReference;
  factory DartIr.fromDartImportStatement(
          {required final DartImportStatement dartImportStatement}) =
      _$FromDartImportStatement;
  factory DartIr.fromDartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration(
          {required final DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration
              dartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration}) =
      _$FromDartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration;
  factory DartIr.fromDartFunctionSelfBindingInvocation(
          {required final DartFunctionSelfBindingInvocation
              dartFunctionSelfBindingInvocation}) =
      _$FromDartFunctionSelfBindingInvocation;
  factory DartIr.fromDartLinebreak({required final DartLinebreak dartLinebreak}) =
      _$FromDartLinebreak;
  factory DartIr.fromDartUnboxingExpression(
          {required final DartUnboxingExpression dartUnboxingExpression}) =
      _$FromDartUnboxingExpression;
  factory DartIr.fromDartUnpackClosures(
          {required final DartUnpackClosures dartUnpackClosures}) =
      _$FromDartUnpackClosures;
  factory DartIr.fromDartVMManagedClassBoxerRegistrant(
          {required final DartVMManagedClassBoxerRegistrant
              dartVMManagedClassBoxerRegistrant}) =
      $FromDartVMManagedClassBoxerRegistrant;
  factory DartIr.fromLoadNamepsaceSymbolDeclaration(
          {required final DartLoadNamespaceSymbolDeclaration
              loadNamespaceSymbolDeclaration}) =
      _$FromLoadNamespaceSymbolDeclaration;
  factory DartIr.fromMethodInjectionImplementation(
      {required final DartMethodInjectionImplementation
          methodInjectionImplementation}) = _$FromMethodInjectionImplementation;
  factory DartIr.fromRTManagedClassDeclaration(
          {required final DartRTManagedClassDeclaration rtManagedClassDeclaration}) =
      _$FromRTManagedClassDeclaration;
  factory DartIr.fromDartStaticMethodNamespaceSymbolDeclaration(
          {required final DartStaticMethodNamespaceSymbolDeclaration
              staticMethodNamespaceSymbolDeclaration}) =
      _$FromDartStaticMethodNamespaceSymbolDeclaration;
  factory DartIr.fromVMManagedClassDeclaration(
          {required final DartVMManagedClassDeclaration vmManagedClassDeclaration}) =
      _$FromVMManagedClassDeclaration;
  factory DartIr.fromVMManagedClassMethodInjectionImplementation(
          {required final DartVMManagedClassMethodInjectionImplementation
              vmManagedClassMethodInjectionImplementation}) =
      _$FromVMManagedClassMethodInjectionImplementation;
}

extension DartIrMethods on DartIr {
  String? toDartSource() => when(
        fromDartBarrelLoadNamespaceSymbolDeclaration: (val) =>
            val.toDartSource(),
        fromDartBindInstanceField: (val) => val.toDartSource(),
        fromDartBindInstanceFieldDirect: (val) => val.toDartSource(),
        fromDartBoxEnumReference: (val) => val.toDartSource(),
        fromDartBoxList: (val) => val.toDartSource(),
        fromDartBoxObjectReference: (val) => val.toDartSource(),
        fromDartImportStatement: (val) => val.toDartSource(),
        fromDartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration:
            (val) => val.toDartSource(),
        fromDartFunctionSelfBindingInvocation: (val) => val.toDartSource(),
        fromDartLinebreak: (val) => val.toDartSource(),
        fromDartUnboxingExpression: (val) => val.toDartSource(),
        fromDartUnpackClosures: (val) => val.toDartSource(),
        fromDartVMManagedClassBoxerRegistrant: (val) => val.toDartSource(),
        fromLoadNamepsaceSymbolDeclaration: (val) => val.toDartSource(),
        fromMethodInjectionImplementation: (val) => val.toDartSource(),
        fromRTManagedClassDeclaration: (val) => val.toDartSource(),
        fromDartStaticMethodNamespaceSymbolDeclaration: (val) =>
            val.toDartSource(),
        fromVMManagedClassDeclaration: (val) => val.toDartSource(),
        fromVMManagedClassMethodInjectionImplementation: (val) =>
            val.toDartSource(),
      );
}
