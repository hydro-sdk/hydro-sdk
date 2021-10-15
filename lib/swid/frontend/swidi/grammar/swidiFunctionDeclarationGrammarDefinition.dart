import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationParameterListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iStaticFunctionDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiFunctionDeclarationNamedParameterGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiFunctionDeclarationOptionalParameterGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiFunctionDeclarationPositionalParameterGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';

mixin SwidiFunctionDeclarationGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiDeclarationGrammarDefinition,
        SwidiFunctionDeclarationPositionalParameterGrammarDefinition,
        SwidiFunctionDeclarationOptionalParameterGrammarDefinition,
        SwidiFunctionDeclarationNamedParameterGrammarDefinition
    implements
        IFunctionDeclarationLexer,
        IFunctionDeclarationParameterListLexer,
        IConstLexer,
        IStaticFunctionDeclarationLexer {
  @override
  Parser functionDeclaration() =>
      ref0(returnType) &
      ref0(identifier) &
      ref0(typeFormalListDeclaration).optional() &
      ref0(functionDeclarationParameterList) &
      (ref1(token, "->") & ref0(lexicalConst)).optional() &
      ref1(token, ";");

  @override
  Parser staticFunctionDeclaration() =>
      ref1(token, "static") & ref0(functionDeclaration);

  @override
  Parser functionDeclarationParameterList() =>
      (ref1(token, "(") & ref1(token, ")")) |
      //Positional only
      (ref1(token, "(") &
          ref0(functionDeclarationPositionalParameterListForm1) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionDeclarationPositionalParameterListForm2) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionDeclarationPositionalParameterListForm3) &
          ref1(token, ")")) |
      //Optional only
      (ref1(token, "(") &
          ref0(functionDeclarationOptionalParameterListForm1) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionDeclarationOptionalParameterListForm2) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionDeclarationOptionalParameterListForm3) &
          ref1(token, ")")) |
      //Named only
      (ref1(token, "(") &
          ref0(functionDeclarationNamedParameterListForm1) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionDeclarationNamedParameterListForm2) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionDeclarationNamedParameterListForm3) &
          ref1(token, ")")) |
      //Positional and named
      (ref1(token, "(") &
          ref0(functionDeclarationPositionalParameterListForm1) &
          ref0(functionDeclarationNamedParameterListForm3) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionDeclarationPositionalParameterListForm1) &
          ref0(functionDeclarationNamedParameterListForm2) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionDeclarationPositionalParameterListForm3) &
          ref0(functionDeclarationNamedParameterListForm3) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionDeclarationPositionalParameterListForm3) &
          ref0(functionDeclarationNamedParameterListForm2) &
          ref1(token, ")")) |
      //Positional and  optional
      (ref1(token, "(") &
          ref0(functionDeclarationPositionalParameterListForm1) &
          ref0(functionDeclarationOptionalParameterListForm3) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionDeclarationPositionalParameterListForm1) &
          ref0(functionDeclarationOptionalParameterListForm2) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionDeclarationPositionalParameterListForm3) &
          ref0(functionDeclarationOptionalParameterListForm3) &
          ref1(token, ")")) |
      (ref1(token, "(") &
          ref0(functionDeclarationPositionalParameterListForm3) &
          ref0(functionDeclarationOptionalParameterListForm2) &
          ref1(token, ")"));
}
