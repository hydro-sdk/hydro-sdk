import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiFunctionDeclarationPositionalParameter.freezed.dart';

@freezed
class SwidiFunctionDeclarationPositionalParameter
    with
        _$SwidiFunctionDeclarationPositionalParameter,
        HashKeyMixin<SwidiFunctionDeclarationPositionalParameter>,
        HashComparableMixin<SwidiFunctionDeclarationPositionalParameter>
    implements
        ICopyable<
            SwidiFunctionDeclarationPositionalParameter,
            $SwidiFunctionDeclarationPositionalParameterCopyWith<
                SwidiFunctionDeclarationPositionalParameter>> {
  SwidiFunctionDeclarationPositionalParameter._();

  factory SwidiFunctionDeclarationPositionalParameter({
    required final SwidiDeclaration declaration,
  }) = _$SwidiPositionalParameterCtor;

  factory SwidiFunctionDeclarationPositionalParameter._clone({
    required final SwidiFunctionDeclarationPositionalParameter
        swidiPositionalParameter,
    final SwidiDeclaration? declaration,
  }) =>
      SwidiFunctionDeclarationPositionalParameter(
        declaration:
            declaration ?? swidiPositionalParameter.declaration.clone(),
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* declaration.hashKey.hashableParts;
  }

  @override
  SwidiFunctionDeclarationPositionalParameter clone({
    final SwidiDeclaration? declaration,
  }) =>
      SwidiFunctionDeclarationPositionalParameter._clone(
        swidiPositionalParameter: this,
        declaration: declaration,
      );
}
