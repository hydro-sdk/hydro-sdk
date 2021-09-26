import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiStaticFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iStaticFunctionDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iStaticFunctionDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiStaticFunctionDeclarationParser
    on
        SwidiGrammarDefinition,
        SwidiFunctionDeclarationParser
    implements
        IStaticFunctionDeclarationLexer,
        IFunctionDeclarationLexer,
        IStaticFunctionDeclarationParser<
            Parser<SwidiStaticFunctionDeclaration>>,
        IFunctionDeclarationParser<Parser<SwidiFunctionDeclaration>> {
  @override
  Parser<SwidiStaticFunctionDeclaration> staticFunctionDeclaration() =>
      super.staticFunctionDeclaration().map(
            (x) => SwidiStaticFunctionDeclaration(
              functionDeclaration:
                  collectTokens<SwidiFunctionDeclaration>(x).first,
            ),
          );
}
