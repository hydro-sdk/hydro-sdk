import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IWhitespaceLexer<T extends dynamic, U extends Parser<T>> {
  const IWhitespaceLexer();

  U lexicalWhitespace();
}
