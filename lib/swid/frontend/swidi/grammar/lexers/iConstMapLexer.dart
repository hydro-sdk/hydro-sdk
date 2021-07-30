import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstLexer.dart';

abstract class IConstMapLexer<T> implements IConstLexer<T> {
  const IConstMapLexer();

  T constMap();
}
