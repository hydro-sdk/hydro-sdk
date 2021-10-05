import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iCompilationUnitLexer.dart';

import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IStartLexer<T extends dynamic, U extends Parser<T>>
    implements ICompilationUnitLexer<T, U> {
  const IStartLexer();

  U start();
}
