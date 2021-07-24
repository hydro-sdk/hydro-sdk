import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iDeclarationWithDefaultConstValueLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSimpleDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iDeclarationWithDefaultConstValueParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iSimpleDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';
import 'package:petitparser/petitparser.dart';

mixin SwidiDeclarationWithConstValueParser on SwidiGrammarDefinition
    implements
        IDeclarationWithDefaultConstValueLexer,
        ISimpleDeclarationLexer,
        IConstLexer,
        IDeclarationWithDefaultConstValueParser<Parser<SwidiDeclaration>>,
        ISimpleDeclarationParser<Parser<SwidiDeclaration>>,
        IConstParser<Parser<SwidiConst>> {
  @override
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
