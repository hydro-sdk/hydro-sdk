import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiNamedParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiPositionalOrOptionalOrNamedParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationParameterListParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiFunctionDeclarationParser
    on
        SwidiGrammarDefinition,
        SwidiSimpleDeclarationParser,
        SwidiFunctionDeclarationParameterListParser {
  Parser<SwidiFunctionDeclaration> functionDeclaration() =>
      super.functionDeclaration().map((x) {
        return SwidiFunctionDeclaration(
          name: x[1].input,
          returnType: collectTokens<SwidiInterface>(x).first,
          optionalParameters: [
            ...collectTokens<SwidiOptionalParameter>(x),
            ...collectTokens<SwidiPositionalOrOptionalOrNamedParameter>(x)
                .map((e) => e.maybeWhen(
                    fromSwidiOptionalParameter: (val) => val,
                    orElse: () => null))
                .where((e) => e != null)
                .toList()
          ],
          positionalParameters: [
            ...collectTokens<SwidiPositionalParameter>(x),
            ...collectTokens<SwidiPositionalOrOptionalOrNamedParameter>(x)
                .map((e) => e.maybeWhen(
                    fromSwidiPositionalParameter: (val) => val,
                    orElse: () => null))
                .where((e) => e != null)
                .toList()
          ],
          namedParameters: [
            ...collectTokens<SwidiNamedParameter>(x),
            ...collectTokens<SwidiPositionalOrOptionalOrNamedParameter>(x)
                .map((e) => e.maybeWhen(
                    fromSwidiNamedParameter: (val) => val, orElse: () => null))
                .where((e) => e != null)
                .toList()
          ],
        );
      });
}
