import 'package:petitparser/petitparser.dart';

abstract class IHexDigitLexer {
  const IHexDigitLexer();

  Parser lexHexDigit();
}
