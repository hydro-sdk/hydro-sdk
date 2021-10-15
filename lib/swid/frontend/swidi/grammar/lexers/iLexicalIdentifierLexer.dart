import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierPartLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierStartLexer.dart';

@optionalTypeArgs
@immutable
abstract class ILexicalIdentifierLexer<T extends dynamic, U extends Parser<T>>
    implements IIdentifierStartLexer<T, U>, IIdentifierPartLexer<T, U> {
  const ILexicalIdentifierLexer();

  U lexicalIdentifier();
}
