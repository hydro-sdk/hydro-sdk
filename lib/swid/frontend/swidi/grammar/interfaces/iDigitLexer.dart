
import 'package:petitparser/petitparser.dart';

abstract class IDigitLexer {
  const IDigitLexer();

  Parser lexDigit();
}