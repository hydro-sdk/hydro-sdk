import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstNumberLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstStringLexer.dart';

@optionalTypeArgs
@immutable
abstract class IConstLexer<T extends dynamic, U extends Parser<T>>
    implements IConstNumberLexer<T, U>, IConstStringLexer<T, U> {
  const IConstLexer();

  U lexicalConst();
}
