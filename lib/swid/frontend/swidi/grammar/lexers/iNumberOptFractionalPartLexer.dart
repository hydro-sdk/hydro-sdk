import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iDigitLexer.dart';

abstract class INumberOptFractionalPartLexer<T> implements IDigitLexer<T> {
  const INumberOptFractionalPartLexer();

  T numberOptFractionalPart();
}
