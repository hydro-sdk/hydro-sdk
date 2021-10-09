import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iTypeListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiTypeListParser
    on SwidiDeclarationGrammarDefinition, SwidiTypeParser
    implements
        ITypeListLexer,
        ITypeLexer,
        ITypeListParser<Parser<List<SwidiType>>>,
        ITypeParser<Parser<SwidiType?>> {
  @override
  Parser<List<SwidiType>> typeList() =>
      super.typeList().map((x) => collectTokens<SwidiType>(x));
}
