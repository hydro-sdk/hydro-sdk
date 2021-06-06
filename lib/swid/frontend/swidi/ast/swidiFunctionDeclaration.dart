import 'package:freezed_annotation/freezed_annotation.dart';


import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalParameter.dart';

part 'swidiFunctionDeclaration.freezed.dart';

@freezed
class SwidiFunctionDeclaration with _$SwidiFunctionDeclaration {
  const factory SwidiFunctionDeclaration({
    required String name,
    required SwidiInterface returnType,
    required List<SwidiPositionalParameter> positionalParameters,
    required List<SwidiOptionalParameter> optionalParameters,
    required List<SwidiNamedParameter> namedParameters,
  }) = _$SwidiFunctionDeclarationCtor;

  factory SwidiFunctionDeclaration.clone({
    required SwidiFunctionDeclaration swidiFunctionDeclaration,
    String? name,
    SwidiInterface? returnType,
    List<SwidiPositionalParameter>? positionalParameters,
    List<SwidiOptionalParameter>? optionalParameters,
    List<SwidiNamedParameter>? namedParameters,
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
      );
}
