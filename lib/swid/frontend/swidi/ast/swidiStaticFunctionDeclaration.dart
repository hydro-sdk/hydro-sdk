import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';

part 'swidiStaticFunctionDeclaration.freezed.dart';

@freezed
class SwidiStaticFunctionDeclaration with _$SwidiStaticFunctionDeclaration {
  const SwidiStaticFunctionDeclaration._();

  const factory SwidiStaticFunctionDeclaration({
    required SwidiFunctionDeclaration functionDeclaration,
  }) = _$SwidiStaticFunctionDeclarationCtor;

  factory SwidiStaticFunctionDeclaration.clone({
    required SwidiStaticFunctionDeclaration swidiStaticFunctionDeclaration,
    SwidiFunctionDeclaration? functionDeclaration,
  }) =>
      SwidiStaticFunctionDeclaration(
        functionDeclaration: functionDeclaration ??
            SwidiFunctionDeclaration.clone(
              swidiFunctionDeclaration:
                  swidiStaticFunctionDeclaration.functionDeclaration,
            ),
      );
}
