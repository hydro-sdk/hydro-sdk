import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iIdentifierStartNoDollarLexer.dart';
import 'package:petitparser/petitparser.dart';

abstract class IIdentifierStartLexer implements IIdentifierStartNoDollarLexer {
  const IIdentifierStartLexer();

  Parser lexIdentifierStart();
}
