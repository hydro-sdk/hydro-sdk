import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iDigitLexer.dart';

abstract class IExponentLexer<T> implements IDigitLexer<T> {
  const IExponentLexer();

  T lexExponent();
}
