import 'package:hydro_sdk/swid/frontend/swidi/grammar/interfaces/iStringContentDqLexer.dart';
import 'package:petitparser/petitparser.dart';

abstract class IConstStringLexer implements IStringContentDqLexer {
  const IConstStringLexer();

  Parser lexConstString();
}
