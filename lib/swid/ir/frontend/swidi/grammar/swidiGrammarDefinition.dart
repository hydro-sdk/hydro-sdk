import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiFunctionGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarTokenizer.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiLexicalTokensGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiWhitespaceGrammarDefinition.dart';

class SwidiGrammarDefinition extends GrammarDefinition
    with
        SwidiWhitespaceGrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiLexicalTokensGrammarDefinition,
        SwidiDeclarationGrammarDefinition,
        SwidiFunctionGrammarDefinition {
  const SwidiGrammarDefinition();

  Parser start() => ref(compilationUnit).end();

  Parser compilationUnit() => ref(topLevelDefinition).star();

  Parser topLevelDefinition() => ref(classDefinition);

  Parser classDefinition() =>
      ref(ABSTRACT).optional() &
      ref(CLASS) &
      ref(identifier) &
      ref(token, "{") &
      ref(functionDeclaration).star() &
      ref(token, "}");
}
