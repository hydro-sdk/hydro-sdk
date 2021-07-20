import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiLexicalTokensGrammarDefinition.dart';

mixin SwidiIdentifierGrammarDefinition
    on GrammarDefinition, SwidiLexicalTokensGrammarDefinition {
  Parser identifier() => ref1(token, ref0(IDENTIFIER));
}
