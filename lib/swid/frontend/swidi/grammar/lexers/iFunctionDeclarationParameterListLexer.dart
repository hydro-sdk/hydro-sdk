import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterListForm1Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterListForm2Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterListForm3Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterListForm1Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterListForm2Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterListForm3Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterListForm1Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterListForm2Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterListForm3Lexer.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionDeclarationParameterListLexer<T extends dynamic,
        U extends Parser<T>>
    implements
        IFunctionDeclarationPositionalParameterListForm1Lexer<T, U>,
        IFunctionDeclarationPositionalParameterListForm2Lexer<T, U>,
        IFunctionDeclarationPositionalParameterListForm3Lexer<T, U>,
        IFunctionDeclarationOptionalParameterListForm1Lexer<T, U>,
        IFunctionDeclarationOptionalParameterListForm2Lexer<T, U>,
        IFunctionDeclarationOptionalParameterListForm3Lexer<T, U>,
        IFunctionDeclarationNamedParameterListForm1Lexer<T, U>,
        IFunctionDeclarationNamedParameterListForm2Lexer<T, U>,
        IFunctionDeclarationNamedParameterListForm3Lexer<T, U> {
  const IFunctionDeclarationParameterListLexer();

  U functionDeclarationParameterList();
}
