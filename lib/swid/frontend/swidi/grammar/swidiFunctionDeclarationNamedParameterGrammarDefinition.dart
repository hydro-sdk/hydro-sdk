import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';

mixin SwidiFunctionDeclarationNamedParameterGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiDeclarationGrammarDefinition {
  Parser functionDeclarationNamedParameterListForm1() =>
      ref1(token, "{") &
      ref0(functionDeclarationNamedParameter) &
      ref1(token, ",") &
      ref1(token, "}");

  Parser functionDeclarationNamedParameterListForm2() =>
      ref1(token, "{") &
      ref0(functionDeclarationNamedParameter) &
      ref0(functionDeclarationNamedParameterTail).optional() &
      ref1(token, "}");

  Parser functionDeclarationNamedParameterTail() => (ref1(token, ",") &
      ref0(functionDeclarationNamedParameter) &
      ref0(functionDeclarationNamedParameterTail).optional());

  Parser functionDeclarationNamedParameterListForm3() =>
      ref1(token, "{") &
      ref0(functionDeclarationNamedParameter) &
      ref0(functionDeclarationNamedParameterTail).optional() &
      ref1(token, ",") &
      ref1(token, "}");

  Parser functionDeclarationNamedParameter() =>
      ref0(declarationWithDefaultConstValue) | ref0(simpleDeclaration);
}
