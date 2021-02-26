import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationParameterListParser.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';

mixin SwidiFunctionDeclarationParser
    on
        SwidiGrammarDefinition,
        SwidiSimpleDeclarationParser,
        SwidiFunctionDeclarationParameterListParser {
  Parser<SwidiFunctionDeclaration> functionDeclaration() =>
      super.functionDeclaration().map((x) {
        return SwidiFunctionDeclaration(
            name: x[1].input,
            returnType: x[0].input,
            positionalParameters: [
              ...List.from(x)
                  .where((e) => e != null)
                  .whereType<SwidiDeclaration>()
                  .toList(),
              ...((({List<List<dynamic>> nestedTokens}) =>
                          nestedTokens.isNotEmpty
                              ? nestedTokens.reduce(
                                  (value, element) => [...value, ...element])
                              : [])(
                      nestedTokens: List.from(x)
                          .where((e) => e != null)
                          .whereType<List>()
                          .where((e) => e != null)
                          .toList())
                  .where((e) => e != null)
                  .whereType<SwidiDeclaration>()
                  .toList())
            ]);
      });
}
