import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeLexer.dart';

abstract class ITypeListLexer<T> implements ITypeLexer<T> {
  const ITypeListLexer();

  T typeList();
}
