import 'package:petitparser/petitparser.dart';

abstract class IConstNumberLexer {
  const IConstNumberLexer();

  Parser lexConstNumber();
}
