import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iStringContentDqLexer.dart';

abstract class ILibraryScopePrefixLexer<T> implements IStringContentDqLexer<T> {
  const ILibraryScopePrefixLexer();

  T libraryScopePrefix();
}
