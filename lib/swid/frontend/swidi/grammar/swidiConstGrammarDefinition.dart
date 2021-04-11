import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiLexicalTokensGrammarDefinition.dart';
import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

mixin SwidiConstGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiLexicalTokensGrammarDefinition {
  Parser CONST() => (ref(constNumber));

  Parser constNumber() => (ref(NUMBER));
}
