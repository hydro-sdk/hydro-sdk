import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iDeclarationWithDefaultConstValueLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSimpleDeclarationLexer.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionDeclarationNamedParameterLexer<T extends dynamic,
        U extends Parser<T>>
    implements
        IDeclarationWithDefaultConstValueLexer<T, U>,
        ISimpleDeclarationLexer<T, U> {
  const IFunctionDeclarationNamedParameterLexer();

  U functionDeclarationNamedParameter();
}
