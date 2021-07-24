import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterTailLexer.dart';

abstract class IFunctionDeclarationNamedParameterListForm3Lexer<T>
    implements
        IFunctionDeclarationNamedParameterLexer<T>,
        IFunctionDeclarationNamedParameterTailLexer<T> {
  const IFunctionDeclarationNamedParameterListForm3Lexer();

  T functionDeclarationNamedParameterListForm3();
}
