import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeOptionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypeOptionalParameterTailLexer.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionTypeOptionalParameterListForm3Lexer<T extends dynamic,
        U extends Parser<T>>
    implements
        IFunctionTypeOptionalParameterLexer<T, U>,
        IFunctionTypeOptionalParameterTailLexer<T, U> {
  const IFunctionTypeOptionalParameterListForm3Lexer();

  U functionTypeOptionalParameterListForm3();
}
