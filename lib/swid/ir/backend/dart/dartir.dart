import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBindInstanceField.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBindInstanceFieldDirect.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxEnumReference.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartLinebreak.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartUnboxingParameterExpression.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartVmManagedClassBoxerRegistrant.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/loadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/methodInjectionImplementation.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/rtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/staticMethodNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/vmManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/vmManagedClassMethodInjectionImplementation.dart';
import 'package:meta/meta.dart';

part 'dartir.freezed.dart';

@freezed
abstract class DartIr with _$DartIr {
  factory DartIr.fromDartBindInstanceField(
          {@required DartBindInstanceField dartBindInstanceField}) =
      _$FromDartBindInstanceField;
  factory DartIr.fromDartBindInstanceFieldDirect(
          {@required DartBindInstanceFieldDirect dartBindInstanceFieldDirect}) =
      _$FromDartBindInstanceFieldDirect;
  factory DartIr.fromDartBoxEnumReference(
          {@required DartBoxEnumReference dartBoxEnumReference}) =
      _$FromDartBoxEnumReference;
  factory DartIr.fromDartBoxObjectReference(
          {@required DartBoxObjectReference dartBoxObjectReference}) =
      _$FromDartBoxObjectReference;
  factory DartIr.fromDartFunctionSelfBindingInvocation(
          {@required
              DartFunctionSelfBindingInvocation
                  dartFunctionSelfBindingInvocation}) =
      _$FromDartFunctionSelfBindingInvocation;
  factory DartIr.fromDartLinebreak({@required DartLinebreak dartLinebreak}) =
      _$FromDartLinebreak;
  factory DartIr.fromDartUnboxingParameterExpression(
          {@required
              DartUnboxingParameterExpression
                  dartUnboxingParameterExpression}) =
      _$FromDartUnboxingParameterExpression;
  factory DartIr.fromDartVMManagedClassBoxerRegistrant(
          {@required
              DartVMManagedClassBoxerRegistrant
                  dartVMManagedClassBoxerRegistrant}) =
      $FromDartVMManagedClassBoxerRegistrant;
  factory DartIr.fromLoadNamepsaceSymbolDeclaration(
          {@required
              LoadNamespaceSymbolDeclaration loadNamespaceSymbolDeclaration}) =
      _$FromLoadNamespaceSymbolDeclaration;
  factory DartIr.fromMethodInjectionImplementation(
          {@required
              MethodInjectionImplementation methodInjectionImplementation}) =
      _$FromMethodInjectionImplementation;
  factory DartIr.fromRTManagedClassDeclaration(
          {@required RTManagedClassDeclaration rtManagedClassDeclaration}) =
      _$FromRTManagedClassDeclaration;
  factory DartIr.fromStaticMethodNamespaceSymbolDeclaration(
          {@required
              StaticMethodNamespaceSymbolDeclaration
                  staticMethodNamespaceSymbolDeclaration}) =
      _$FromStaticMethodNamespaceSymbolDeclaration;
  factory DartIr.fromVMManagedClassDeclaration(
          {@required VMManagedClassDeclaration vmManagedClassDeclaration}) =
      _$FromVMManagedClassDeclaration;
  factory DartIr.fromVMManagedClassMethodInjectionImplementation(
          {@required
              VMManagedClassMethodInjectionImplementation
                  vmManagedClassMethodInjectionImplementation}) =
      _$FromVMManagedClassMethodInjectionImplementation;
}

extension DartIrMethods on DartIr {
  String toDartSource() => when(
        fromDartBindInstanceField: (val) => val.toDartSource(),
        fromDartBindInstanceFieldDirect: (val) => val.toDartSource(),
        fromDartBoxEnumReference: (val) => val.toDartSource(),
        fromDartBoxObjectReference: (val) => val.toDartSource(),
        fromDartFunctionSelfBindingInvocation: (val) => val.toDartSource(),
        fromDartLinebreak: (val) => val.toDartSource(),
        fromDartUnboxingParameterExpression: (val) => val.toDartSource(),
        fromDartVMManagedClassBoxerRegistrant: (val) => val.toDartSource(),
        fromLoadNamepsaceSymbolDeclaration: (val) => val.toDartSource(),
        fromMethodInjectionImplementation: (val) => val.toDartSource(),
        fromRTManagedClassDeclaration: (val) => val.toDartSource(),
        fromStaticMethodNamespaceSymbolDeclaration: (val) => val.toDartSource(),
        fromVMManagedClassDeclaration: (val) => val.toDartSource(),
        fromVMManagedClassMethodInjectionImplementation: (val) =>
            val.toDartSource(),
      );
}
