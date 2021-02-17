import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/backend/dart/dartBarrelLoadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBindInstanceField.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBindInstanceFieldDirect.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxEnumReference.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxList.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartImportStatement.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartLinebreak.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartLoadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartMethodInjectionImplementation.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartRtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartStaticMethodNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartUnboxingExpression.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartUnpackClosures.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartVmManagedClassBoxerRegistrant.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartVmManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartVmManagedClassMethodInjectionImplementation.dart';

part 'dartir.freezed.dart';

@freezed
abstract class DartIr with _$DartIr {
  factory DartIr.fromDartBarrelLoadNamespaceSymbolDeclaration(
          {@required
              DartBarrelLoadNamespaceSymbolDeclaration
                  dartBarrelLoadNamespaceSymbolDeclaration}) =
      _$FromDartBarrelLoadNamespaceSymbolDeclaration;
  factory DartIr.fromDartBindInstanceField(
          {@required DartBindInstanceField dartBindInstanceField}) =
      _$FromDartBindInstanceField;
  factory DartIr.fromDartBindInstanceFieldDirect(
          {@required DartBindInstanceFieldDirect dartBindInstanceFieldDirect}) =
      _$FromDartBindInstanceFieldDirect;
  factory DartIr.fromDartBoxEnumReference(
          {@required DartBoxEnumReference dartBoxEnumReference}) =
      _$FromDartBoxEnumReference;
  factory DartIr.fromDartBoxList({@required DartBoxList dartBoxList}) =
      _$FromDartBoxList;
  factory DartIr.fromDartBoxObjectReference(
          {@required DartBoxObjectReference dartBoxObjectReference}) =
      _$FromDartBoxObjectReference;
  factory DartIr.fromDartImportStatement(
          {@required DartImportStatement dartImportStatement}) =
      _$FromDartImportStatement;
  factory DartIr.fromDartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration(
          {@required
              DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration
                  dartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration}) =
      _$FromDartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration;
  factory DartIr.fromDartFunctionSelfBindingInvocation(
          {@required
              DartFunctionSelfBindingInvocation
                  dartFunctionSelfBindingInvocation}) =
      _$FromDartFunctionSelfBindingInvocation;
  factory DartIr.fromDartLinebreak({@required DartLinebreak dartLinebreak}) =
      _$FromDartLinebreak;
  factory DartIr.fromDartUnboxingExpression(
          {@required DartUnboxingExpression dartUnboxingExpression}) =
      _$FromDartUnboxingExpression;
  factory DartIr.fromDartUnpackClosures(
          {@required DartUnpackClosures dartUnpackClosures}) =
      _$FromDartUnpackClosures;
  factory DartIr.fromDartVMManagedClassBoxerRegistrant(
          {@required
              DartVMManagedClassBoxerRegistrant
                  dartVMManagedClassBoxerRegistrant}) =
      $FromDartVMManagedClassBoxerRegistrant;
  factory DartIr.fromLoadNamepsaceSymbolDeclaration(
          {@required
              DartLoadNamespaceSymbolDeclaration
                  loadNamespaceSymbolDeclaration}) =
      _$FromLoadNamespaceSymbolDeclaration;
  factory DartIr.fromMethodInjectionImplementation(
          {@required
              DartMethodInjectionImplementation
                  methodInjectionImplementation}) =
      _$FromMethodInjectionImplementation;
  factory DartIr.fromRTManagedClassDeclaration(
          {@required DartRTManagedClassDeclaration rtManagedClassDeclaration}) =
      _$FromRTManagedClassDeclaration;
  factory DartIr.fromDartStaticMethodNamespaceSymbolDeclaration(
          {@required
              DartStaticMethodNamespaceSymbolDeclaration
                  staticMethodNamespaceSymbolDeclaration}) =
      _$FromDartStaticMethodNamespaceSymbolDeclaration;
  factory DartIr.fromVMManagedClassDeclaration(
          {@required DartVMManagedClassDeclaration vmManagedClassDeclaration}) =
      _$FromVMManagedClassDeclaration;
  factory DartIr.fromVMManagedClassMethodInjectionImplementation(
          {@required
              DartVMManagedClassMethodInjectionImplementation
                  vmManagedClassMethodInjectionImplementation}) =
      _$FromVMManagedClassMethodInjectionImplementation;
}

extension DartIrMethods on DartIr {
  String toDartSource() => when(
        fromDartBarrelLoadNamespaceSymbolDeclaration: (val) =>
            val.toDartSource(),
        fromDartBindInstanceField: (val) => val.toDartSource(),
        fromDartBindInstanceFieldDirect: (val) => val.toDartSource(),
        fromDartBoxEnumReference: (val) => val.toDartSource(),
        fromDartBoxList: (val) => val.toDartSource(),
        fromDartBoxObjectReference: (val) => val.toDartSource(),
        fromDartImportStatement: (val) => val.toDartSource(),
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
