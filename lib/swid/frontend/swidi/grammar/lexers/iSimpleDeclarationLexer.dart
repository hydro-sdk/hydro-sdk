import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeLexer.dart';

@optionalTypeArgs
@immutable
abstract class ISimpleDeclarationLexer<T extends dynamic, U extends Parser<T>>
    implements ITypeLexer<T, U>, IIdentifierLexer<T, U> {
  const ISimpleDeclarationLexer();

  U simpleDeclaration();
}
