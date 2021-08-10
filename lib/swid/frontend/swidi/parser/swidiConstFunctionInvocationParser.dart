import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstParameterList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstFunctionInvocationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstParameterListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstFunctionInvocationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiConstFunctionInvocationParser on SwidiConstGrammarDefinition
    implements
        IConstFunctionInvocationLexer,
        IConstParameterListLexer,
        IConstFunctionInvocationParser<Parser<SwidiConstFunctionInvocation>>,
        IConstParameterListParser<Parser<SwidiConstParameterList>> {
  @override
  Parser<SwidiConstFunctionInvocation> constFunctionInvocation() =>
      super.constFunctionInvocation().map(
            (x) => (({
              required final List<SwidiConstParameterList> parameterList,
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
