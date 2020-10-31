import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassDefaultConstructorProps.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassInstanceFieldDeclarations.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassPostamble.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassPreamble.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassStaticConstFieldDeclarations.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassVmDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsEnum.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsInterface.dart';
import 'package:meta/meta.dart';

part 'tsir.freezed.dart';

@freezed
abstract class TsIr with _$TsIr {
  factory TsIr.fromTsClassDefaultConstructorProps(
          {@required
              TsClassDefaultConstructorProps tsClassDefaultConstructorProps}) =
      _$FromTsClassDefaultConstructorProps;
  factory TsIr.fromTsClassInstanceFieldDeclarations(
          {@required
              TsClassInstanceFieldDeclarations
                  tsClassInstanceFieldDeclarations}) =
      _$FromClassInstanceFieldDeclarations;
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
}

extension TsIrMethods on TsIr {
  String toTsSource() => when(
      fromTsClassDefaultConstructorProps: (val) => val.toTsSource(),
      fromTsClassInstanceFieldDeclarations: (val) => val.toTsSource(),
      fromTsClassPostamble: (val) => val.toTsSource(),
      fromTsClassPreamble: (val) => val.toTsSource(),
      fromTsClassStaticConstFieldDeclarations: (val) => val.toTsSource(),
      fromTsEnum: (val) => val.toTsSource(),
      fromTsInterface: (val) => val.toTsSource(),
      fromTsClassVmDeclaration: (val) => val.toTsSource());
}
