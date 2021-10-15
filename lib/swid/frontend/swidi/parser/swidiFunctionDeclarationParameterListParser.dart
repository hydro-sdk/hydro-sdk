import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationPositionalOrOptionalOrNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationPositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iDeclarationWithDefaultConstValueLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iFunctionDeclarationParameterListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iSimpleDeclarationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iDeclarationWithDefaultConstValueParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iFunctionDeclarationParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iSimpleDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionDeclarationNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionDeclarationOptionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiFunctionDeclarationPositionalParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiFunctionDeclarationParameterListParser
    on
        SwidiGrammarDefinition,
        SwidiSimpleDeclarationParser,
        SwidiFunctionDeclarationOptionalParameterParser,
        SwidiFunctionDeclarationPositionalParameterParser,
        SwidiFunctionDeclarationNamedParameterParser
    implements
        IFunctionDeclarationParameterListLexer,
        IDeclarationWithDefaultConstValueLexer,
        ISimpleDeclarationLexer,
        IFunctionDeclarationParameterListParser<
            Parser<
                List<
                    SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter>>>,
        IDeclarationWithDefaultConstValueParser<Parser<SwidiDeclaration>>,
        ISimpleDeclarationParser<Parser<SwidiDeclaration>> {
  @override
  Parser<List<SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter>>
      functionDeclarationParameterList() => super
          .functionDeclarationParameterList()
          .map(
            (x) => [
              ...collectTokens<SwidiFunctionDeclarationPositionalParameter>(x)
                  .map(
                    (e) =>
                        SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter
                            .fromSwidiFunctionDeclarationPositionalParameter(
                      positionalParameter: e,
                    ),
                  )
                  .toList(),
              ...collectTokens<SwidiFunctionDeclarationOptionalParameter>(x)
                  .map(
                    (e) =>
                        SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter
                            .fromSwidiFunctionDeclarationOptionalParameter(
                      optionalParameter: e,
                    ),
                  )
                  .toList(),
              ...collectTokens<SwidiFunctionDeclarationNamedParameter>(x)
                  .map(
                    (e) =>
                        SwidiFunctionDeclarationPositionalOrOptionalOrNamedParameter
                            .fromSwidiFunctionDeclarationNamedParameter(
                      namedParameter: e,
                    ),
                  )
                  .toList(),
            ],
          );
}
