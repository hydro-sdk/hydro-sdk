import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IStringContentSqLexer<T extends dynamic, U extends Parser<T>> {
  const IStringContentSqLexer();

  U stringContentSq();
}
