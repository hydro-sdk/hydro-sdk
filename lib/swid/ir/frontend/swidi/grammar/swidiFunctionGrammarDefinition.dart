import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiFunctionDeclarationPositionalParameterGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiFunctionDeclarationOptionalParameterGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarTokenizer.dart';

mixin SwidiFunctionGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiDeclarationGrammarDefinition,
        SwidiFunctionDeclarationPositionalParameterGrammarDefinition,
        SwidiFunctionDeclarationOptionalParameterGrammarDefinition {
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
          ref(token, ")")) |
      (ref(token, "(") &
          ref(functionDeclarationOptionalParameterListForm1) &
          ref(token, ")")) |
      (ref(token, "(") &
          ref(functionDeclarationOptionalParameterListForm2) &
          ref(token, ")")) |
      (ref(token, "(") &
          ref(functionDeclarationOptionalParameterListForm3) &
          ref(token, ")"));
}
