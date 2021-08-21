import 'package:petitparser/core.dart';
import 'package:petitparser/definition.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iAbstractLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iClassLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iDigitLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iExponentLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iHashbangLexer.dart';
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
  Parser lexicalAbstract() => ref1(token, "abstract");

  @override
  Parser lexicalVoid() => ref1(token, "void");

  @override
  Parser lexicalClass() => ref1(token, "class");

  @override
  Parser lexicalIdentifier() =>
      ref0(identifierStart) & ref0(identifierPart).star();

  @override
  Parser hexNumber() =>
      string('0x') & ref0(hexDigit).plus() |
      string('0X') & ref0(hexDigit).plus();

  @override
  Parser number() =>
      ref0(digit).plus() &
          ref0(numberOptFractionalPart) &
          ref0(exponent).optional() &
          ref0(numberOptIllegalEnd) |
      char('.') &
          ref0(digit).plus() &
          ref0(exponent).optional() &
          ref0(numberOptIllegalEnd);

  @override
  Parser numberOptFractionalPart() =>
      char('.') & ref0(digit).plus() | epsilon();

  @override
  Parser numberOptIllegalEnd() => epsilon();

  @override
  Parser hexDigit() => pattern('0-9a-fA-F');

  @override
  Parser identifierStart() => ref0(identifierStartNoDollar) | char('\$');

  @override
  Parser identifierStartNoDollar() => ref0(letter) | char('_');

  @override
  Parser identifierPart() => ref0(identifierStart) | ref0(digit);

  @override
  Parser lexicalLetter() => letter();

  @override
  Parser lexicalDigit() => digit();

  @override
  Parser exponent() =>
      pattern('eE') & pattern('+-').optional() & ref0(digit).plus();

  @override
  Parser lexicalString() =>
      char('@').optional() & ref0(multiLineString) | ref0(singleLineString);

  @override
  Parser multiLineString() =>
      string('"""') & any().starLazy(string('"""')) & string('"""') |
      string("'''") & any().starLazy(string("'''")) & string("'''");

  @override
  Parser singleLineString() =>
      char('"') & ref0(stringContentDq).star() & char('"') |
      char("'") & ref0(stringContentSq).star() & char("'") |
      string('@"') & pattern('^"\n\r').star() & char('"') |
      string("@'") & pattern("^'\n\r").star() & char("'");

  @override
  Parser stringContentDq() =>
      pattern('^\\"\n\r') | char('\\') & pattern('\n\r');

  @override
  Parser stringContentSq() =>
      pattern("^\\'\n\r") | char('\\') & pattern('\n\r');

  @override
  Parser hashbang() =>
      string('#!') & pattern('^\n\r').star() & ref0(newline).optional();
}
