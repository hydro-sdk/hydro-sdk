import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterTailLexer.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionDeclarationOptionalParameterListForm3Lexer<
        T extends dynamic, U extends Parser<T>>
    implements
        IFunctionDeclarationOptionalParameterLexer<T, U>,
        IFunctionDeclarationOptionalParameterTailLexer<T, U> {
  const IFunctionDeclarationOptionalParameterListForm3Lexer();

  U functionDeclarationOptionalParameterListForm3();
}
