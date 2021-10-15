import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iDeclarationWithDefaultConstValueLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationNamedParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSimpleDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iDeclarationWithDefaultConstValueParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionDeclarationNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iSimpleDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';

mixin SwidiFunctionDeclarationNamedParameterParser
    on
        SwidiGrammarDefinition,
        SwidiSimpleDeclarationParser
    implements
        IFunctionDeclarationNamedParameterLexer,
        IDeclarationWithDefaultConstValueLexer,
        ISimpleDeclarationLexer,
        IFunctionDeclarationNamedParameterParser<
            Parser<SwidiFunctionDeclarationNamedParameter?>>,
        IDeclarationWithDefaultConstValueParser<Parser<SwidiDeclaration>>,
        ISimpleDeclarationParser<Parser<SwidiDeclaration>> {
  @override
  Parser<SwidiFunctionDeclarationNamedParameter?>
      functionDeclarationNamedParameter() =>
          super.functionDeclarationNamedParameter().map((x) {
            if (x is SwidiDeclaration) {
              return SwidiFunctionDeclarationNamedParameter(declaration: x);
            }
            return null;
          });
}
