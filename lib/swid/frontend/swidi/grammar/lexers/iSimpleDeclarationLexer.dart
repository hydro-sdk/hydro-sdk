import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeLexer.dart';

abstract class ISimpleDeclarationLexer<T>
    implements ITypeLexer<T>, IIdentifierLexer<T> {
  const ISimpleDeclarationLexer();

  T simpleDeclaration();
}
