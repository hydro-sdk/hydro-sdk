import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstParameterListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierLexer.dart';

@optionalTypeArgs
@immutable
abstract class IConstFunctionInvocationLexer<T extends dynamic,
        U extends Parser<T>>
    implements IIdentifierLexer<T, U>, IConstParameterListLexer<T, U> {
  const IConstFunctionInvocationLexer();

  U constFunctionInvocation();
}
