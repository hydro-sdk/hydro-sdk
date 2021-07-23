import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iDigitLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iIdentifierStartLexer.dart';
import 'package:petitparser/petitparser.dart';

abstract class IIdentifierPartLexer
    implements IIdentifierStartLexer, IDigitLexer {
  const IIdentifierPartLexer();

  Parser lexIdentifierPart();
}
