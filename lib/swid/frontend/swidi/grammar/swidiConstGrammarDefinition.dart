import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiLexicalTokensGrammarDefinition.dart';

mixin SwidiConstGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiLexicalTokensGrammarDefinition {
  Parser CONST() => ref0(constNumber) | ref0(constString);

  Parser constNumber() => (ref0(NUMBER));

  Parser constString() =>
      char('@') & char('"') & ref0(STRING_CONTENT_DQ).star() & char('"');
}
