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
      ref(functionDeclarationPositionalParameter) & ref(token, ",");

  Parser functionDeclarationPositionalParameterListForm2() =>
      ref(functionDeclarationPositionalParameter) &
      ref(functionDeclarationPositionalParameterTail).optional();

  Parser functionDeclarationPositionalParameterTail() => (ref(token, ",") &
      ref(functionDeclarationPositionalParameter) &
      ref(functionDeclarationPositionalParameterTail).optional());

  Parser functionDeclarationPositionalParameterListForm3() =>
      ref(functionDeclarationPositionalParameter) &
      ref(functionDeclarationPositionalParameterTail).optional() &
      ref(token, ",");

  Parser functionDeclarationPositionalParameter() => ref(simpleDeclaration);
}
