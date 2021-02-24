import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:petitparser/petitparser.dart';

class SwidiGrammar extends GrammarParser {
  SwidiGrammar() : super(SwidiGrammarDefinition());
}
