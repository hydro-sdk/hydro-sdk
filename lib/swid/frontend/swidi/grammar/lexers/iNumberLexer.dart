import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class INumberLexer<T extends dynamic, U extends Parser<T>> {
  const INumberLexer();

  U number();
}
