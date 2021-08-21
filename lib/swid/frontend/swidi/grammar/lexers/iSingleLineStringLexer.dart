import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iStringContentDqLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iStringContentSqLexer.dart';

abstract class ISingleLineStringLexer<T>
    implements IStringContentDqLexer<T>, IStringContentSqLexer<T> {
  const ISingleLineStringLexer();

  T singleLineString();
}
