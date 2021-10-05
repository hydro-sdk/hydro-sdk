import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstNamedParameterLexer.dart';

import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IConstNamedParameterListLexer<T extends dynamic,
    U extends Parser<T>> implements IConstNamedParameterLexer<T, U> {
  const IConstNamedParameterListLexer();

  U constNamedParameterList();
}
