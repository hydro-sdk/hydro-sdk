import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNumber.dart';
import 'package:meta/meta.dart';

part 'swidiConst.freezed.dart';

@freezed
abstract class SwidiConst with _$SwidiConst {
  const factory SwidiConst.fromSwidiConstNumber({
    @required SwidiConstNumber swidiConstNumber,
  }) = _$FromSwidiConstNumber;
}
