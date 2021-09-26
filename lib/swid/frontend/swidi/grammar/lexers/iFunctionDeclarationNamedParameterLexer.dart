import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iDeclarationWithDefaultConstValueLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSimpleDeclarationLexer.dart';

abstract class IFunctionDeclarationNamedParameterLexer<T>
    implements
        IDeclarationWithDefaultConstValueLexer<T>,
        ISimpleDeclarationLexer<T> {
  const IFunctionDeclarationNamedParameterLexer();

  T functionDeclarationNamedParameter();
}
