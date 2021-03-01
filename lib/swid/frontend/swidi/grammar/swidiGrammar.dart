import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';

class SwidiGrammar extends GrammarParser {
  SwidiGrammar() : super(SwidiGrammarDefinition());
}
