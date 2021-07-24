import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iReturnTypeLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeFormalListDeclarationLexer.dart';

abstract class IFunctionDeclarationLexer<T>
    implements
        IReturnTypeLexer<T>,
        IIdentifierLexer<T>,
        ITypeFormalListDeclarationLexer<T> {
  const IFunctionDeclarationLexer();

  T functionDeclaration();
}
