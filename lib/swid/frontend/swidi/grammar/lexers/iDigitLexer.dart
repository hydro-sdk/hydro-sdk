import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IDigitLexer<T extends dynamic, U extends Parser<T>> {
  const IDigitLexer();

  U lexicalDigit();
}
