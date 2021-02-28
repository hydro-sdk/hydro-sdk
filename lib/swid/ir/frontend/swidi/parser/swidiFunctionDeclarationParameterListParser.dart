import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiFunctionDeclarationPositionalParameterParser.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiSimpleDeclarationParser.dart';

List<SwidiPositionalParameter> _collect(List<dynamic> list) {
  return [
    ...List.from(list)
        .where((e) => e != null)
        .whereType<SwidiPositionalParameter>()
        .toList(),
    ...((({
      List<List<SwidiPositionalParameter>> nested,
    }) =>
            nested.isNotEmpty
                ? nested.reduce((value, element) => [...value, ...element])
                : [])(
        nested: List.from(list)
            .where((e) => e != null)
            .whereType<List>()
            .toList()
            .map((e) => _collect(e))
            .toList()))
  ];
}

mixin SwidiFunctionDeclarationParameterListParser
    on
        SwidiGrammarDefinition,
        SwidiSimpleDeclarationParser,
        SwidiFunctionDeclarationPositionalParameterParser {
  Parser<List<SwidiPositionalParameter>> functionDeclarationParameterList() =>
      super.functionDeclarationParameterList().map((x) {
        var res = [..._collect(x)];
        return res;
      });
}
