import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/iShortHandOverride.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/iTypeFormals.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationPositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeFormal.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiFunctionDeclaration.freezed.dart';

@freezed
class SwidiFunctionDeclaration
    with
        _$SwidiFunctionDeclaration,
        HashKeyMixin<SwidiFunctionDeclaration>,
        HashComparableMixin<SwidiFunctionDeclaration>
    implements
        ITypeFormals<SwidiFunctionDeclaration>,
        ICopyable<SwidiFunctionDeclaration,
            $SwidiFunctionDeclarationCopyWith<SwidiFunctionDeclaration>>,
        IShortHandOverride<SwidiFunctionDeclaration> {
  SwidiFunctionDeclaration._();

  factory SwidiFunctionDeclaration({
    required final String name,
    required final SwidiType returnType,
    required final List<SwidiFunctionDeclarationPositionalParameter>
        positionalParameters,
    required final List<SwidiFunctionDeclarationOptionalParameter>
        optionalParameters,
    required final List<SwidiFunctionDeclarationNamedParameter> namedParameters,
    required final List<SwidiTypeFormal> typeFormals,
    required final SwidiConst shortHandOverride,
  }) = _$SwidiFunctionDeclarationCtor;

  factory SwidiFunctionDeclaration._clone({
    required final SwidiFunctionDeclaration swidiFunctionDeclaration,
    final String? name,
    final SwidiType? returnType,
    final List<SwidiFunctionDeclarationPositionalParameter>?
        positionalParameters,
    final List<SwidiFunctionDeclarationOptionalParameter>? optionalParameters,
    final List<SwidiFunctionDeclarationNamedParameter>? namedParameters,
    final List<SwidiTypeFormal>? typeFormals,
    final SwidiConst? shortHandOverride,
  }) =>
      SwidiFunctionDeclaration(
        name: name ?? swidiFunctionDeclaration.name,
        returnType: returnType ?? swidiFunctionDeclaration.returnType.clone(),
        positionalParameters: positionalParameters ??
            List.from(
              swidiFunctionDeclaration.positionalParameters
                  .map(
                    (x) => x.clone(),
                  )
                  .toList(),
            ),
        optionalParameters: optionalParameters ??
            List.from(
              swidiFunctionDeclaration.optionalParameters
                  .map(
                    (x) => x.clone(),
                  )
                  .toList(),
            ),
        namedParameters: namedParameters ??
            List.from(
              swidiFunctionDeclaration.namedParameters
                  .map(
                    (x) => x.clone(),
                  )
                  .toList(),
            ),
        typeFormals: typeFormals ??
            List.from(
              swidiFunctionDeclaration.typeFormals
                  .map(
                    (x) => x.clone(),
                  )
                  .toList(),
            ),
        shortHandOverride: shortHandOverride ??
            swidiFunctionDeclaration.shortHandOverride.clone(),
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* name.hashableParts;
    yield* returnType.hashKey.hashableParts;
    yield* positionalParameters.hashableParts;
    yield* optionalParameters.hashableParts;
    yield* namedParameters.hashableParts;
    yield* typeFormals.hashableParts;
    yield* shortHandOverride.hashKey.hashableParts;
  }

  @override
  SwidiFunctionDeclaration clone({
    final String? name,
    final SwidiType? returnType,
    final List<SwidiFunctionDeclarationPositionalParameter>?
        positionalParameters,
    final List<SwidiFunctionDeclarationOptionalParameter>? optionalParameters,
    final List<SwidiFunctionDeclarationNamedParameter>? namedParameters,
    final List<SwidiTypeFormal>? typeFormals,
    final SwidiConst? shortHandOverride,
  }) =>
      SwidiFunctionDeclaration._clone(
        swidiFunctionDeclaration: this,
        name: name,
        returnType: returnType,
        positionalParameters: positionalParameters,
        optionalParameters: optionalParameters,
        namedParameters: namedParameters,
        typeFormals: typeFormals,
        shortHandOverride: shortHandOverride,
      );
}
