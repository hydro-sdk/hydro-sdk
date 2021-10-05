import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterLexer.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionDeclarationPositionalParameterTailLexer<
        T extends dynamic, U extends Parser<T>>
    implements IFunctionDeclarationPositionalParameterLexer<T, U> {
  const IFunctionDeclarationPositionalParameterTailLexer();

  U functionDeclarationPositionalParameterTail();
}
