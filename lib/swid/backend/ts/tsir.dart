import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/tsClassConstructorImplementation.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassInstanceFieldDeclarations.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassMethodDeclarations.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassMethodInjectionFieldDeclarations.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassMethodInjectionFieldName.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassPostamble.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassPreamble.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassStaticConstFieldDeclarations.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassStaticMethodImplementation.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassVmDeclaration.dart';
import 'package:hydro_sdk/swid/backend/ts/tsEnum.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionDefaultNamedProps.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionInvocation.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionInvocationNamedParameters.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionInvocationNamedParametersKeyValue.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionInvocationNamedParametersSpread.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/backend/ts/tsInterface.dart';
import 'package:hydro_sdk/swid/backend/ts/tsLinebreak.dart';
import 'package:hydro_sdk/swid/backend/ts/tsResolvedImport.dart';
import 'package:hydro_sdk/swid/backend/ts/tsTopLevelStaticConstFieldDeclaration.dart';

part 'tsir.freezed.dart';

@freezed
class TsIr with _$TsIr {
  factory TsIr.fromTsClassConstructorImplementation(
          {required final TsClassConstructorImplementation
              tsClassConstructorImplementation}) =
      _$FromTsClassConstructorImplementation;
  factory TsIr.fromTsFunctionDefaultNamedProps(
      {required final TsFunctionDefaultNamedProps
          tsFunctionDefaultNamedProps}) = _$FromTsFunctionDefaultNamedProps;
  factory TsIr.fromTsClassInstanceFieldDeclarations(
          {required final TsClassInstanceFieldDeclarations
              tsClassInstanceFieldDeclarations}) =
      _$FromClassInstanceFieldDeclarations;
  factory TsIr.fromTsClassMethodDeclarations(
      {required final TsClassMethodDeclarations
          tsClassMethodDeclarations}) = _$FromTsClassMethodDeclarations;
  factory TsIr.fromTsClassMethodInjectionFieldDeclarations(
          {required final TsClassMethodInjectionFieldDeclarations
              tsClassMethodInjectionFieldDeclarations}) =
      _$FromTsClassMethodInjectionFieldDeclarations;
  factory TsIr.fromTsClassMethodInjectionFieldName(
          {required final TsClassMethodInjectionFieldName
              tsClassMethodInjectionFieldName}) =
      _$FromTsClassMethodInjectionFieldName;
  factory TsIr.fromTsClassPostamble(
          {required final TsClassPostamble tsClassPostamble}) =
      _$FromTsClassPostamble;
  factory TsIr.fromTsClassPreamble(
      {required final TsClassPreamble tsClassPreamble}) = _$FromTsClassPreamble;
  factory TsIr.fromTsClassStaticConstFieldDeclarations(
          {required final TsClassStaticConstFieldDeclarations
              tsClassStaticConstFieldDeclarations}) =
      _$FromTsClassStaticConstFieldDeclarations;
  factory TsIr.fromTsClassStaticMethodImplementation(
          {required final TsClassStaticMethodImplementation
              tsClassStaticMethodImplementation}) =
      _$FromTsClassStaticMethodImplementation;
  factory TsIr.fromTsEnum({required final TsEnum tsEnum}) = _$FromTsEnum;
  factory TsIr.fromTsInterface({required final TsInterface tsInterface}) =
      _$FromTsInterface;
  factory TsIr.fromTsClassVmDeclaration(
          {required final TsClassVmDeclaration tsClassVmDeclaration}) =
      _$FromTsClassVmDeclaration;
  factory TsIr.fromTsFunctionInvocation(
          {required final TsFunctionInvocation tsFunctionInvocation}) =
      _$FromTsFunctionInvocation;
  factory TsIr.fromTsFunctionInvocationNamedParameters(
          {required final TsFunctionInvocationNamedParameters
              tsFunctionInvocationNamedParameters}) =
      _$FromTsFunctionInvocationNamedParameters;
  factory TsIr.fromTsFunctionInvocationNamedParametersKeyValue(
          {required final TsFunctionInvocationNamedParametersKeyValue
              tsFunctionInvocationNamedParametersKeyValue}) =
      _$FromTsFunctionInvocationNamedParametersKeyValue;
  factory TsIr.fromTsFunctionInvocationNamedParametersSpread(
          {required final TsFunctionInvocationNamedParametersSpread
              tsFunctionInvocationNamedParametersSpread}) =
      _$TsFunctionInvocationNamedParametersSpread;
  factory TsIr.fromTsLinebreak({required final TsLinebreak tsLinebreak}) =
      _$FromTsLinebreak;
  factory TsIr.fromTsFunctionSelfBindingInvocation(
          {required final TsFunctionSelfBindingInvocation
              tsFunctionSelfBindingInvocation}) =
      _$FromTsFunctionSelfBindingInvocation;
  factory TsIr.fromTsResolvedImport(
          {required final TsResolvedImport tsResolvedImport}) =
      _$FromTsResolvedImport;

  factory TsIr.fromTsTopLevelStaticConstFieldDeclaration(
          {required final TsTopLevelStaticConstFieldDeclaration
              tsTopLevelStaticConstFieldDeclaration}) =
      _$FromTsTopLevelStaticConstFieldDeclaration;
}

extension TsIrMethods on TsIr {
  String toTsSource() => when(
        fromTsClassStaticMethodImplementation: (val) => val.toTsSource(),
        fromTsClassConstructorImplementation: (val) => val.toTsSource(),
        fromTsFunctionDefaultNamedProps: (val) => val.toTsSource(),
        fromTsClassInstanceFieldDeclarations: (val) => val.toTsSource(),
        fromTsClassMethodDeclarations: (val) => val.toTsSource(),
        fromTsClassMethodInjectionFieldDeclarations: (val) => val.toTsSource(),
        fromTsClassMethodInjectionFieldName: (val) => val.toTsSource(),
        fromTsClassPostamble: (val) => val.toTsSource(),
        fromTsClassPreamble: (val) => val.toTsSource(),
        fromTsClassStaticConstFieldDeclarations: (val) => val.toTsSource(),
        fromTsEnum: (val) => val.toTsSource(),
        fromTsInterface: (val) => val.toTsSource(),
        fromTsClassVmDeclaration: (val) => val.toTsSource(),
        fromTsFunctionInvocation: (val) => val.toTsSource(),
        fromTsFunctionInvocationNamedParameters: (val) => val.toTsSource(),
        fromTsFunctionInvocationNamedParametersKeyValue: (val) =>
            val.toTsSource(),
        fromTsFunctionInvocationNamedParametersSpread: (val) =>
            val.toTsSource(),
        fromTsLinebreak: (val) => val.toTsSource(),
        fromTsFunctionSelfBindingInvocation: (val) => val.toTsSource(),
        fromTsResolvedImport: (val) => val.toTsSource(),
        fromTsTopLevelStaticConstFieldDeclaration: (val) => val.toTsSource(),
      );
}
