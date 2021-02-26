import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';

mixin SwidiFunctionDeclarationParameterListParser
    on SwidiGrammarDefinition, SwidiSimpleDeclarationParser {
  Parser<SwidiDeclaration> functionDeclarationParameterList() =>
      super.functionDeclarationParameterList().map((x) {
        return List.from(x)
            .where((e) => e != null)
            .whereType<SwidiDeclaration>()
            .toList()
            .first;
      });
}
