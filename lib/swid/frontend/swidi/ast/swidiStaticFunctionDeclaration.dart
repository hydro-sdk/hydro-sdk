import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiStaticFunctionDeclaration.freezed.dart';

@freezed
class SwidiStaticFunctionDeclaration
    with
        _$SwidiStaticFunctionDeclaration,
        HashKeyMixin<SwidiStaticFunctionDeclaration>,
        HashComparableMixin<SwidiStaticFunctionDeclaration>
    implements
        ICopyable<
            SwidiStaticFunctionDeclaration,
            $SwidiStaticFunctionDeclarationCopyWith<
                SwidiStaticFunctionDeclaration>> {
  SwidiStaticFunctionDeclaration._();

  factory SwidiStaticFunctionDeclaration({
    required final SwidiFunctionDeclaration functionDeclaration,
  }) = _$SwidiStaticFunctionDeclarationCtor;

  factory SwidiStaticFunctionDeclaration._clone({
    required final SwidiStaticFunctionDeclaration
        swidiStaticFunctionDeclaration,
    final SwidiFunctionDeclaration? functionDeclaration,
  }) =>
      SwidiStaticFunctionDeclaration(
        functionDeclaration: functionDeclaration ??
            swidiStaticFunctionDeclaration.functionDeclaration.clone(),
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* functionDeclaration.hashKey.hashableParts;
  }

  @override
  SwidiStaticFunctionDeclaration clone({
    final SwidiFunctionDeclaration? functionDeclaration,
  }) =>
      SwidiStaticFunctionDeclaration._clone(
        swidiStaticFunctionDeclaration: this,
        functionDeclaration: functionDeclaration,
      );
}
