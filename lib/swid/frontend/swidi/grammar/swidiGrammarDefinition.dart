import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiFunctionDeclarationNamedParameterGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiFunctionDeclarationOptionalParameterGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiFunctionDeclarationPositionalParameterGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiFunctionGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiLexicalTokensGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiWhitespaceGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';

class SwidiGrammarDefinition extends GrammarDefinition
    with
        SwidiWhitespaceGrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiLexicalTokensGrammarDefinition,
        SwidiConstGrammarDefinition,
        SwidiDeclarationGrammarDefinition,
        SwidiFunctionDeclarationPositionalParameterGrammarDefinition,
        SwidiFunctionDeclarationOptionalParameterGrammarDefinition,
        SwidiFunctionDeclarationNamedParameterGrammarDefinition,
        SwidiFunctionGrammarDefinition {
  const SwidiGrammarDefinition();

  Parser start() => ref(compilationUnit).end();

  Parser compilationUnit() => ref(topLevelDefinition).star();

  Parser topLevelDefinition() => ref(classDefinition);

  Parser classDefinition() =>
      ref(ABSTRACT).optional() &
      ref(CLASS) &
      ref(libraryScopePrefix).optional() &
      ref(identifier) &
      ref(token, "{") &
      ref(functionDeclaration).star() &
      ref(token, "}");
}
