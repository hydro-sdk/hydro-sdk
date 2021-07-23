import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiFunctionDeclarationNamedParameterGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiFunctionDeclarationOptionalParameterGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiFunctionDeclarationPositionalParameterGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiFunctionGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiIdentifierGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiLexicalTokensGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiWhitespaceGrammarDefinition.dart';

class SwidiGrammarDefinition extends GrammarDefinition
    with
        SwidiWhitespaceGrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiLexicalTokensGrammarDefinition,
        SwidiIdentifierGrammarDefinition,
        SwidiConstGrammarDefinition,
        SwidiDeclarationGrammarDefinition,
        SwidiFunctionDeclarationPositionalParameterGrammarDefinition,
        SwidiFunctionDeclarationOptionalParameterGrammarDefinition,
        SwidiFunctionDeclarationNamedParameterGrammarDefinition,
        SwidiFunctionGrammarDefinition {
  const SwidiGrammarDefinition();

  Parser start() => ref0(compilationUnit).end();

  Parser compilationUnit() => ref0(topLevelDefinition).star();

  Parser topLevelDefinition() => ref0(classDefinition);

  Parser classDefinition() =>
      ref0(lexAbstract).optional() &
      ref0(lexClass) &
      ref0(libraryScopePrefix).optional() &
      ref0(lexIdentifier) &
      ref1(token, "{") &
      ref0(functionDeclaration).star() &
      ref1(token, "}");
}
