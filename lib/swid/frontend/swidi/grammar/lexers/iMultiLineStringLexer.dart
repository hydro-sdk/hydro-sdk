import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IMultiLineStringLexer<T extends dynamic, U extends Parser<T>> {
  const IMultiLineStringLexer();

  U multiLineString();
}
