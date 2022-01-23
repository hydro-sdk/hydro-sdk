import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiFunctionDeclarationNamedParameter.freezed.dart';

@freezed
class SwidiFunctionDeclarationNamedParameter
    with
        _$SwidiFunctionDeclarationNamedParameter,
        HashKeyMixin<SwidiFunctionDeclarationNamedParameter>,
        HashComparableMixin<SwidiFunctionDeclarationNamedParameter>
    implements
        ICopyable<
            SwidiFunctionDeclarationNamedParameter,
            $SwidiFunctionDeclarationNamedParameterCopyWith<
                SwidiFunctionDeclarationNamedParameter>> {
  SwidiFunctionDeclarationNamedParameter._();

  factory SwidiFunctionDeclarationNamedParameter({
    required final SwidiDeclaration declaration,
  }) = _$SwidiNamedParameterCtor;

  factory SwidiFunctionDeclarationNamedParameter._clone({
    required final SwidiFunctionDeclarationNamedParameter swidiNamedParameter,
    final SwidiDeclaration? declaration,
  }) =>
      SwidiFunctionDeclarationNamedParameter(
        declaration: declaration ?? swidiNamedParameter.declaration.clone(),
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* declaration.hashKey.hashableParts;
  }

  @override
  SwidiFunctionDeclarationNamedParameter clone({
    final SwidiDeclaration? declaration,
  }) =>
      SwidiFunctionDeclarationNamedParameter._clone(
        swidiNamedParameter: this,
        declaration: declaration,
      );
}
