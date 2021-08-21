import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeListLexer.dart';

abstract class ITypeArgumentsLexer<T> implements ITypeListLexer<T> {
  const ITypeArgumentsLexer();

  T typeArguments();
}
