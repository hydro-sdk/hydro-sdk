import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiDeclaration.dart';

part 'swidiOptionalParameter.freezed.dart';

@freezed
abstract class SwidiOptionalParameter with _$SwidiOptionalParameter {
  const factory SwidiOptionalParameter({
    @required SwidiDeclaration declaration,
  }) = _$SwidiOptionalParameterCtor;
}
