import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstNamedParameterLexer.dart';

abstract class IConstNamedParameterListLexer<T>
    implements IConstNamedParameterLexer<T> {
  const IConstNamedParameterListLexer();

  T lexConstNamedParameterList();
}
