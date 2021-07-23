import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iHexDigitLexer.dart';
import 'package:petitparser/petitparser.dart';

abstract class IHexNumberLexer implements IHexDigitLexer {
  const IHexNumberLexer();

  Parser lexHexNumber();
}
