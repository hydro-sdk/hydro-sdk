import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionTypePositionalParameterLexer.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionTypePositionalParameterTailLexer<T extends dynamic,
        U extends Parser<T>>
    implements IFunctionTypePositionalParameterLexer<T, U> {
  const IFunctionTypePositionalParameterTailLexer();

  U functionTypePositionalParameterTail();
}
