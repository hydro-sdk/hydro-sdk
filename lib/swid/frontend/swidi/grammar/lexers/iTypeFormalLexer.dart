import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeLexer.dart';

@optionalTypeArgs
@immutable
abstract class ITypeFormalLexer<T extends dynamic, U extends Parser<T>>
    implements IIdentifierLexer<T, U>, ITypeLexer<T, U> {
  const ITypeFormalLexer();

  U typeFormal();
}
