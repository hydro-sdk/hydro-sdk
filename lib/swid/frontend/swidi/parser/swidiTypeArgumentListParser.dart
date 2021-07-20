import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeArgumentList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiTypeListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiTypeArgumentListParser
    on SwidiDeclarationGrammarDefinition, SwidiTypeListParser {
  Parser<SwidiTypeArgumentList> typeArguments() =>
      super.typeArguments().map((x) {
        final typeList = collectTokens<List<SwidiInterface>>(x);

        return SwidiTypeArgumentList(
          typeList: typeList.isNotEmpty
              ? typeList.reduce((value, element) => [
                    ...value,
                    ...element,
                  ])
              : [],
        );
      });
}