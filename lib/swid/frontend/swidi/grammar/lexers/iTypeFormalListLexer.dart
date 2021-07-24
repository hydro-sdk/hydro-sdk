import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeFormalLexer.dart';

abstract class ITypeFormalListLexer<T> implements ITypeFormalLexer<T> {
  const ITypeFormalListLexer();

  T typeFormalList();
}
