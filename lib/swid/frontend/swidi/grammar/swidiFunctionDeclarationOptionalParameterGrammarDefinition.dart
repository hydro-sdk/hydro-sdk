import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';

mixin SwidiFunctionDeclarationOptionalParameterGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiDeclarationGrammarDefinition {
  Parser functionDeclarationOptionalParameterListForm1() =>
      ref1(token, "[") &
      ref0(functionDeclarationOptionalParameter) &
      ref1(token, ",") &
      ref1(token, "]");

  Parser functionDeclarationOptionalParameterListForm2() =>
      ref1(token, "[") &
      ref0(functionDeclarationOptionalParameter) &
      ref0(functionDeclarationOptionalParameterTail).optional() &
      ref1(token, "]");

  Parser functionDeclarationOptionalParameterTail() => (ref1(token, ",") &
      ref0(functionDeclarationOptionalParameter) &
      ref0(functionDeclarationOptionalParameterTail).optional());

  Parser functionDeclarationOptionalParameterListForm3() =>
      ref1(token, "[") &
      ref0(functionDeclarationOptionalParameter) &
      ref0(functionDeclarationOptionalParameterTail).optional() &
      ref1(token, ",") &
      ref1(token, "]");

  Parser functionDeclarationOptionalParameter() =>
      ref0(declarationWithDefaultConstValue) | ref0(simpleDeclaration);
}
