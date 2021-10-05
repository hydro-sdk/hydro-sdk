import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iClassDefinitionLexer.dart';

@optionalTypeArgs
@immutable
abstract class ITopLevelDefinitionLexer<T extends dynamic, U extends Parser<T>>
    implements IClassDefinitionLexer<T, U> {
  const ITopLevelDefinitionLexer();

  U topLevelDefinition();
}
