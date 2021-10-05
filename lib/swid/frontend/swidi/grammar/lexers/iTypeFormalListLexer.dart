import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeFormalLexer.dart';

import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class ITypeFormalListLexer<T extends dynamic, U extends Parser<T>>
    implements ITypeFormalLexer<T, U> {
  const ITypeFormalListLexer();

  U typeFormalList();
}
