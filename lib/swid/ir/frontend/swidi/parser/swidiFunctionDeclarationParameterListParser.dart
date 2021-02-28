import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiPositionalOrOptionalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationPositionalParameterParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';

List<T> _collect<T>(List<dynamic> list) {
  return [
    ...List.from(list).where((e) => e != null).whereType<T>().toList(),
    ...((({
      List<List<dynamic>> nested,
    }) =>
                nested.isNotEmpty
                    ? nested.reduce((value, element) => [...value, ...element])
                    : [])(
            nested: List.from(list)
                .where((e) => e != null)
                .whereType<List>()
                .toList()
                .map((e) => _collect(e))
                .toList())
        .where((e) => e != null)
        .whereType<T>()
        .toList())
  ];
}

mixin SwidiFunctionDeclarationParameterListParser
    on
        SwidiGrammarDefinition,
        SwidiSimpleDeclarationParser,
        SwidiFunctionDeclarationPositionalParameterParser {
  Parser<List<SwidiPositionalOrOptionalParameter>>
      functionDeclarationParameterList() =>
          super.functionDeclarationParameterList().map((x) {
            var res = [
              ..._collect<SwidiPositionalParameter>(x)
                  .map((e) => SwidiPositionalOrOptionalParameter
                      .fromSwidiPositionalParameter(positionalParameter: e))
                  .toList(),
              ..._collect<SwidiOptionalParameter>(x)
                  .map((e) => SwidiPositionalOrOptionalParameter
                      .fromSwidiOptionalParameter(optionalParameter: e))
                  .toList(),
            ];
            return res;
          });
}
