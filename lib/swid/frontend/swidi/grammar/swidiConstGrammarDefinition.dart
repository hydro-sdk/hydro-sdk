import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiIdentifierGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiLexicalTokensGrammarDefinition.dart';

mixin SwidiConstGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiIdentifierGrammarDefinition,
        SwidiLexicalTokensGrammarDefinition {
  Parser CONST() => ref0(constNumber) | ref0(constString);

  Parser constNumber() => (ref0(NUMBER));

  Parser constString() =>
      char('@') & char('"') & ref0(STRING_CONTENT_DQ).star() & char('"');

  Parser constNamedParameter() =>
      ref0(identifier) & ref1(token, ':') & ref0(CONST);

  Parser constPositionalParameterList() => (ref0(
        CONST,
      ) &
      (ref1(
                token,
                ",",
              ) &
              ref0(
                CONST,
              ))
          .star());

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

  Parser constParameterList() =>
      (ref0(constPositionalParameterList) &
          ref1(token, ",") &
          ref0(constNamedParameterList)) |
      (ref0(constPositionalParameterList)) |
      (ref0(constNamedParameterList));
}
