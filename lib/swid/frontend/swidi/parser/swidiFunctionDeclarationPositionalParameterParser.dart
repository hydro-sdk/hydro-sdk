import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iDeclarationWithDefaultConstValueLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSimpleDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iDeclarationWithDefaultConstValueParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iSimpleDeclarationParser.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationPositionalParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionDeclarationPositionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';

mixin SwidiFunctionDeclarationPositionalParameterParser
    on
        SwidiGrammarDefinition,
        SwidiSimpleDeclarationParser
    implements
        IFunctionDeclarationPositionalParameterLexer,
        IDeclarationWithDefaultConstValueLexer,
        ISimpleDeclarationLexer,
        IFunctionDeclarationPositionalParameterParser<
            Parser<SwidiPositionalParameter?>>,
        IDeclarationWithDefaultConstValueParser<Parser<SwidiDeclaration>>,
        ISimpleDeclarationParser<Parser<SwidiDeclaration>> {
  @override
  Parser<SwidiPositionalParameter?> functionDeclarationPositionalParameter() =>
      super.functionDeclarationPositionalParameter().map((x) {
        if (x is SwidiDeclaration) {
          return SwidiPositionalParameter(declaration: x);
        }
        return null;
      });
}
