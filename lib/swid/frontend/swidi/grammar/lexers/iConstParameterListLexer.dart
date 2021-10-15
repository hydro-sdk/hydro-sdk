import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstNamedParameterListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstPositionalParameterListLexer.dart';

@optionalTypeArgs
@immutable
abstract class IConstParameterListLexer<T extends dynamic, U extends Parser<T>>
    implements
        IConstPositionalParameterListLexer<T, U>,
        IConstNamedParameterListLexer<T, U> {
  const IConstParameterListLexer();

  U constParameterList();
}
