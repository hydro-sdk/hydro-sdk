import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSimpleDeclarationLexer.dart';

abstract class IFunctionDeclarationPositionalParameterLexer<T>
    implements ISimpleDeclarationLexer<T> {
  const IFunctionDeclarationPositionalParameterLexer();

  T functionDeclarationPositionalParameter();
}
