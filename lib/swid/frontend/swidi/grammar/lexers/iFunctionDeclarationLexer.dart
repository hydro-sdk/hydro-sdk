import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iReturnTypeLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeFormalListDeclarationLexer.dart';

@optionalTypeArgs
@immutable
abstract class IFunctionDeclarationLexer<T extends dynamic, U extends Parser<T>>
    implements
        IReturnTypeLexer<T, U>,
        IIdentifierLexer<T, U>,
        ITypeFormalListDeclarationLexer<T, U> {
  const IFunctionDeclarationLexer();

  U functionDeclaration();
}
