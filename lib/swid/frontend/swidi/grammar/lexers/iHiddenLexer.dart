import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iHiddenStuffLexer.dart';

@optionalTypeArgs
@immutable
abstract class IHiddenLexer<T extends dynamic, U extends Parser<T>>
    implements IHiddenStuffLexer<T, U> {
  const IHiddenLexer();

  U hidden();
}
