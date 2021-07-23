import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iIdentifierPartLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iIdentifierStartLexer.dart';

abstract class ILexicalIdentifierLexer<T>
    implements IIdentifierStartLexer<T>, IIdentifierPartLexer<T> {
  const ILexicalIdentifierLexer();

  T lexLexicalIdentifier();
}
