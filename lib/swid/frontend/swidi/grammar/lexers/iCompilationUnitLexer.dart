import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTopLevelDefinitionLexer.dart';

abstract class ICompilationUnitLexer<T> implements ITopLevelDefinitionLexer<T> {
  const ICompilationUnitLexer();

  T compilationUnit();
}
