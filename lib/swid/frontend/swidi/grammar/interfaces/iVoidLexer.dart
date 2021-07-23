import 'package:petitparser/petitparser.dart';

abstract class IVoidLexer {
  const IVoidLexer();

  Parser lexVoid();
}
