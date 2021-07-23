import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iHashbangLexer.dart';
import 'package:petitparser/core.dart';
import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iAbstractLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iClassLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iDigitLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iExponentLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iHexDigitLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iHexNumberLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierPartLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierStartLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierStartNoDollarLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iLetterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iLexicalIdentifierLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iMultiLineStringLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iNumberLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iNumberOptFractionalPartLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iNumberOptIllegalEndLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSingleLineStringLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iStringContentDqLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iStringContentSqLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iStringLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iVoidLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarTokenizer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiWhitespaceGrammarDefinition.dart';

mixin SwidiLexicalTokensGrammarDefinition
    on
        GrammarDefinition,
        SwidiGrammarTokenizer,
        SwidiWhitespaceGrammarDefinition
    implements
        IClassLexer,
        IAbstractLexer,
        IDigitLexer,
        IHexDigitLexer,
        IHexNumberLexer,
        IIdentifierStartLexer,
        IIdentifierPartLexer,
        IIdentifierStartNoDollarLexer,
        ILetterLexer,
        ILexicalIdentifierLexer,
        IStringContentSqLexer,
        IStringContentDqLexer,
        IVoidLexer,
        INumberLexer,
        INumberOptFractionalPartLexer,
        INumberOptIllegalEndLexer,
        IExponentLexer,
        IStringLexer,
        IMultiLineStringLexer,
        ISingleLineStringLexer,
        IHashbangLexer {
  @override
  Parser lexAbstract() => ref1(token, "abstract");

  @override
  Parser lexVoid() => ref1(token, "void");

  @override
  Parser lexClass() => ref1(token, "class");

  @override
  Parser lexLexicalIdentifier() =>
      ref0(lexIdentifierStart) & ref0(lexIdentifierPart).star();

  @override
  Parser lexHexNumber() =>
      string('0x') & ref0(lexHexDigit).plus() |
      string('0X') & ref0(lexHexDigit).plus();

  @override
  Parser lexNumber() =>
      ref0(lexDigit).plus() &
          ref0(lexNumberOptFractionalPart) &
          ref0(lexExponent).optional() &
          ref0(lexNumberOptIllegalEnd) |
      char('.') &
          ref0(lexDigit).plus() &
          ref0(lexExponent).optional() &
          ref0(lexNumberOptIllegalEnd);

  @override
  Parser lexNumberOptFractionalPart() =>
      char('.') & ref0(lexDigit).plus() | epsilon();

  @override
  Parser lexNumberOptIllegalEnd() => epsilon();

  @override
  Parser lexHexDigit() => pattern('0-9a-fA-F');

  @override
  Parser lexIdentifierStart() => ref0(lexIdentifierStartNoDollar) | char('\$');

  @override
  Parser lexIdentifierStartNoDollar() => ref0(lexLetter) | char('_');

  @override
  Parser lexIdentifierPart() => ref0(lexIdentifierStart) | ref0(lexDigit);

  @override
  Parser lexLetter() => letter();

  @override
  Parser lexDigit() => digit();

  @override
  Parser lexExponent() =>
      pattern('eE') & pattern('+-').optional() & ref0(lexDigit).plus();

  @override
  Parser lexString() =>
      char('@').optional() & ref0(lexMultiLineString) |
      ref0(lexSingleLineString);

  @override
  Parser lexMultiLineString() =>
      string('"""') & any().starLazy(string('"""')) & string('"""') |
      string("'''") & any().starLazy(string("'''")) & string("'''");

  @override
  Parser lexSingleLineString() =>
      char('"') & ref0(lexStringContentDq).star() & char('"') |
      char("'") & ref0(lexStringContentSq).star() & char("'") |
      string('@"') & pattern('^"\n\r').star() & char('"') |
      string("@'") & pattern("^'\n\r").star() & char("'");

  @override
  Parser lexStringContentDq() =>
      pattern('^\\"\n\r') | char('\\') & pattern('\n\r');

  @override
  Parser lexStringContentSq() =>
      pattern("^\\'\n\r") | char('\\') & pattern('\n\r');

  @override
  Parser lexHashbang() =>
      string('#!') & pattern('^\n\r').star() & ref0(lexNewline).optional();
}
