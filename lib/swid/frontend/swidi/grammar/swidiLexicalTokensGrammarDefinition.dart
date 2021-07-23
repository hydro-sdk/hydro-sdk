import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iClassLexer.dart';
import 'package:petitparser/core.dart';
import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiWhitespaceGrammarDefinition.dart';

mixin SwidiLexicalTokensGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiWhitespaceGrammarDefinition
    implements IClassLexer {
  Parser ABSTRACT() => ref1(token, "abstract");

  Parser VOID() => ref1(token, "void");

  @override
  Parser lexClass() => ref1(token, "class");
  Parser IDENTIFIER() => ref0(IDENTIFIER_START) & ref0(IDENTIFIER_PART).star();

  Parser HEX_NUMBER() =>
      string('0x') & ref0(HEX_DIGIT).plus() |
      string('0X') & ref0(HEX_DIGIT).plus();

  Parser NUMBER() =>
      ref0(DIGIT).plus() &
          ref0(NUMBER_OPT_FRACTIONAL_PART) &
          ref0(EXPONENT).optional() &
          ref0(NUMBER_OPT_ILLEGAL_END) |
      char('.') &
          ref0(DIGIT).plus() &
          ref0(EXPONENT).optional() &
          ref0(NUMBER_OPT_ILLEGAL_END);

  Parser NUMBER_OPT_FRACTIONAL_PART() =>
      char('.') & ref0(DIGIT).plus() | epsilon();

  Parser NUMBER_OPT_ILLEGAL_END() => epsilon();

  Parser HEX_DIGIT() => pattern('0-9a-fA-F');

  Parser IDENTIFIER_START() => ref0(IDENTIFIER_START_NO_DOLLAR) | char('\$');

  Parser IDENTIFIER_START_NO_DOLLAR() => ref0(LETTER) | char('_');

  Parser IDENTIFIER_PART() => ref0(IDENTIFIER_START) | ref0(DIGIT);

  Parser LETTER() => letter();

  Parser DIGIT() => digit();

  Parser EXPONENT() =>
      pattern('eE') & pattern('+-').optional() & ref0(DIGIT).plus();

  Parser STRING() =>
      char('@').optional() & ref0(MULTI_LINE_STRING) | ref0(SINGLE_LINE_STRING);

  Parser MULTI_LINE_STRING() =>
      string('"""') & any().starLazy(string('"""')) & string('"""') |
      string("'''") & any().starLazy(string("'''")) & string("'''");

  Parser SINGLE_LINE_STRING() =>
      char('"') & ref0(STRING_CONTENT_DQ).star() & char('"') |
      char("'") & ref0(STRING_CONTENT_SQ).star() & char("'") |
      string('@"') & pattern('^"\n\r').star() & char('"') |
      string("@'") & pattern("^'\n\r").star() & char("'");

  Parser STRING_CONTENT_DQ() =>
      pattern('^\\"\n\r') | char('\\') & pattern('\n\r');

  Parser STRING_CONTENT_SQ() =>
      pattern("^\\'\n\r") | char('\\') & pattern('\n\r');

  Parser HASHBANG() =>
      string('#!') & pattern('^\n\r').star() & ref0(NEWLINE).optional();
}
