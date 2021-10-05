import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class IAbstractLexer<T extends dynamic, U extends Parser<T>> {
  const IAbstractLexer();

  U lexicalAbstract();
}
