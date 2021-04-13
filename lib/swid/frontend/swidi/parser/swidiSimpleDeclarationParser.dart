import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiTypeParser.dart';

mixin SwidiSimpleDeclarationParser
    on SwidiGrammarDefinition, SwidiTypeParser, SwidiConstParser {
  Parser<SwidiDeclaration> simpleDeclaration() =>
      super.simpleDeclaration().map((x) {
        return SwidiDeclaration(
            name: List.from(x).whereType<Token>()?.first?.input ?? "",
            type: List.from(x).whereType<SwidiInterface>()?.first);
      });

  Parser<SwidiDeclaration> declarationWithDefaultConstValue() =>
      super.declarationWithDefaultConstValue().map((x) {
        final declarations = collectTokens<SwidiDeclaration>(x);
        final consts = collectTokens<SwidiConst>(x);
        
        return SwidiDeclaration.clone(
          swidiDeclaration: declarations.first,
          defaultConstValue: SwidiConst.clone(
            swidiConst: consts.first,
          ),
        );
      });
}
