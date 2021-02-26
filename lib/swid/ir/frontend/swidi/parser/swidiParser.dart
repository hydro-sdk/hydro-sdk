import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiClassParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationParameterListParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiTypeParser.dart';

class SwidiParser extends SwidiGrammarDefinition
    with
        SwidiClassParser,
        SwidiTypeParser,
        SwidiSimpleDeclarationParser,
        SwidiFunctionDeclarationParameterListParser,
        SwidiFunctionDeclarationParser {
  const SwidiParser();
}
