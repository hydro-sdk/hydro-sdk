import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstParameterListLexer.dart';
import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNamedParameterList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstParameterList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstPositionalParameterList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNamedParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNumberParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstPositionalParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstStringParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';

mixin SwidiConstParameterListParser
    on
        SwidiConstGrammarDefinition,
        SwidiConstStringParser,
        SwidiConstNumberParser,
        SwidiConstNamedParameterParser,
        SwidiConstNamedParameterListParser,
        SwidiConstPositionalParameterListParser,
        SwidiConstParser
    implements IConstParameterListLexer {
  Parser<SwidiConstParameterList> constParameterList() =>
      super.lexConstParameterList().map(
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
