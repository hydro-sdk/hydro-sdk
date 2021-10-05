import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iStringContentDqLexer.dart';

import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IConstStringLexer<T extends dynamic, U extends Parser<T>>
    implements IStringContentDqLexer<T, U> {
  const IConstStringLexer();

  U constString();
}
