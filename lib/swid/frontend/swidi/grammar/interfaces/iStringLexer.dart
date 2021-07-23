import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iMultiLineStringLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iSingleLineStringLexer.dart';

abstract class IStringLexer<T>
    implements IMultiLineStringLexer, ISingleLineStringLexer {
  const IStringLexer();

  T lexString();
}
