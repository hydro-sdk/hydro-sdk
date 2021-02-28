import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';
import 'package:petitparser/petitparser.dart';

mixin SwidiFunctionDeclarationPositionalParameterParser
    on SwidiGrammarDefinition, SwidiSimpleDeclarationParser {
  Parser<SwidiPositionalParameter> functionDeclarationPositionalParameter() =>
      super.functionDeclarationPositionalParameter().map((x) {
        if (x is SwidiDeclaration) {
          return SwidiPositionalParameter(declaration: x);
        }
        return null;
      });
}
