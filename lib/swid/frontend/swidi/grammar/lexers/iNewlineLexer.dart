import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class INewlineLexer<T extends dynamic, U extends Parser<T>> {
  const INewlineLexer();

  U newline();
}
