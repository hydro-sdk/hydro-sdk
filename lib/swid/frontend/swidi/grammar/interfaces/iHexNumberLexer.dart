import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iHexDigitLexer.dart';

abstract class IHexNumberLexer<T> implements IHexDigitLexer<T> {
  const IHexNumberLexer();

  T lexHexNumber();
}
