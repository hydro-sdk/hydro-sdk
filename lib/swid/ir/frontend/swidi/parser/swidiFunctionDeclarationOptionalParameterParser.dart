import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';

mixin SwidiFunctionDeclarationOptionalParameterParser
    on SwidiGrammarDefinition, SwidiSimpleDeclarationParser {
  Parser<SwidiOptionalParameter> functionDeclarationOptionalParameter() =>
      super.functionDeclarationOptionalParameter().map((x) {
        if (x is SwidiDeclaration) {
          return SwidiOptionalParameter(declaration: x);
        }
        return null;
      });
}
