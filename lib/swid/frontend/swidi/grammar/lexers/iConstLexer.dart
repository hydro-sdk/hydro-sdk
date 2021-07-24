import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstNumberLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstStringLexer.dart';

abstract class IConstLexer<T>
    implements IConstNumberLexer<T>, IConstStringLexer<T> {
  const IConstLexer();

  T lexicalConst();
}
