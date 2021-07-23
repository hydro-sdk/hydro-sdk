import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iDigitLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iIdentifierStartLexer.dart';

abstract class IIdentifierPartLexer<T>
    implements IIdentifierStartLexer, IDigitLexer {
  const IIdentifierPartLexer();

  T lexIdentifierPart();
}
