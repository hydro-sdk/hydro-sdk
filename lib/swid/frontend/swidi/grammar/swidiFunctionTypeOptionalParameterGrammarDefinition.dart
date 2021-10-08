import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeOptionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeOptionalParameterListForm1Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeOptionalParameterListForm2Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeOptionalParameterListForm3Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeOptionalParameterTailLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';

mixin SwidiFunctionTypeOptionalParameterGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiDeclarationGrammarDefinition
    implements
        IFunctionTypeOptionalParameterLexer,
        IFunctionTypeOptionalParameterTailLexer,
        IFunctionTypeOptionalParameterListForm1Lexer,
        IFunctionTypeOptionalParameterListForm2Lexer,
        IFunctionTypeOptionalParameterListForm3Lexer {
  @override
  Parser functionTypeOptionalParameterListForm1() =>
      ref1(token, "[") &
      ref0(functionTypeOptionalParameter) &
      ref1(token, ",") &
      ref1(token, "]");

  @override
  Parser functionTypeOptionalParameterListForm2() =>
      ref1(token, "[") &
      ref0(functionTypeOptionalParameter) &
      ref0(functionTypeOptionalParameterTail).optional() &
      ref1(token, "]");

  @override
  Parser functionTypeOptionalParameterTail() => (ref1(token, ",") &
      ref0(functionTypeOptionalParameter) &
      ref0(functionTypeOptionalParameterTail).optional());

  @override
  Parser functionTypeOptionalParameterListForm3() =>
      ref1(token, "[") &
      ref0(functionTypeOptionalParameter) &
      ref0(functionTypeOptionalParameterTail).optional() &
      ref1(token, ",") &
      ref1(token, "]");

  @override
  Parser functionTypeOptionalParameter() => ref0(type);
}
