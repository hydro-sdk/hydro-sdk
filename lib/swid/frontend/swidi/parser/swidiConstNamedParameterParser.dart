import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiConstNamedParameterParser
    on SwidiConstGrammarDefinition, SwidiConstParser {
  Parser<SwidiConstNamedParameter> constNamedParameter() =>
      super.constNamedParameter().map(
            (x) => SwidiConstNamedParameter(
              name: List.from(x).whereType<Token?>().first?.input ?? "",
              value: (({
                required List<SwidiConst> consts,
              }) =>
                  consts.isNotEmpty
                      ? consts.first
                      : const SwidiConst.fromSwidiEmptyConst(
                          swidiEmptyConst: SwidiEmptyConst(),
                        ))(
                consts: collectTokens<SwidiConst>(x),
              ),
            ),
          );
}
