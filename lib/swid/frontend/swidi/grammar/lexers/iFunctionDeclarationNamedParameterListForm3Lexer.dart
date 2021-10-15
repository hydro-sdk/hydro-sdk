import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterTailLexer.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionDeclarationNamedParameterListForm3Lexer<
        T extends dynamic, U extends Parser<T>>
    implements
        IFunctionDeclarationNamedParameterLexer<T, U>,
        IFunctionDeclarationNamedParameterTailLexer<T, U> {
  const IFunctionDeclarationNamedParameterListForm3Lexer();

  U functionDeclarationNamedParameterListForm3();
}
