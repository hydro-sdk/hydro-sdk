import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';

part 'swidiPositionalParameter.freezed.dart';

@freezed
class SwidiPositionalParameter with _$SwidiPositionalParameter {
  const factory SwidiPositionalParameter({
    required final SwidiDeclaration declaration,
  }) = _$SwidiPositionalParameterCtor;

  factory SwidiPositionalParameter.clone({
    required final SwidiPositionalParameter swidiPositionalParameter,
    SwidiDeclaration? declaration,
  }) =>
      SwidiPositionalParameter(
        declaration: declaration ??
            SwidiDeclaration.clone(
              swidiDeclaration: swidiPositionalParameter.declaration,
            ),
      );
}
