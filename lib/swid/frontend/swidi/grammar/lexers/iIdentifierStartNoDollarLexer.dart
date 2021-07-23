import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iLetterLexer.dart';

abstract class IIdentifierStartNoDollarLexer<T> implements ILetterLexer<T> {
  const IIdentifierStartNoDollarLexer();

T lexIdentifierStartNoDollar();
}
