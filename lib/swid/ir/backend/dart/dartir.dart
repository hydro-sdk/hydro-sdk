import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartLinebreak.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartUnboxingParameterExpression.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/loadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/methodInjectionImplementation.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/rtManagedClassDeclaration.dart';
import 'package:meta/meta.dart';

part 'dartir.freezed.dart';

@freezed
abstract class DartIr with _$DartIr {
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
}

extension DartIrMethods on DartIr {
  String toDartSource() => when(
        fromDartFunctionSelfBindingInvocation: (val) => val.toDartSource(),
        fromDartLinebreak: (val) => val.toDartSource(),
        fromDartUnboxingParameterExpression: (val) => val.toDartSource(),
        fromLoadNamepsaceSymbolDeclaration: (val) => val.toDartSource(),
        fromMethodInjectionImplementation: (val) => val.toDartSource(),
        fromRTManagedClassDeclaration: (val) => val.toDartSource(),
      );
}
