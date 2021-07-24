import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iClassDefinitionLexer.dart';

abstract class ITopLevelDefinitionLexer<T> implements IClassDefinitionLexer<T> {
  const ITopLevelDefinitionLexer();

  T topLevelDefinition();
}
