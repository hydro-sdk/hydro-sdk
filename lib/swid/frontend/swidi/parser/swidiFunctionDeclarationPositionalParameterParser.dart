import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';

mixin SwidiFunctionDeclarationPositionalParameterParser
    on SwidiGrammarDefinition, SwidiSimpleDeclarationParser {
  Parser<SwidiPositionalParameter?> functionDeclarationPositionalParameter() =>
      super.functionDeclarationPositionalParameter().map((x) {
        if (x is SwidiDeclaration) {
          return SwidiPositionalParameter(declaration: x);
        }
        return null;
      });
}
