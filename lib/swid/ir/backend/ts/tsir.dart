import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassConstructorImplementation.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassDefaultConstructorProps.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassInstanceFieldDeclarations.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassMethodInjectionFieldDeclarations.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassMethodInjectionFieldName.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassPostamble.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassPreamble.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassStaticConstFieldDeclarations.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassVmDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsEnum.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionInvocationNamedParameters.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionInvocationNamedParametersKeyValue.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionInvocationNamedParametersSpread.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsInterface.dart';
import 'package:meta/meta.dart';

part 'tsir.freezed.dart';

@freezed
abstract class TsIr with _$TsIr {
  factory TsIr.fromTsClassConstructorImplementation(
          {@required
              TsClassConstructorImplementation
                  tsClassConstructorImplementation}) =
      _$FromTsClassConstructorImplementation;
  factory TsIr.fromTsClassDefaultConstructorProps(
          {@required
              TsClassDefaultConstructorProps tsClassDefaultConstructorProps}) =
      _$FromTsClassDefaultConstructorProps;
  factory TsIr.fromTsClassInstanceFieldDeclarations(
          {@required
              TsClassInstanceFieldDeclarations
                  tsClassInstanceFieldDeclarations}) =
      _$FromClassInstanceFieldDeclarations;
  factory TsIr.fromTsClassMethodInjectionFieldDeclarations(
          {@required
              TsClassMethodInjectionFieldDeclarations
                  tsClassMethodInjectionFieldDeclarations}) =
      _$FromTsClassMethodInjectionFieldDeclarations;
  factory TsIr.fromTsClassMethodInjectionFieldName(
          {@required
              TsClassMethodInjectionFieldName
                  tsClassMethodInjectionFieldName}) =
      _$FromTsClassMethodInjectionFieldName;
  factory TsIr.fromTsClassPostamble(
      {@required TsClassPostamble tsClassPostamble}) = _$FromTsClassPostamble;
  factory TsIr.fromTsClassPreamble(
      {@required TsClassPreamble tsClassPreamble}) = _$FromTsClassPreamble;
  factory TsIr.fromTsClassStaticConstFieldDeclarations(
          {@required
              TsClassStaticConstFieldDeclarations
                  tsClassStaticConstFieldDeclarations}) =
      _$FromTsClassStaticConstFieldDeclarations;
  factory TsIr.fromTsEnum({@required TsEnum tsEnum}) = _$FromTsEnum;
  factory TsIr.fromTsInterface({@required TsInterface tsInterface}) =
      _$FromTsInterface;
  factory TsIr.fromTsClassVmDeclaration(
          {@required TsClassVmDeclaration tsClassVmDeclaration}) =
      _$FromTsClassVmDeclaration;
  factory TsIr.fromTsFunctionInvocation(
          {@required TsFunctionInvocation tsFunctionInvocation}) =
      _$FromTsFunctionInvocation;
  factory TsIr.fromTsFunctionInvocationNamedParameters(
          {@required
              TsFunctionInvocationNamedParameters
                  tsFunctionInvocationNamedParameters}) =
      _$FromTsFunctionInvocationNamedParameters;
  factory TsIr.fromTsFunctionInvocationNamedParametersKeyValue(
          {@required
              TsFunctionInvocationNamedParametersKeyValue
                  tsFunctionInvocationNamedParametersKeyValue}) =
      _$FromTsFunctionInvocationNamedParametersKeyValue;
  factory TsIr.fromTsFunctionInvocationNamedParametersSpread(
          {@required
              TsFunctionInvocationNamedParametersSpread
                  tsFunctionInvocationNamedParametersSpread}) =
      _$TsFunctionInvocationNamedParametersSpread;
}

extension TsIrMethods on TsIr {
  String toTsSource() => when(
        fromTsClassConstructorImplementation: (val) => val.toTsSource(),
        fromTsClassDefaultConstructorProps: (val) => val.toTsSource(),
        fromTsClassInstanceFieldDeclarations: (val) => val.toTsSource(),
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
      );
}
