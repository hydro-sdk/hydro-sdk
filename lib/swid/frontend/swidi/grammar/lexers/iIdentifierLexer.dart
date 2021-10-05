import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iLexicalIdentifierLexer.dart';
import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IIdentifierLexer<T extends dynamic, U extends Parser<T>>
    implements ILexicalIdentifierLexer<T, U> {
  const IIdentifierLexer();

  U identifier();
}
