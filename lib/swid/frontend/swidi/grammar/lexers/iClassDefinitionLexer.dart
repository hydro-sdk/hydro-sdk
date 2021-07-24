import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iAbstractLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iClassLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iLibraryScopePrefixLexer.dart';

abstract class IClassDefinitionLexer<T>
    implements
        IAbstractLexer<T>,
        IClassLexer,
        ILibraryScopePrefixLexer<T>,
        IIdentifierLexer<T>,
        IFunctionDeclarationLexer<T> {
  const IClassDefinitionLexer();

  T classDefinition();
}
