import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iLetterLexer.dart';

@optionalTypeArgs
@immutable
abstract class IIdentifierStartNoDollarLexer<T extends dynamic,
    U extends Parser<T>> implements ILetterLexer<T, U> {
  const IIdentifierStartNoDollarLexer();

  U identifierStartNoDollar();
}
