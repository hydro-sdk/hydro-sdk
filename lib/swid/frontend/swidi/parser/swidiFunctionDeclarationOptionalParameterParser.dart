import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationOptionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionDeclarationOptionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';

mixin SwidiFunctionDeclarationOptionalParameterParser
    on
        SwidiGrammarDefinition,
        SwidiSimpleDeclarationParser
    implements
        IFunctionDeclarationOptionalParameterLexer,
        IFunctionDeclarationOptionalParameterParser<
            Parser<SwidiOptionalParameter?>> {
  @override
  Parser<SwidiOptionalParameter?> functionDeclarationOptionalParameter() =>
      super.functionDeclarationOptionalParameter().map((x) {
        if (x is SwidiDeclaration) {
          return SwidiOptionalParameter(declaration: x);
        }
        return null;
      });
}
