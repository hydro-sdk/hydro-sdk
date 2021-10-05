import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterTailLexer.dart';

import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionDeclarationNamedParameterListForm2Lexer<
        T extends dynamic, U extends Parser<T>>
    implements
        IFunctionDeclarationNamedParameterLexer<T, U>,
        IFunctionDeclarationNamedParameterTailLexer<T, U> {
  const IFunctionDeclarationNamedParameterListForm2Lexer();

  U functionDeclarationNamedParameterListForm2();
}
