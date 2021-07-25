import 'package:petitparser/petitparser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeLexer.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iTypeListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiTypeListParser on SwidiDeclarationGrammarDefinition
    implements
        ITypeListLexer,
        ITypeLexer,
        ITypeListParser<Parser<List<SwidiInterface>>>,
        ITypeParser<Parser<SwidiInterface>> {
  @override
  Parser<List<SwidiInterface>> typeList() =>
      super.typeList().map((x) => collectTokens<SwidiInterface>(x));
}
