import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSimpleDeclarationLexer.dart';

abstract class IDeclarationWithDefaultConstValueLexer<T>
    implements ISimpleDeclarationLexer<T>, IConstLexer<T> {
  const IDeclarationWithDefaultConstValueLexer();

  T declarationWithDefaultConstValue();
}
