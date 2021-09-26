import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iDigitLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierStartLexer.dart';

abstract class IIdentifierPartLexer<T>
    implements IIdentifierStartLexer<T>, IDigitLexer<T> {
  const IIdentifierPartLexer();

  T identifierPart();
}
