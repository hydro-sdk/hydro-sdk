import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iMultiLineStringLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSingleLineStringLexer.dart';

abstract class IStringLexer<T>
    implements IMultiLineStringLexer<T>, ISingleLineStringLexer<T> {
  const IStringLexer();

  T lexString();
}
