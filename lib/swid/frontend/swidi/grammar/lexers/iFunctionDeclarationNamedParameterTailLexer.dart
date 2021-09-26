import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterLexer.dart';

abstract class IFunctionDeclarationNamedParameterTailLexer<T>
    implements IFunctionDeclarationNamedParameterLexer<T> {
  const IFunctionDeclarationNamedParameterTailLexer();

  T functionDeclarationNamedParameterTail();
}
