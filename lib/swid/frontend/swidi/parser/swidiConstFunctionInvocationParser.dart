import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstParameterList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNamedParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNumberParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstPositionalParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstStringParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';
import 'package:petitparser/petitparser.dart';

mixin SwidiConstFunctionInvocationParser
    on
        SwidiConstGrammarDefinition,
        SwidiConstStringParser,
        SwidiConstNumberParser,
        SwidiConstPositionalParameterListParser,
        SwidiConstNamedParameterParser,
        SwidiConstNamedParameterListParser,
        SwidiConstParameterListParser,
        SwidiConstParser {
  Parser<SwidiConstFunctionInvocation> constFunctionInvocation() =>
      super.constFunctionInvocation().map(
            (x) => (({
              required List<SwidiConstParameterList> parameterList,
            }) =>
                SwidiConstFunctionInvocation(
                  value: List.from(x).whereType<Token?>().first?.input ?? "",
                  positionalParameters: parameterList.isNotEmpty
                      ? parameterList.first.positionalParameters
                      : [],
                  namedParameters: parameterList.isNotEmpty
                      ? Map.fromEntries(
                          parameterList.first.namedParameters.map(
                            (x) => MapEntry(
                              x.name,
                              x.value,
                            ),
                          ),
                        )
                      : {},
                ))(
              parameterList: collectTokens<SwidiConstParameterList>(x),
            ),
          );
}
