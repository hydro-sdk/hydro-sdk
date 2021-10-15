import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iDigitLexer.dart';

@optionalTypeArgs
@immutable
abstract class INumberOptFractionalPartLexer<T extends dynamic,
    U extends Parser<T>> implements IDigitLexer<T, U> {
  const INumberOptFractionalPartLexer();

  U numberOptFractionalPart();
}
