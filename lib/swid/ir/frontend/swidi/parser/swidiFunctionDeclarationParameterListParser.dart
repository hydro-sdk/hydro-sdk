import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiPositionalOrOptionalParameter.dart';
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
        SwidiFunctionDeclarationPositionalParameterParser {
  Parser<List<SwidiPositionalOrOptionalParameter>>
      functionDeclarationParameterList() =>
          super.functionDeclarationParameterList().map((x) {
            var res = [
              ...collectTokens<SwidiPositionalParameter>(x)
                  .map((e) => SwidiPositionalOrOptionalParameter
                      .fromSwidiPositionalParameter(positionalParameter: e))
                  .toList(),
              ...collectTokens<SwidiOptionalParameter>(x)
                  .map((e) => SwidiPositionalOrOptionalParameter
                      .fromSwidiOptionalParameter(optionalParameter: e))
                  .toList(),
            ];
            return res;
          });
}
