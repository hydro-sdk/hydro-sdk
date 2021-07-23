import 'package:petitparser/petitparser.dart';

abstract class ILetterLexer {
  const ILetterLexer();

  Parser lexLetter();
}
