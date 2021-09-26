import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationLexer.dart';

abstract class IStaticFunctionDeclarationLexer<T>
    implements IFunctionDeclarationLexer<T> {
  const IStaticFunctionDeclarationLexer();

  T staticFunctionDeclaration();
}
