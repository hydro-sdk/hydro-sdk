import 'package:collection/collection.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeArgumentList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeArgumentsLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iTypeArgumentListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iTypeListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiTypeArgumentListParser on SwidiDeclarationGrammarDefinition
    implements
        ITypeArgumentsLexer,
        ITypeListLexer,
        ITypeArgumentListParser<Parser<SwidiTypeArgumentList>>,
        ITypeListParser<Parser<List<SwidiType>>> {
  @override
  Parser<SwidiTypeArgumentList> typeArguments() =>
      super.typeArguments().map((x) {
        final typeList = collectTokens<List<SwidiType>>(x);

        return SwidiTypeArgumentList(
          typeList: typeList.isNotEmpty
              ? typeList
                  .reduce(
                    (value, element) => [
                      ...value,
                      ...element,
                    ],
                  )
                  .map(
                    (x) => x.maybeWhen(
                      fromSwidiInterface: (val) => val,
                      orElse: () => null,
                    ),
                  )
                  .whereNotNull()
                  .toList()
              : [],
        );
      });
}
