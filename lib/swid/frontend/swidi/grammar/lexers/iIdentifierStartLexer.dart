import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierStartNoDollarLexer.dart';

abstract class IIdentifierStartLexer<T>
    implements IIdentifierStartNoDollarLexer<T> {
  const IIdentifierStartLexer();

  T identifierStart();
}
