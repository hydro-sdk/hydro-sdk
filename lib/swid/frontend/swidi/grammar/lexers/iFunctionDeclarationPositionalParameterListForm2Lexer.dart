import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterTailLexer.dart';

abstract class IFunctionDeclarationPositionalParameterListForm2Lexer<T>
    implements
        IFunctionDeclarationPositionalParameterLexer<T>,
        IFunctionDeclarationPositionalParameterTailLexer<T> {
  const IFunctionDeclarationPositionalParameterListForm2Lexer();

  T functionDeclarationPositionalParameterListForm2();
}
