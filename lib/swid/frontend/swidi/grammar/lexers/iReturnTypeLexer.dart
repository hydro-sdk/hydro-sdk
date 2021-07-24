import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeLexer.dart';

abstract class IReturnTypeLexer<T> implements ITypeLexer<T> {
  const IReturnTypeLexer();

  T returnType();
}
