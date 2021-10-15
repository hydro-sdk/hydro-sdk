import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstBooleanFalseLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstBooleanTrueLexer.dart';

@optionalTypeArgs
@immutable
abstract class IConstBooleanLexer<T extends dynamic, U extends Parser<T>>
    implements IConstBooleanTrueLexer<T, U>, IConstBooleanFalseLexer<T, U> {
  const IConstBooleanLexer();

  U constBoolean();
}
