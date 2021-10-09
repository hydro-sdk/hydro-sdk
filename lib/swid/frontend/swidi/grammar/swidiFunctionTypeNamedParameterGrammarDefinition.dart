import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeNamedParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeNamedParameterListForm1Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeNamedParameterListForm2Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeNamedParameterListForm3Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeNamedParameterTailLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSimpleDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';

mixin SwidiFunctionTypeNamedParameterGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiDeclarationGrammarDefinition
    implements
        ISimpleDeclarationLexer,
        IFunctionTypeNamedParameterLexer,
        IFunctionTypeNamedParameterTailLexer,
        IFunctionTypeNamedParameterListForm1Lexer,
        IFunctionTypeNamedParameterListForm2Lexer,
        IFunctionTypeNamedParameterListForm3Lexer {
  @override
  Parser functionTypeNamedParameterListForm1() =>
      ref1(token, "{") &
      ref0(functionTypeNamedParameter) &
      ref1(token, ",") &
      ref1(token, "}");

  @override
  Parser functionTypeNamedParameterListForm2() =>
      ref1(token, "{") &
      ref0(functionTypeNamedParameter) &
      ref0(functionTypeNamedParameterTail).optional() &
      ref1(token, "}");

  @override
  Parser functionTypeNamedParameterTail() => (ref1(token, ",") &
      ref0(functionTypeNamedParameter) &
      ref0(functionTypeNamedParameterTail).optional());

  @override
  Parser functionTypeNamedParameterListForm3() =>
      ref1(token, "{") &
      ref0(functionTypeNamedParameter) &
      ref0(functionTypeNamedParameterTail).optional() &
      ref1(token, ",") &
      ref1(token, "}");

  @override
  Parser functionTypeNamedParameter() => ref0(type) & ref0(identifier);
}
