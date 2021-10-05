import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iHexDigitLexer.dart';
import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IHexNumberLexer<T extends dynamic, U extends Parser<T>>
    implements IHexDigitLexer<T, U> {
  const IHexNumberLexer();

  U hexNumber();
}
