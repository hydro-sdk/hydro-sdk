import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiFunctionDeclarationOptionalParameter.freezed.dart';

@freezed
class SwidiFunctionDeclarationOptionalParameter
    with
        _$SwidiFunctionDeclarationOptionalParameter,
        HashKeyMixin<SwidiFunctionDeclarationOptionalParameter>,
        HashComparableMixin<SwidiFunctionDeclarationOptionalParameter>
    implements
        ICopyable<
            SwidiFunctionDeclarationOptionalParameter,
            $SwidiFunctionDeclarationOptionalParameterCopyWith<
                SwidiFunctionDeclarationOptionalParameter>> {
  SwidiFunctionDeclarationOptionalParameter._();

  factory SwidiFunctionDeclarationOptionalParameter({
    required final SwidiDeclaration declaration,
  }) = _$SwidiOptionalParameterCtor;

  factory SwidiFunctionDeclarationOptionalParameter._clone({
    required final SwidiFunctionDeclarationOptionalParameter
        swidiOptionalParameter,
    final SwidiDeclaration? declaration,
  }) =>
      SwidiFunctionDeclarationOptionalParameter(
        declaration: declaration ?? swidiOptionalParameter.declaration.clone(),
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* declaration.hashKey.hashableParts;
  }

  @override
  SwidiFunctionDeclarationOptionalParameter clone({
    final SwidiDeclaration? declaration,
  }) =>
      SwidiFunctionDeclarationOptionalParameter._clone(
        swidiOptionalParameter: this,
        declaration: declaration,
      );
}
