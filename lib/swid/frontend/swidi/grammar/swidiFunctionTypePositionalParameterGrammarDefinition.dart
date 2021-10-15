import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypePositionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypePositionalParameterListForm1Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypePositionalParameterListForm2Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypePositionalParameterListForm3Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypePositionalParameterTailLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';

mixin SwidiFunctionTypePositionalParameterGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiDeclarationGrammarDefinition
    implements
        IFunctionTypePositionalParameterLexer,
        IFunctionTypePositionalParameterTailLexer,
        IFunctionTypePositionalParameterListForm1Lexer,
        IFunctionTypePositionalParameterListForm2Lexer,
        IFunctionTypePositionalParameterListForm3Lexer {
  @override
  Parser functionTypePositionalParameterListForm1() =>
      ref0(functionTypePositionalParameter) & ref1(token, ",");

  @override
  Parser functionTypePositionalParameterListForm2() =>
      ref0(functionTypePositionalParameter) &
      ref0(functionTypePositionalParameterTail).optional();

  @override
  Parser functionTypePositionalParameterTail() => (ref1(token, ",") &
      ref0(functionTypePositionalParameter) &
      ref0(functionTypePositionalParameterTail).optional());

  @override
  Parser functionTypePositionalParameterListForm3() =>
      ref0(functionTypePositionalParameter) &
      ref0(functionTypePositionalParameterTail).optional() &
      ref1(token, ",");

  @override
  Parser functionTypePositionalParameter() => ref0(type);
}
