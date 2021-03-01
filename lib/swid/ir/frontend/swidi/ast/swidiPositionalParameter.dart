import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiDeclaration.dart';

part 'swidiPositionalParameter.freezed.dart';

@freezed
abstract class SwidiPositionalParameter with _$SwidiPositionalParameter {
  const factory SwidiPositionalParameter({
    @required SwidiDeclaration declaration,
  }) = _$SwidiPositionalParameterCtor;
}
