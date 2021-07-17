import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeFormal.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';
import 'package:petitparser/petitparser.dart';

mixin SwidiTypeFormalParser
    on SwidiDeclarationGrammarDefinition, SwidiTypeParser {
  Parser<SwidiTypeFormal> typeFormal() => super.typeFormal().map(
        (x) => SwidiTypeFormal(
          name: List.from(x).whereType<Token?>().first?.input ?? "",
          bound: collectTokens<SwidiInterface>(x).first,
        ),
      );
}
