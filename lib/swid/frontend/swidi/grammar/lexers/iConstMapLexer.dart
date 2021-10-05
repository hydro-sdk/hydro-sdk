import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstLexer.dart';
import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IConstMapLexer<T extends dynamic, U extends Parser<T>>
    implements IConstLexer<T, U> {
  const IConstMapLexer();

  U constMap();
}
