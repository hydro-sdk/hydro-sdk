import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNamedParameterList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstParameterList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstPositionalParameterList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstParameterListLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiConstParameterListParser on SwidiConstGrammarDefinition
    implements
        IConstParameterListLexer,
        IConstParameterListParser<Parser<SwidiConstParameterList>> {
  @override
  Parser<SwidiConstParameterList> constParameterList() =>
      super.constParameterList().map(
            (x) => SwidiConstParameterList(
              namedParameters: (({
                required List<SwidiConstNamedParameterList> namedParameterList,
              }) =>
                  namedParameterList.isNotEmpty
                      ? namedParameterList.first.parameters
                      : <SwidiConstNamedParameter>[])(
                namedParameterList:
                    collectTokens<SwidiConstNamedParameterList>(x),
              ),
              positionalParameters: (({
                required List<SwidiConstPositionalParameterList>
                    positionalParameterList,
              }) =>
                  positionalParameterList.isNotEmpty
                      ? positionalParameterList.first.parameters
                      : <SwidiConst>[])(
                positionalParameterList:
                    collectTokens<SwidiConstPositionalParameterList>(x),
              ),
            ),
          );
}
