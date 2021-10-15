import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iDigitLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierStartLexer.dart';

@optionalTypeArgs
@immutable
abstract class IIdentifierPartLexer<T extends dynamic, U extends Parser<T>>
    implements IIdentifierStartLexer<T, U>, IDigitLexer<T, U> {
  const IIdentifierPartLexer();

  U identifierPart();
}
