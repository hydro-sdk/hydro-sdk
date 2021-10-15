import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IClassLexer<T extends dynamic, U extends Parser<T>> {
  const IClassLexer();

  U lexicalClass();
}
