import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/constantPrimitives.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstBoolean.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstMap.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNumber.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstString.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';

part 'swidiConst.freezed.dart';

@freezed
class SwidiConst with _$SwidiConst {
  const SwidiConst._();

  const factory SwidiConst.fromSwidiEmptyConst({
    required final SwidiEmptyConst swidiEmptyConst,
  }) = _$SwidiConstFromSwidiEmptyConst;

  const factory SwidiConst.fromSwidiConstNumber({
    required final SwidiConstNumber swidiConstNumber,
  }) = _$SwidiConstFromSwidiConstNumber;

  const factory SwidiConst.fromSwidiConstString({
    required final SwidiConstString swidiConstString,
  }) = _$SwidiConstFromSwidiConstString;

  const factory SwidiConst.fromSwidiConstFunctionInvocation({
    required final SwidiConstFunctionInvocation swidiConstFunctionInvocation,
  }) = _$SwidiConstFromSwidiConstFunctionInvocation;

  const factory SwidiConst.fromSwidiConstMap({
    required final SwidiConstMap swidiConstMap,
  }) = _$SwidiConstFromSwidiConstMap;

  const factory SwidiConst.fromSwidiConstBoolean({
    required final SwidiConstBoolean swidiConstBoolean,
  }) = _$SwidiConstFromSwidiConstBoolean;

  factory SwidiConst.clone({
    required final SwidiConst swidiConst,
  }) =>
      swidiConst.when(
        fromSwidiEmptyConst: (val) => SwidiConst.fromSwidiEmptyConst(
          swidiEmptyConst: swidiEmptyConst,
        ),
        fromSwidiConstNumber: (val) => SwidiConst.fromSwidiConstNumber(
          swidiConstNumber: SwidiConstNumber.clone(
            swidiConstNumber: val,
          ),
        ),
        fromSwidiConstString: (val) => SwidiConst.fromSwidiConstString(
          swidiConstString: SwidiConstString.clone(
            swidiConstString: val,
          ),
        ),
        fromSwidiConstFunctionInvocation: (val) =>
            SwidiConst.fromSwidiConstFunctionInvocation(
          swidiConstFunctionInvocation: SwidiConstFunctionInvocation.clone(
            swidiConstFunctionInvocation: val,
          ),
        ),
        fromSwidiConstMap: (val) => SwidiConst.fromSwidiConstMap(
          swidiConstMap: SwidiConstMap.clone(
            swidiConstMap: val,
          ),
        ),
        fromSwidiConstBoolean: (val) => SwidiConst.fromSwidiConstBoolean(
          swidiConstBoolean: val,
        ),
      );
}
