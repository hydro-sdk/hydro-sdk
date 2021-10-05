import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTopLevelDefinitionLexer.dart';

import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class ICompilationUnitLexer<T extends dynamic, U extends Parser<T>>
    implements ITopLevelDefinitionLexer<T, U> {
  const ICompilationUnitLexer();

  U compilationUnit();
}
