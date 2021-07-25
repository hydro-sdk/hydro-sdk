import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeArgumentList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeArgumentsLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iTypeArgumentListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iTypeListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiTypeArgumentListParser
    on SwidiDeclarationGrammarDefinition, SwidiTypeListParser
    implements
        ITypeArgumentsLexer,
        ITypeListLexer,
        ITypeArgumentListParser<Parser<SwidiTypeArgumentList>>,
        ITypeListParser<Parser<List<SwidiInterface>>> {
  @override
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
