import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeFormalListLexer.dart';

@optionalTypeArgs
@immutable
abstract class ITypeFormalListDeclarationLexer<T extends dynamic,
    U extends Parser<T>> implements ITypeFormalListLexer<T, U> {
  const ITypeFormalListDeclarationLexer();

  U typeFormalListDeclaration();
}
