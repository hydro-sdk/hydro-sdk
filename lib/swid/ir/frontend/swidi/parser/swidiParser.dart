import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiClassParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationParser.dart';

class SwidiParser extends SwidiGrammarDefinition
    with SwidiClassParser, SwidiFunctionDeclarationParser {
  const SwidiParser();
}
