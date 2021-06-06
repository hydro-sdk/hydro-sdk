import 'package:freezed_annotation/freezed_annotation.dart';


import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';

part 'swidiPositionalParameter.freezed.dart';

@freezed
class SwidiPositionalParameter with _$SwidiPositionalParameter {
  const factory SwidiPositionalParameter({
    required SwidiDeclaration declaration,
  }) = _$SwidiPositionalParameterCtor;

  factory SwidiPositionalParameter.clone({
    required SwidiPositionalParameter swidiPositionalParameter,
    SwidiDeclaration? declaration,
  }) =>
      SwidiPositionalParameter(
        declaration: declaration ??
            SwidiDeclaration.clone(
              swidiDeclaration: swidiPositionalParameter.declaration,
            ),
      );
}
