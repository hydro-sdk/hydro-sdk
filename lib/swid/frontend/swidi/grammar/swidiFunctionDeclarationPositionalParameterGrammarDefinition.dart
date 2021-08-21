import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterListForm1Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterListForm2Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterListForm3Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterTailLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';

mixin SwidiFunctionDeclarationPositionalParameterGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiDeclarationGrammarDefinition
    implements
        IFunctionDeclarationPositionalParameterLexer,
        IFunctionDeclarationPositionalParameterTailLexer,
        IFunctionDeclarationPositionalParameterListForm1Lexer,
        IFunctionDeclarationPositionalParameterListForm2Lexer,
        IFunctionDeclarationPositionalParameterListForm3Lexer {
  @override
  Parser functionDeclarationPositionalParameterListForm1() =>
      ref0(functionDeclarationPositionalParameter) & ref1(token, ",");

  @override
  Parser functionDeclarationPositionalParameterListForm2() =>
      ref0(functionDeclarationPositionalParameter) &
      ref0(functionDeclarationPositionalParameterTail).optional();

  @override
  Parser functionDeclarationPositionalParameterTail() => (ref1(token, ",") &
      ref0(functionDeclarationPositionalParameter) &
      ref0(functionDeclarationPositionalParameterTail).optional());

  @override
  Parser functionDeclarationPositionalParameterListForm3() =>
      ref0(functionDeclarationPositionalParameter) &
      ref0(functionDeclarationPositionalParameterTail).optional() &
      ref1(token, ",");

  @override
  Parser functionDeclarationPositionalParameter() => ref0(simpleDeclaration);
}
