import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeListLexer.dart';

import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class ITypeArgumentsLexer<T extends dynamic, U extends Parser<T>>
    implements ITypeListLexer<T, U> {
  const ITypeArgumentsLexer();

  U typeArguments();
}
