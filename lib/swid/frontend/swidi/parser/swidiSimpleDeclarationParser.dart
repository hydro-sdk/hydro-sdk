import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';

mixin SwidiSimpleDeclarationParser on SwidiGrammarDefinition, SwidiTypeParser {
  Parser<SwidiDeclaration> simpleDeclaration() =>
      super.simpleDeclaration().map((x) {
        return SwidiDeclaration(
            name: List.from(x).whereType<Token>()?.first?.input ?? "",
            type: List.from(x).whereType<SwidiInterface>()?.first);
      });
}
