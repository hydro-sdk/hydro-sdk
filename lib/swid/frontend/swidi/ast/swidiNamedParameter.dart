import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';

part 'swidiNamedParameter.freezed.dart';

@freezed
abstract class SwidiNamedParameter with _$SwidiNamedParameter {
  const factory SwidiNamedParameter({
    required SwidiDeclaration declaration,
  }) = _$SwidiNamedParameterCtor;

  factory SwidiNamedParameter.clone({
    required SwidiNamedParameter? swidiNamedParameter,
    SwidiDeclaration? declaration,
  }) =>
      SwidiNamedParameter(
        declaration: declaration ??
            SwidiDeclaration.clone(
              swidiDeclaration: swidiNamedParameter!.declaration,
            ),
      );
}
