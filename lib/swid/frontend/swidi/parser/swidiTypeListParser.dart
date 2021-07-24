import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iTypeListParser.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiTypeListParser on SwidiDeclarationGrammarDefinition
    implements ITypeListLexer, ITypeListParser<Parser<List<SwidiInterface>>> {
  @override
  Parser<List<SwidiInterface>> typeList() =>
      super.typeList().map((x) => collectTokens<SwidiInterface>(x));
}
