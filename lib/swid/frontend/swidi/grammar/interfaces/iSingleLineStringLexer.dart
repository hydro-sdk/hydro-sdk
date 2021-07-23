import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iStringContentDqLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iStringContentSqLexer.dart';

abstract class ISingleLineStringLexer<T>
    implements IStringContentDqLexer, IStringContentSqLexer {
  const ISingleLineStringLexer();

  T lexSingleLineString();
}
