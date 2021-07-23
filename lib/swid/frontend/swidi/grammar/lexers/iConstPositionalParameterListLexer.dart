import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstLexer.dart';

abstract class IConstPositionalParameterListLexer<T> implements IConstLexer<T> {
  const IConstPositionalParameterListLexer();

  T lexConstPositionalParameterList();
}
