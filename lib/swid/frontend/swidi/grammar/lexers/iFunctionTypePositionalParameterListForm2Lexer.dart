import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypePositionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypePositionalParameterTailLexer.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionTypePositionalParameterListForm2Lexer<T extends dynamic,
        U extends Parser<T>>
    implements
        IFunctionTypePositionalParameterLexer<T, U>,
        IFunctionTypePositionalParameterTailLexer<T, U> {
  const IFunctionTypePositionalParameterListForm2Lexer();

  U functionTypePositionalParameterListForm2();
}
