import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iReturnTypeLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeFormalListDeclarationLexer.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionTypeLexer<T extends dynamic, U extends Parser<T>>
    implements IReturnTypeLexer<T, U>, ITypeFormalListDeclarationLexer<T, U> {
  const IFunctionTypeLexer();

  U functionType();
}
