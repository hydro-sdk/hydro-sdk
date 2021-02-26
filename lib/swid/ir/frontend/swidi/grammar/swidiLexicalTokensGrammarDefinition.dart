import 'package:petitparser/core.dart';
import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiWhitespaceGrammarDefinition.dart';

mixin SwidiLexicalTokensGrammarDefinition on GrammarDefinition, SwidiWhitespaceGrammarDefinition {
  Parser IDENTIFIER() => ref(IDENTIFIER_START) & ref(IDENTIFIER_PART).star();

  Parser HEX_NUMBER() =>
      string('0x') & ref(HEX_DIGIT).plus() |
      string('0X') & ref(HEX_DIGIT).plus();

  Parser NUMBER() =>
      ref(DIGIT).plus() &
          ref(NUMBER_OPT_FRACTIONAL_PART) &
          ref(EXPONENT).optional() &
          ref(NUMBER_OPT_ILLEGAL_END) |
      char('.') &
          ref(DIGIT).plus() &
          ref(EXPONENT).optional() &
          ref(NUMBER_OPT_ILLEGAL_END);

  Parser NUMBER_OPT_FRACTIONAL_PART() =>
      char('.') & ref(DIGIT).plus() | epsilon();

  Parser NUMBER_OPT_ILLEGAL_END() => epsilon();

  Parser HEX_DIGIT() => pattern('0-9a-fA-F');

  Parser IDENTIFIER_START() => ref(IDENTIFIER_START_NO_DOLLAR) | char('\$');

  Parser IDENTIFIER_START_NO_DOLLAR() => ref(LETTER) | char('_');

  Parser IDENTIFIER_PART() => ref(IDENTIFIER_START) | ref(DIGIT);

  Parser LETTER() => letter();

  Parser DIGIT() => digit();

  Parser EXPONENT() =>
      pattern('eE') & pattern('+-').optional() & ref(DIGIT).plus();

  Parser STRING() =>
      char('@').optional() & ref(MULTI_LINE_STRING) | ref(SINGLE_LINE_STRING);

  Parser MULTI_LINE_STRING() =>
      string('"""') & any().starLazy(string('"""')) & string('"""') |
      string("'''") & any().starLazy(string("'''")) & string("'''");

  Parser SINGLE_LINE_STRING() =>
      char('"') & ref(STRING_CONTENT_DQ).star() & char('"') |
      char("'") & ref(STRING_CONTENT_SQ).star() & char("'") |
      string('@"') & pattern('^"\n\r').star() & char('"') |
      string("@'") & pattern("^'\n\r").star() & char("'");

  Parser STRING_CONTENT_DQ() =>
      pattern('^\\"\n\r') | char('\\') & pattern('\n\r');

  Parser STRING_CONTENT_SQ() =>
      pattern("^\\'\n\r") | char('\\') & pattern('\n\r');

  Parser HASHBANG() =>
      string('#!') & pattern('^\n\r').star() & ref(NEWLINE).optional();
}
