import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IHexDigitLexer<T extends dynamic, U extends Parser<T>> {
  const IHexDigitLexer();

  U hexDigit();
}
