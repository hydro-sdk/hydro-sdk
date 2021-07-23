import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iAbstractLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iClassLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iDigitLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iExponentLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iHexDigitLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iHexNumberLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iIdentifierPartLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iIdentifierStartLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iIdentifierStartNoDollarLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iLetterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iLexicalIdentifierLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iMultiLineStringLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iNumberLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iNumberOptFractionalPartLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iNumberOptIllegalEndLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iSingleLineStringLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iStringContentDqLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iStringContentSqLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iStringLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iVoidLexer.dart';
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
        ISingleLineStringLexer {
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

  Parser HASHBANG() =>
      string('#!') & pattern('^\n\r').star() & ref0(NEWLINE).optional();
}
