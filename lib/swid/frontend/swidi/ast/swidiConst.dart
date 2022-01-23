import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/constantPrimitives.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstBoolean.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstMap.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNumber.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstString.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'swidiConst.freezed.dart';

@freezed
class SwidiConst
    with
        _$SwidiConst,
        HashKeyMixin<SwidiConst>,
        HashComparableMixin<SwidiConst> {
  SwidiConst._();

  factory SwidiConst.fromSwidiEmptyConst({
    required final SwidiEmptyConst swidiEmptyConst,
  }) = _$SwidiConstFromSwidiEmptyConst;

  factory SwidiConst.fromSwidiConstNumber({
    required final SwidiConstNumber swidiConstNumber,
  }) = _$SwidiConstFromSwidiConstNumber;

  factory SwidiConst.fromSwidiConstString({
    required final SwidiConstString swidiConstString,
  }) = _$SwidiConstFromSwidiConstString;

  factory SwidiConst.fromSwidiConstFunctionInvocation({
    required final SwidiConstFunctionInvocation swidiConstFunctionInvocation,
  }) = _$SwidiConstFromSwidiConstFunctionInvocation;

  factory SwidiConst.fromSwidiConstMap({
    required final SwidiConstMap swidiConstMap,
  }) = _$SwidiConstFromSwidiConstMap;

  factory SwidiConst.fromSwidiConstBoolean({
    required final SwidiConstBoolean swidiConstBoolean,
  }) = _$SwidiConstFromSwidiConstBoolean;

  factory SwidiConst._clone({
    required final SwidiConst swidiConst,
  }) =>
      swidiConst.when(
        fromSwidiEmptyConst: (val) => SwidiConst.fromSwidiEmptyConst(
          swidiEmptyConst: swidiEmptyConst,
        ),
        fromSwidiConstNumber: (val) => SwidiConst.fromSwidiConstNumber(
          swidiConstNumber: val.clone(),
        ),
        fromSwidiConstString: (val) => SwidiConst.fromSwidiConstString(
          swidiConstString: val.clone(),
        ),
        fromSwidiConstFunctionInvocation: (val) =>
            SwidiConst.fromSwidiConstFunctionInvocation(
          swidiConstFunctionInvocation: val.clone(),
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

  @override
  Iterable<Iterable<int>> get hashableParts => when(
        fromSwidiEmptyConst: (val) => val.hashKey.hashableParts,
        fromSwidiConstNumber: (val) => val.hashKey.hashableParts,
        fromSwidiConstString: (val) => val.hashKey.hashableParts,
        fromSwidiConstFunctionInvocation: (val) => val.hashKey.hashableParts,
        fromSwidiConstMap: (val) => val.hashKey.hashableParts,
        fromSwidiConstBoolean: (val) => val.hashKey.hashableParts,
      );

  @override
  SwidiConst clone() => SwidiConst._clone(
        swidiConst: this,
      );
}
