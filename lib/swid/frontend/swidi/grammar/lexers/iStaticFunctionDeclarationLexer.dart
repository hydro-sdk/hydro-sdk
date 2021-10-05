import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationLexer.dart';

@optionalTypeArgs
@immutable
abstract class IStaticFunctionDeclarationLexer<T extends dynamic,
    U extends Parser<T>> implements IFunctionDeclarationLexer<T, U> {
  const IStaticFunctionDeclarationLexer();

  U staticFunctionDeclaration();
}
