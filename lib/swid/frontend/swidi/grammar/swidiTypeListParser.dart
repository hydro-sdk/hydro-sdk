import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';
import 'package:petitparser/petitparser.dart';

mixin SwidiTypeListParser
    on SwidiDeclarationGrammarDefinition, SwidiTypeParser {
  Parser<List<SwidiInterface>> typeList() =>
      super.typeList().map((x) => collectTokens<SwidiInterface>(x));
}
