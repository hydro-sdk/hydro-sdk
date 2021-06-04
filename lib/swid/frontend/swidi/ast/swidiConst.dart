import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNumber.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';

part 'swidiConst.freezed.dart';

@freezed
abstract class SwidiConst with _$SwidiConst {
  factory SwidiConst.clone({
    required SwidiConst swidiConst,
  }) =>
      swidiConst.when(
        fromSwidiEmptyConst: (val) => SwidiConst.fromSwidiEmptyConst(
            swidiEmptyConst: const SwidiEmptyConst()),
        fromSwidiConstNumber: (val) => SwidiConst.fromSwidiConstNumber(
          swidiConstNumber: SwidiConstNumber.clone(
            swidiConstNumber: val,
          ),
        ),
      );

  const factory SwidiConst.fromSwidiEmptyConst({
    required SwidiEmptyConst swidiEmptyConst,
  }) = _$FromSwidiEmptyConst;

  const factory SwidiConst.fromSwidiConstNumber({
    required SwidiConstNumber swidiConstNumber,
  }) = _$FromSwidiConstNumber;
}
