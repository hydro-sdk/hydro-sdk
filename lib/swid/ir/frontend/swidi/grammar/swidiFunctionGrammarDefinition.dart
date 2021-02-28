import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiFunctionDeclarationPositionalParameterGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarTokenizer.dart';

mixin SwidiFunctionGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiDeclarationGrammarDefinition,
        SwidiFunctionDeclarationPositionalParamterGrammarDefinition {
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
}
