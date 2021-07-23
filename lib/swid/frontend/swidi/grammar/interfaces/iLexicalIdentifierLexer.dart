import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iIdentifierPartLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iIdentifierStartLexer.dart';
import 'package:petitparser/petitparser.dart';

abstract class ILexicalIdentifierLexer
    implements IIdentifierStartLexer, IIdentifierPartLexer {
  const ILexicalIdentifierLexer();

  Parser lexLexicalIdentifier();
}
