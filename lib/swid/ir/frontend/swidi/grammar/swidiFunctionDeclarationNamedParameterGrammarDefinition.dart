import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarTokenizer.dart';

mixin SwidiFunctionDeclarationNamedParameterGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiDeclarationGrammarDefinition {
  Parser functionDeclarationNamedParameterListForm1() =>
      ref(token, "{") &
      ref(functionDeclarationNamedParameter) &
      ref(token, ",") &
      ref(token, "}");

  Parser functionDeclarationNamedParameterListForm2() =>
      ref(token, "{") &
      ref(functionDeclarationNamedParameter) &
      ref(functionDeclarationNamedParameterTail).optional() &
      ref(token, "}");

  Parser functionDeclarationNamedParameterTail() => (ref(token, ",") &
      ref(functionDeclarationNamedParameter) &
      ref(functionDeclarationNamedParameterTail).optional());

  Parser functionDeclarationNamedParameterListForm3() =>
      ref(token, "{") &
      ref(functionDeclarationNamedParameter) &
      ref(functionDeclarationNamedParameterTail).optional() &
      ref(token, ",") &
      ref(token, "}");

  Parser functionDeclarationNamedParameter() => ref(simpleDeclaration);
}
