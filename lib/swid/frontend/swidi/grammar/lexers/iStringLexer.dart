import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iMultiLineStringLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSingleLineStringLexer.dart';

@optionalTypeArgs
@immutable
abstract class IStringLexer<T extends dynamic, U extends Parser<T>>
    implements IMultiLineStringLexer<T, U>, ISingleLineStringLexer<T, U> {
  const IStringLexer();

  U lexicalString();
}
