import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterTailLexer.dart';

abstract class IFunctionDeclarationPositionalParameterListForm3Lexer<T>
    implements
        IFunctionDeclarationPositionalParameterLexer<T>,
        IFunctionDeclarationPositionalParameterTailLexer<T> {
  const IFunctionDeclarationPositionalParameterListForm3Lexer();

  T functionDeclarationPositionalParameterListForm3();
}
