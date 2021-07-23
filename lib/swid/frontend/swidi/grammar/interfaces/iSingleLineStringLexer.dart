import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iStringContentDqLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iStringContentSqLexer.dart';

abstract class ISingleLineStringLexer<T>
    implements IStringContentDqLexer<T>, IStringContentSqLexer<T> {
  const ISingleLineStringLexer();

  T lexSingleLineString();
}
