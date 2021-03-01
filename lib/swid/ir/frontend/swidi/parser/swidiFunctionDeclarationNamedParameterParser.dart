import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiNamedParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';

mixin SwidiFunctionDeclarationNamedParameterParser
    on SwidiGrammarDefinition, SwidiSimpleDeclarationParser {
  Parser<SwidiNamedParameter> functionDeclarationNamedParameter() =>
      super.functionDeclarationNamedParameter().map((x) {
        if (x is SwidiDeclaration) {
          return SwidiNamedParameter(declaration: x);
        }
        return null;
      });
}
