import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iDigitLexer.dart';

abstract class INumberOptFractionalPartLexer<T> implements IDigitLexer {
  const INumberOptFractionalPartLexer();

  T lexNumberOptFractionalPart();
}
