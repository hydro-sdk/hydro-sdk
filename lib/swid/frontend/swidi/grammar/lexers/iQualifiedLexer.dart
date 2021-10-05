import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iIdentifierLexer.dart';

@optionalTypeArgs
@immutable
abstract class IQualifiedLexer<T extends dynamic, U extends Parser<T>>
    implements IIdentifierLexer<T, U> {
  const IQualifiedLexer();

  U qualified();
}
