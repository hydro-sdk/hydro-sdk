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
        IConstStringLexer {
  @override
  Parser lexConst() =>
      ref0(lexConstNumber) |
      ref0(lexConstString) |
      ref0(lexConstFunctionInvocation);

  @override
  Parser lexConstNumber() => (ref0(lexNumber));

  @override
  Parser lexConstString() =>
      char('@') & char('"') & ref0(lexStringContentDq).star() & char('"');

  @override
  Parser lexConstNamedParameter() =>
      ref0(lexIdentifier) & ref1(token, ':') & ref0(lexConst);

  @override
  Parser lexConstPositionalParameterList() => (ref0(
        lexConst,
      ) &
      (ref1(
                token,
                ",",
              ) &
              ref0(
                lexConst,
              ))
          .star());

  @override
  Parser lexConstNamedParameterList() => (ref0(
        lexConstNamedParameter,
      ) &
      (ref1(
                token,
                ",",
              ) &
              ref0(
                lexConstNamedParameter,
              ))
          .star());

  @override
  Parser lexConstParameterList() =>
      (ref0(lexConstPositionalParameterList) &
          ref1(token, ",") &
          ref0(lexConstNamedParameterList)) |
      (ref0(lexConstPositionalParameterList)) |
      (ref0(lexConstNamedParameterList));

  @override
  Parser lexConstFunctionInvocation() =>
      ref0(lexIdentifier) &
      ref1(token, "(") &
      ref0(lexConstParameterList) &
      ref1(token, ",").optional() &
      ref1(token, ")");
}
