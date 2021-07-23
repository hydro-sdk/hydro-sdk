import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iLetterLexer.dart';
import 'package:petitparser/petitparser.dart';

abstract class IIdentifierStartNoDollarLexer implements ILetterLexer {
  const IIdentifierStartNoDollarLexer();

  Parser lexIdentifierStartNoDollar();
}
