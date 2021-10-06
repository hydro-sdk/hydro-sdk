import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iDeclarationWithDefaultConstValueLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSimpleDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iDeclarationWithDefaultConstValueParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iSimpleDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';

mixin SwidiSimpleDeclarationParser
    on SwidiGrammarDefinition, SwidiTypeParser, SwidiConstParser
    implements
        ISimpleDeclarationLexer,
        IDeclarationWithDefaultConstValueLexer,
        ISimpleDeclarationParser<Parser<SwidiDeclaration>>,
        IDeclarationWithDefaultConstValueParser<Parser<SwidiDeclaration>> {
  @override
  Parser<SwidiDeclaration> simpleDeclaration() =>
      super.simpleDeclaration().map((x) {
        return SwidiDeclaration(
          name: List.from(x).whereType<Token?>().first?.input ?? "",
          type: List.from(x).whereType<SwidiType>().first,
          defaultConstValue: SwidiConst.fromSwidiEmptyConst(
            swidiEmptyConst: SwidiEmptyConst(),
          ),
        );
      });
}
