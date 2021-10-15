import 'package:meta/meta.dart';
import 'package:petitparser/petitparser.dart';

@optionalTypeArgs
@immutable
abstract class ILetterLexer<T extends dynamic, U extends Parser<T>> {
  const ILetterLexer();

  U lexicalLetter();
}
