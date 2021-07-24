import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iLexicalIdentifierLexer.dart';

abstract class IIdentifierLexer<T> implements ILexicalIdentifierLexer<T> {
  const IIdentifierLexer();

  T identifier();
}
