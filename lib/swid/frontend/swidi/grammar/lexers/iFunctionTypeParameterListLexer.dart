import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeNamedParameterListForm1Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeNamedParameterListForm2Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeNamedParameterListForm3Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeOptionalParameterListForm1Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeOptionalParameterListForm2Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeOptionalParameterListForm3Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypePositionalParameterListForm1Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypePositionalParameterListForm2Lexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypePositionalParameterListForm3Lexer.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionTypeParameterListLexer<T extends dynamic,
        U extends Parser<T>>
    implements
        IFunctionTypePositionalParameterListForm1Lexer<T, U>,
        IFunctionTypePositionalParameterListForm2Lexer<T, U>,
        IFunctionTypePositionalParameterListForm3Lexer<T, U>,
        IFunctionTypeOptionalParameterListForm1Lexer<T, U>,
        IFunctionTypeOptionalParameterListForm2Lexer<T, U>,
        IFunctionTypeOptionalParameterListForm3Lexer<T, U>,
        IFunctionTypeNamedParameterListForm1Lexer<T, U>,
        IFunctionTypeNamedParameterListForm2Lexer<T, U>,
        IFunctionTypeNamedParameterListForm3Lexer<T, U> {
  const IFunctionTypeParameterListLexer();

  U functionTypeParameterList();
}
