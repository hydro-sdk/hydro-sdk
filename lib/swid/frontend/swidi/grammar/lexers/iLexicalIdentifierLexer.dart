import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierPartLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierStartLexer.dart';

abstract class ILexicalIdentifierLexer<T>
    implements IIdentifierStartLexer<T>, IIdentifierPartLexer<T> {
  const ILexicalIdentifierLexer();

  T lexicalIdentifier();
}
