import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterListForm1Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterListForm2Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterListForm3Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterListForm1Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterListForm2Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterListForm3Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterListForm1Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterListForm2Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterListForm3Lexer.dart';

abstract class IFunctionDeclarationParameterListLexer<T>
    implements
        IFunctionDeclarationPositionalParameterListForm1Lexer,
        IFunctionDeclarationPositionalParameterListForm2Lexer,
        IFunctionDeclarationPositionalParameterListForm3Lexer,
        IFunctionDeclarationOptionalParameterListForm1Lexer,
        IFunctionDeclarationOptionalParameterListForm2Lexer,
        IFunctionDeclarationOptionalParameterListForm3Lexer,
        IFunctionDeclarationNamedParameterListForm1Lexer,
        IFunctionDeclarationNamedParameterListForm2Lexer,
        IFunctionDeclarationNamedParameterListForm3Lexer {
  const IFunctionDeclarationParameterListLexer();

  T functionDeclarationParameterList();
}
