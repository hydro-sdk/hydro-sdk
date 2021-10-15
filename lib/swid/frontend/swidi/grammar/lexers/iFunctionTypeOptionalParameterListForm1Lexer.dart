import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeOptionalParameterLexer.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionTypeOptionalParameterListForm1Lexer<T extends dynamic,
    U extends Parser<T>> implements IFunctionTypeOptionalParameterLexer<T, U> {
  const IFunctionTypeOptionalParameterListForm1Lexer();

  U functionTypeOptionalParameterListForm1();
}
