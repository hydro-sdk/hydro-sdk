import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterLexer.dart';
import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionDeclarationOptionalParameterTailLexer<T extends dynamic,
        U extends Parser<T>>
    implements IFunctionDeclarationOptionalParameterLexer<T, U> {
  const IFunctionDeclarationOptionalParameterTailLexer();

  U functionDeclarationOptionalParameterTail();
}
