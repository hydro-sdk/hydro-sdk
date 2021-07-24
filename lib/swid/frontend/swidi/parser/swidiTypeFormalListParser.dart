import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iTypeFormalListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iTypeFormalListParser.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeFormal.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiDeclarationGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeFormalParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiTypeFormalListParser
    on SwidiDeclarationGrammarDefinition, SwidiTypeFormalParser
    implements
        ITypeFormalListLexer,
        ITypeFormalListParser<Parser<List<SwidiTypeFormal>>> {
  @override
  Parser<List<SwidiTypeFormal>> typeFormalList() =>
      super.typeFormalList().map((x) => collectTokens<SwidiTypeFormal>(x));
}
