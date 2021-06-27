import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';

mixin SwidiFunctionDeclarationPositionalParameterGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiDeclarationGrammarDefinition {
  Parser functionDeclarationPositionalParameterListForm1() =>
      ref0(functionDeclarationPositionalParameter) & ref1(token, ",");

  Parser functionDeclarationPositionalParameterListForm2() =>
      ref0(functionDeclarationPositionalParameter) &
      ref0(functionDeclarationPositionalParameterTail).optional();

  Parser functionDeclarationPositionalParameterTail() => (ref1(token, ",") &
      ref0(functionDeclarationPositionalParameter) &
      ref0(functionDeclarationPositionalParameterTail).optional());

  Parser functionDeclarationPositionalParameterListForm3() =>
      ref0(functionDeclarationPositionalParameter) &
      ref0(functionDeclarationPositionalParameterTail).optional() &
      ref1(token, ",");

  Parser functionDeclarationPositionalParameter() => ref0(simpleDeclaration);
}
