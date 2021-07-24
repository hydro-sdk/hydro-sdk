import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionDeclarationNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';

mixin SwidiFunctionDeclarationNamedParameterParser
    on SwidiGrammarDefinition, SwidiSimpleDeclarationParser
    implements
        IFunctionDeclarationNamedParameterLexer,
        IFunctionDeclarationNamedParameterParser<Parser<SwidiNamedParameter?>> {
  @override
  Parser<SwidiNamedParameter?> functionDeclarationNamedParameter() =>
      super.functionDeclarationNamedParameter().map((x) {
        if (x is SwidiDeclaration) {
          return SwidiNamedParameter(declaration: x);
        }
        return null;
      });
}
