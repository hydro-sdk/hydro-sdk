import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeFormal.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeFormalList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeFormalListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiTypeFormalListDeclarationParser
    on SwidiDeclarationGrammarDefinition, SwidiTypeFormalListParser {
  Parser<SwidiTypeFormalList> typeFormalListDeclaration() =>
      super.typeFormalListDeclaration().map((x) {
        final typeFormalList = collectTokens<List<SwidiTypeFormal>>(x);

        return SwidiTypeFormalList(
          typeFormalList: typeFormalList.isNotEmpty
              ? typeFormalList.reduce((value, element) => [
                    ...value,
                    ...element,
                  ])
              : [],
        );
      });
}
