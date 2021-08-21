import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iCompilationUnitLexer.dart';

abstract class IStartLexer<T> implements ICompilationUnitLexer<T> {
  const IStartLexer();

  T start();
}
