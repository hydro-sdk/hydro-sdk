import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterLexer.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionDeclarationOptionalParameterListForm1Lexer<
        T extends dynamic, U extends Parser<T>>
    implements IFunctionDeclarationOptionalParameterLexer<T, U> {
  const IFunctionDeclarationOptionalParameterListForm1Lexer();

  U functionDeclarationOptionalParameterListForm1();
}
