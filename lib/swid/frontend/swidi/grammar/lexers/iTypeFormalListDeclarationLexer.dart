import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeFormalListLexer.dart';

abstract class ITypeFormalListDeclarationLexer<T>
    implements ITypeFormalListLexer<T> {
  const ITypeFormalListDeclarationLexer();

  T typeFormalListDeclaration();
}
