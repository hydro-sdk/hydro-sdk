import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';

part 'swidiNamedParameter.freezed.dart';

@freezed
class SwidiNamedParameter with _$SwidiNamedParameter {
  const factory SwidiNamedParameter({
    required final SwidiDeclaration declaration,
  }) = _$SwidiNamedParameterCtor;

  factory SwidiNamedParameter.clone({
    required final SwidiNamedParameter? swidiNamedParameter,
    SwidiDeclaration? declaration,
  }) =>
      SwidiNamedParameter(
        declaration: declaration ??
            SwidiDeclaration.clone(
              swidiDeclaration: swidiNamedParameter!.declaration,
            ),
      );
}
