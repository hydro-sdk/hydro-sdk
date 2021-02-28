import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationNamedParameterParser.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiNamedParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiPositionalOrOptionalOrNamedParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationOptionalParameterParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationPositionalParameterParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiFunctionDeclarationParameterListParser
    on
        SwidiGrammarDefinition,
        SwidiSimpleDeclarationParser,
        SwidiFunctionDeclarationOptionalParameterParser,
        SwidiFunctionDeclarationPositionalParameterParser,
        SwidiFunctionDeclarationNamedParameterParser {
  Parser<List<SwidiPositionalOrOptionalOrNamedParameter>>
      functionDeclarationParameterList() =>
          super.functionDeclarationParameterList().map((x) {
            var res = [
              ...collectTokens<SwidiPositionalParameter>(x)
                  .map((e) => SwidiPositionalOrOptionalOrNamedParameter
                      .fromSwidiPositionalParameter(positionalParameter: e))
                  .toList(),
              ...collectTokens<SwidiOptionalParameter>(x)
                  .map((e) => SwidiPositionalOrOptionalOrNamedParameter
                      .fromSwidiOptionalParameter(optionalParameter: e))
                  .toList(),
              ...collectTokens<SwidiNamedParameter>(x)
                  .map((e) => SwidiPositionalOrOptionalOrNamedParameter
                      .fromSwidiNamedParameter(namedParameter: e))
                  .toList(),
            ];
            return res;
          });
}
