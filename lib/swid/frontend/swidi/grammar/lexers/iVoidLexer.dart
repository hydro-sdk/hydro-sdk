import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IVoidLexer<T extends dynamic, U extends Parser<T>> {
  const IVoidLexer();

  U lexicalVoid();
}
