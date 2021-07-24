import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterLexer.dart';

abstract class IFunctionDeclarationPositionalParameterTailLexer<T>
    implements IFunctionDeclarationPositionalParameterLexer<T> {
  const IFunctionDeclarationPositionalParameterTailLexer();

  T functionDeclarationPositionalParameterTail();
}
