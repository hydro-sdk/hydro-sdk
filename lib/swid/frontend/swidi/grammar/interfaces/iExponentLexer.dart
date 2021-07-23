import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iDigitLexer.dart';

abstract class IExponentLexer<T> implements IDigitLexer {
  const IExponentLexer();

  T lexExponent();
}
