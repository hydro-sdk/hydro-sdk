import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSimpleDeclarationLexer.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionDeclarationPositionalParameterLexer<T extends dynamic,
    U extends Parser<T>> implements ISimpleDeclarationLexer<T, U> {
  const IFunctionDeclarationPositionalParameterLexer();

  U functionDeclarationPositionalParameter();
}
