import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterLexer.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionDeclarationOptionalParameterListForm2Lexer<
        T extends dynamic, U extends Parser<T>>
    implements IFunctionDeclarationOptionalParameterLexer<T, U> {
  const IFunctionDeclarationOptionalParameterListForm2Lexer();

  U functionDeclarationOptionalParameterListForm2();
}
