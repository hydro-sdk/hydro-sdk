import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iDeclarationWithDefaultConstValueLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSimpleDeclarationLexer.dart';

abstract class IFunctionDeclarationOptionalParameterLexer<T>
    implements
        IDeclarationWithDefaultConstValueLexer<T>,
        ISimpleDeclarationLexer<T> {
  const IFunctionDeclarationOptionalParameterLexer();

  T functionDeclarationOptionalParameter();
}
