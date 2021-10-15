import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iStringContentDqLexer.dart';

@optionalTypeArgs
@immutable
abstract class ILibraryScopePrefixLexer<T extends dynamic, U extends Parser<T>>
    implements IStringContentDqLexer<T, U> {
  const ILibraryScopePrefixLexer();

  U libraryScopePrefix();
}
