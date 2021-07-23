import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iNewlineLexer.dart';

abstract class IHashbangLexer<T> implements INewlineLexer<T> {
  const IHashbangLexer();

  T lexHashbang();
}
