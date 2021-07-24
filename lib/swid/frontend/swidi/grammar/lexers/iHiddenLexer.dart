import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iHiddenStuffLexer.dart';

abstract class IHiddenLexer<T> implements IHiddenStuffLexer<T> {
  const IHiddenLexer();

  T hidden();
}
