import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstMapLexer.dart';
import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstFunctionInvocationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstNamedParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstNamedParameterListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstNumberLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstParameterListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstPositionalParameterListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstStringLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiIdentifierGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiLexicalTokensGrammarDefinition.dart';

mixin SwidiConstGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiIdentifierGrammarDefinition,
        SwidiLexicalTokensGrammarDefinition
    implements
        IConstFunctionInvocationLexer,
        IConstLexer,
        IConstNamedParameterLexer,
        IConstNamedParameterListLexer,
        IConstNumberLexer,
        IConstParameterListLexer,
        IConstPositionalParameterListLexer,
        IConstStringLexer,
        IConstMapLexer {
  @override
  Parser lexicalConst() =>
      ref0(constNumber) |
      ref0(constString) |
      ref0(constFunctionInvocation) |
      ref0(constMap);

  @override
  Parser constNumber() => (ref0(number));

  @override
  Parser constString() =>
      char('@') & char('"') & ref0(stringContentDq).star() & char('"');

  @override
  Parser constMap() =>
      ref1(token, "{") &
      (ref0(lexicalConst) &
              ref1(token, ":") &
              ref0(lexicalConst) &
              ref1(token, ","))
          .star() &
      ref1(token, "}");

  @override
  Parser constNamedParameter() =>
      ref0(identifier) & ref1(token, ':') & ref0(lexicalConst);

  @override
  Parser constPositionalParameterList() => (ref0(
        lexicalConst,
      ) &
      (ref1(
                token,
                ",",
              ) &
              ref0(
                lexicalConst,
              ))
          .star());

  @override
  Parser constNamedParameterList() => (ref0(
        constNamedParameter,
      ) &
      (ref1(
                token,
                ",",
              ) &
              ref0(
                constNamedParameter,
              ))
          .star());

  @override
  Parser constParameterList() =>
      (ref0(constPositionalParameterList) &
          ref1(token, ",") &
          ref0(constNamedParameterList)) |
      (ref0(constPositionalParameterList)) |
      (ref0(constNamedParameterList));

  @override
  Parser constFunctionInvocation() =>
      ref0(identifier) &
      ref1(token, "(") &
      ref0(constParameterList) &
      ref1(token, ",").optional() &
      ref1(token, ")");
}
