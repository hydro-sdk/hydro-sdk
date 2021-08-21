import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterLexer.dart';

abstract class IFunctionDeclarationOptionalParameterTailLexer<T>
    implements IFunctionDeclarationOptionalParameterLexer<T> {
  const IFunctionDeclarationOptionalParameterTailLexer();

  T functionDeclarationOptionalParameterTail();
}
