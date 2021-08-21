import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';

part 'swidiOptionalParameter.freezed.dart';

@freezed
class SwidiOptionalParameter with _$SwidiOptionalParameter {
  const factory SwidiOptionalParameter({
    required final SwidiDeclaration declaration,
  }) = _$SwidiOptionalParameterCtor;

  factory SwidiOptionalParameter.clone({
    required final SwidiOptionalParameter? swidiOptionalParameter,
    SwidiDeclaration? declaration,
  }) =>
      SwidiOptionalParameter(
        declaration: declaration ??
            SwidiDeclaration.clone(
              swidiDeclaration: swidiOptionalParameter!.declaration,
            ),
      );
}
