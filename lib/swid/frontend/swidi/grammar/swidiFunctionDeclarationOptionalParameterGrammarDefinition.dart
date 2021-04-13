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
      ref(token, "[") &
      ref(functionDeclarationOptionalParameter) &
      ref(token, ",") &
      ref(token, "]");

  Parser functionDeclarationOptionalParameterListForm2() =>
      ref(token, "[") &
      ref(functionDeclarationOptionalParameter) &
      ref(functionDeclarationOptionalParameterTail).optional() &
      ref(token, "]");

  Parser functionDeclarationOptionalParameterTail() => (ref(token, ",") &
      ref(functionDeclarationOptionalParameter) &
      ref(functionDeclarationOptionalParameterTail).optional());

  Parser functionDeclarationOptionalParameterListForm3() =>
      ref(token, "[") &
      ref(functionDeclarationOptionalParameter) &
      ref(functionDeclarationOptionalParameterTail).optional() &
      ref(token, ",") &
      ref(token, "]");

  Parser functionDeclarationOptionalParameter() =>
      ref(declarationWithDefaultConstValue) | ref(simpleDeclaration);
}
