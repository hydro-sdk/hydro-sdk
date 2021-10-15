import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierStartNoDollarLexer.dart';

@optionalTypeArgs
@immutable
abstract class IIdentifierStartLexer<T extends dynamic, U extends Parser<T>>
    implements IIdentifierStartNoDollarLexer<T, U> {
  const IIdentifierStartLexer();

  U identifierStart();
}
