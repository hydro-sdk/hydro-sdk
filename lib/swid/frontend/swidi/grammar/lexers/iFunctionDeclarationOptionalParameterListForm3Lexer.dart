import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterTailLexer.dart';

abstract class IFunctionDeclarationOptionalParameterListForm3Lexer<T>
    implements
        IFunctionDeclarationOptionalParameterLexer<T>,
        IFunctionDeclarationOptionalParameterTailLexer<T> {
  const IFunctionDeclarationOptionalParameterListForm3Lexer();

  T functionDeclarationOptionalParameterListForm3();
}
