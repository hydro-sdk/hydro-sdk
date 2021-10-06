import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterListForm1Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterListForm2Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterListForm3Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterTailLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSimpleDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';

mixin SwidiFunctionDeclarationNamedParameterGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiDeclarationGrammarDefinition
    implements
        ISimpleDeclarationLexer,
        IFunctionDeclarationNamedParameterLexer,
        IFunctionDeclarationNamedParameterTailLexer,
        IFunctionDeclarationNamedParameterListForm1Lexer,
        IFunctionDeclarationNamedParameterListForm2Lexer,
        IFunctionDeclarationNamedParameterListForm3Lexer {
  @override
  Parser functionDeclarationNamedParameterListForm1() =>
      ref1(token, "{") &
      ref0(functionDeclarationNamedParameter) &
      ref1(token, ",") &
      ref1(token, "}");

  @override
  Parser functionDeclarationNamedParameterListForm2() =>
      ref1(token, "{") &
      ref0(functionDeclarationNamedParameter) &
      ref0(functionDeclarationNamedParameterTail).optional() &
      ref1(token, "}");

  @override
  Parser functionDeclarationNamedParameterTail() => (ref1(token, ",") &
      ref0(functionDeclarationNamedParameter) &
      ref0(functionDeclarationNamedParameterTail).optional());

  @override
  Parser functionDeclarationNamedParameterListForm3() =>
      ref1(token, "{") &
      ref0(functionDeclarationNamedParameter) &
      ref0(functionDeclarationNamedParameterTail).optional() &
      ref1(token, ",") &
      ref1(token, "}");

  @override
  Parser functionDeclarationNamedParameter() =>
      ref0(declarationWithDefaultConstValue) | ref0(simpleDeclaration);
}
