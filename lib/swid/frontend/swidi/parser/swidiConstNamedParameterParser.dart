import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstNamedParameterLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiConstNamedParameterParser
    on SwidiConstGrammarDefinition, SwidiConstParser
    implements
        IConstNamedParameterLexer,
        IConstLexer,
        IConstNamedParameterParser<Parser<SwidiConstNamedParameter>>,
        IConstParser<Parser<SwidiConst>> {
  @override
  Parser<SwidiConstNamedParameter> constNamedParameter() =>
      super.constNamedParameter().map(
            (x) => SwidiConstNamedParameter(
              name: List.from(x).whereType<Token?>().first?.input ?? "",
              value: (({
                required final List<SwidiConst> consts,
              }) =>
                  consts.isNotEmpty
                      ? consts.first
                      : SwidiConst.fromSwidiEmptyConst(
                          swidiEmptyConst: SwidiEmptyConst(),
                        ))(
                consts: collectTokens<SwidiConst>(x),
              ),
            ),
          );
}
