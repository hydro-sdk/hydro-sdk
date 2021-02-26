import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';

mixin SwidiFunctionDeclarationParameterListParser
    on SwidiGrammarDefinition, SwidiSimpleDeclarationParser {
  Parser<List<SwidiDeclaration>> functionDeclarationParameterList() =>
      super.functionDeclarationParameterList().map((x) {
        var res = [
          ...List.from(x)
              .where((e) => e != null)
              .whereType<SwidiDeclaration>()
              .toList(),
          ...List.from(x)
              .where((e) => e != null)
              .whereType<List>()
              .where((e) => e != null)
              .reduce((value, element) => [...value, ...element])
              .where((e) => e != null)
              .whereType<SwidiDeclaration>()
              .toList()
        ];
        return res;
      });
}
