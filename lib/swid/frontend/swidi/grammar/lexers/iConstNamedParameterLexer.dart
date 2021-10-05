import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierLexer.dart';

@optionalTypeArgs
@immutable
abstract class IConstNamedParameterLexer<T extends dynamic, U extends Parser<T>>
    implements IIdentifierLexer<T, U>, IConstLexer<T, U> {
  const IConstNamedParameterLexer();

  U constNamedParameter();
}
