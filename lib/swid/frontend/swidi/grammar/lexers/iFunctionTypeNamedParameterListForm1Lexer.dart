import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeNamedParameterLexer.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionTypeNamedParameterListForm1Lexer<T extends dynamic,
    U extends Parser<T>> implements IFunctionTypeNamedParameterLexer<T, U> {
  const IFunctionTypeNamedParameterListForm1Lexer();

  U functionTypeNamedParameterListForm1();
}
