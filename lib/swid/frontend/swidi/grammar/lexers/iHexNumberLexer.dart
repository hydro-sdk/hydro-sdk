import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iHexDigitLexer.dart';

abstract class IHexNumberLexer<T> implements IHexDigitLexer<T> {
  const IHexNumberLexer();

  T hexNumber();
}
