import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterTailLexer.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionDeclarationPositionalParameterListForm2Lexer<
        T extends dynamic, U extends Parser<T>>
    implements
        IFunctionDeclarationPositionalParameterLexer<T, U>,
        IFunctionDeclarationPositionalParameterTailLexer<T, U> {
  const IFunctionDeclarationPositionalParameterListForm2Lexer();

  U functionDeclarationPositionalParameterListForm2();
}
