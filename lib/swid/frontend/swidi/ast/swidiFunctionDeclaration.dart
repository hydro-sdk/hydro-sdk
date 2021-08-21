import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalParameter.dart';
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
        ICopyable<SwidiFunctionDeclaration,
            $SwidiFunctionDeclarationCopyWith<SwidiFunctionDeclaration>> {
  SwidiFunctionDeclaration._();

  factory SwidiFunctionDeclaration({
    required final String name,
    required final SwidiInterface returnType,
    required final List<SwidiPositionalParameter> positionalParameters,
    required final List<SwidiOptionalParameter> optionalParameters,
    required final List<SwidiNamedParameter> namedParameters,
    required final List<SwidiTypeFormal> typeFormals,
    required final SwidiConst shortHandOverride,
  }) = _$SwidiFunctionDeclarationCtor;

  factory SwidiFunctionDeclaration._clone({
    required final SwidiFunctionDeclaration swidiFunctionDeclaration,
    final String? name,
    final SwidiInterface? returnType,
    final List<SwidiPositionalParameter>? positionalParameters,
    final List<SwidiOptionalParameter>? optionalParameters,
    final List<SwidiNamedParameter>? namedParameters,
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
                    (x) => SwidiPositionalParameter.clone(
                      swidiPositionalParameter: x,
                    ),
                  )
                  .toList(),
            ),
        optionalParameters: optionalParameters ??
            List.from(
              swidiFunctionDeclaration.optionalParameters
                  .map(
                    (x) => SwidiOptionalParameter.clone(
                      swidiOptionalParameter: x,
                    ),
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
                  .map((x) => SwidiTypeFormal.clone(
                        swidiTypeFormal: x,
                      ))
                  .toList(),
            ),
        shortHandOverride: shortHandOverride ??
            swidiFunctionDeclaration.shortHandOverride.clone(),
      );

  @override
  SwidiFunctionDeclaration clone({
    final String? name,
    final SwidiInterface? returnType,
    final List<SwidiPositionalParameter>? positionalParameters,
    final List<SwidiOptionalParameter>? optionalParameters,
    final List<SwidiNamedParameter>? namedParameters,
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
