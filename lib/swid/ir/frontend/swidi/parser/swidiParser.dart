import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiClassParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationNamedParameterParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationOptionalParameterParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationParameterListParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationPositionalParameterParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiLibraryScopePrefixParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiTypeParser.dart';

class SwidiParser extends SwidiGrammarDefinition
    with
        SwidiClassParser,
        SwidiLibraryScopePrefixParser,
        SwidiTypeParser,
        SwidiSimpleDeclarationParser,
        SwidiFunctionDeclarationOptionalParameterParser,
        SwidiFunctionDeclarationPositionalParameterParser,
        SwidiFunctionDeclarationNamedParameterParser,
        SwidiFunctionDeclarationParameterListParser,
        SwidiFunctionDeclarationParser {
  const SwidiParser();
}
