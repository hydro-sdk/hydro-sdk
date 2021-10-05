import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iStringContentDqLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iStringContentSqLexer.dart';

@optionalTypeArgs
@immutable
abstract class ISingleLineStringLexer<T extends dynamic, U extends Parser<T>>
    implements IStringContentDqLexer<T, U>, IStringContentSqLexer<T, U> {
  const ISingleLineStringLexer();

  U singleLineString();
}
