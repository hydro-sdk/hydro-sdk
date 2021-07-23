import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iStringContentDqLexer.dart';

abstract class IConstStringLexer<T> implements IStringContentDqLexer<T> {
  const IConstStringLexer();

T lexConstString();
}
