import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterLexer.dart';

import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionDeclarationNamedParameterTailLexer<T extends dynamic,
        U extends Parser<T>>
    implements IFunctionDeclarationNamedParameterLexer<T, U> {
  const IFunctionDeclarationNamedParameterTailLexer();

  U functionDeclarationNamedParameterTail();
}
