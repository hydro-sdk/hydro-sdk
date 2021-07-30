import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeFormal.dart';

part 'swidiFunctionDeclaration.freezed.dart';

@freezed
class SwidiFunctionDeclaration with _$SwidiFunctionDeclaration {
  const factory SwidiFunctionDeclaration({
    required String name,
    required SwidiInterface returnType,
    required List<SwidiPositionalParameter> positionalParameters,
    required List<SwidiOptionalParameter> optionalParameters,
    required List<SwidiNamedParameter> namedParameters,
    required List<SwidiTypeFormal> typeFormals,
    required SwidiConst shortHandOverride,
  }) = _$SwidiFunctionDeclarationCtor;

  factory SwidiFunctionDeclaration.clone({
    required SwidiFunctionDeclaration swidiFunctionDeclaration,
    String? name,
    SwidiInterface? returnType,
    List<SwidiPositionalParameter>? positionalParameters,
    List<SwidiOptionalParameter>? optionalParameters,
    List<SwidiNamedParameter>? namedParameters,
    List<SwidiTypeFormal>? typeFormals,
    SwidiConst? shortHandOverride,
  }) =>
      SwidiFunctionDeclaration(
        name: name ?? swidiFunctionDeclaration.name,
        returnType: returnType ??
            SwidiInterface.clone(
              swidiInterface: swidiFunctionDeclaration.returnType,
            ),
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
                    (x) => SwidiNamedParameter.clone(
                      swidiNamedParameter: x,
                    ),
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
            SwidiConst.clone(
              swidiConst: swidiFunctionDeclaration.shortHandOverride,
            ),
      );
}
