import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeNamedParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeNamedParameterTailLexer.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionTypeNamedParameterListForm2Lexer<T extends dynamic,
        U extends Parser<T>>
    implements
        IFunctionTypeNamedParameterLexer<T, U>,
        IFunctionTypeNamedParameterTailLexer<T, U> {
  const IFunctionTypeNamedParameterListForm2Lexer();

  U functionTypeNamedParameterListForm2();
}
