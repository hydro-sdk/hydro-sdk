import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierLexer.dart';

abstract class IConstNamedParameterLexer<T>
    implements IIdentifierLexer<T>, IConstLexer<T> {
  const IConstNamedParameterLexer();

  T constNamedParameter();
}
