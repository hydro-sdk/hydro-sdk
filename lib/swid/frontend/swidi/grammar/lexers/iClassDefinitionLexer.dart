import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iAbstractLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iClassLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iLibraryScopePrefixLexer.dart';

@optionalTypeArgs
@immutable
abstract class IClassDefinitionLexer<T extends dynamic, U extends Parser<T>>
    implements
        IAbstractLexer<T, U>,
        IClassLexer<T, U>,
        ILibraryScopePrefixLexer<T, U>,
        IIdentifierLexer<T, U>,
        IFunctionDeclarationLexer<T, U> {
  const IClassDefinitionLexer();

  U classDefinition();
}
