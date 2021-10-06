import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterListForm1Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterListForm2Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterListForm3Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterTailLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';

mixin SwidiFunctionDeclarationOptionalParameterGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiDeclarationGrammarDefinition
    implements
        IFunctionDeclarationOptionalParameterLexer,
        IFunctionDeclarationOptionalParameterTailLexer,
        IFunctionDeclarationOptionalParameterListForm1Lexer,
        IFunctionDeclarationOptionalParameterListForm2Lexer,
        IFunctionDeclarationOptionalParameterListForm3Lexer {
  @override
  Parser functionDeclarationOptionalParameterListForm1() =>
      ref1(token, "[") &
      ref0(functionDeclarationOptionalParameter) &
      ref1(token, ",") &
      ref1(token, "]");

  @override
  Parser functionDeclarationOptionalParameterListForm2() =>
      ref1(token, "[") &
      ref0(functionDeclarationOptionalParameter) &
      ref0(functionDeclarationOptionalParameterTail).optional() &
      ref1(token, "]");

  @override
  Parser functionDeclarationOptionalParameterTail() => (ref1(token, ",") &
      ref0(functionDeclarationOptionalParameter) &
      ref0(functionDeclarationOptionalParameterTail).optional());

  @override
  Parser functionDeclarationOptionalParameterListForm3() =>
      ref1(token, "[") &
      ref0(functionDeclarationOptionalParameter) &
      ref0(functionDeclarationOptionalParameterTail).optional() &
      ref1(token, ",") &
      ref1(token, "]");

  @override
  Parser functionDeclarationOptionalParameter() =>
      ref0(declarationWithDefaultConstValue) | ref0(simpleDeclaration);
}
