import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iNewlineLexer.dart';
import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IHashbangLexer<T extends dynamic, U extends Parser<T>>
    implements INewlineLexer<T, U> {
  const IHashbangLexer();

  U hashbang();
}
