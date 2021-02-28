import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarTokenizer.dart';
import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

mixin SwidiFunctionGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiDeclarationGrammarDefinition {
  Parser functionDeclaration() =>
      ref(returnType) &
      ref(identifier) &
      ref(functionDeclarationParameterList) &
      ref(token, ";");

  Parser functionDeclarationParameterList() =>
      (ref(token, "(") & ref(token, ")")) |
      (ref(token, "(") &
          ref(functionDeclarationPositionalParameterListForm1) &
          ref(token, ")")) |
      (ref(token, "(") &
          ref(functionDeclarationPositionalParameterListForm2) &
          ref(token, ")")) |
      (ref(token, "(") &
          ref(functionDeclarationPositionalParameterListForm3) &
          ref(token, ")"));

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
