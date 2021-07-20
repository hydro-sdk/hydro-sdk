import 'dart:developer';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstParameterList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNumberParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstStringParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';
import 'package:petitparser/petitparser.dart';

mixin SwidiConstParameterListParser
    on
        SwidiConstGrammarDefinition,
        SwidiConstStringParser,
        SwidiConstNumberParser,
        SwidiConstNamedParameterParser,
        SwidiConstParser {
  Parser<SwidiConstParameterList> constParameterList() =>
      super.constParameterList().map((x) {
        // debugger();
        // print(x);

        if (x is List) {
          final positionalParameters = collectTokens<SwidiConst>(x);
          final namedParameters = collectTokens<SwidiConstNamedParameter>(x);

          return SwidiConstParameterList(
            positionalParameters: positionalParameters,
            namedParameters: namedParameters,
          );
        } else if (x is SwidiConstNamedParameter) {
          return SwidiConstParameterList(
            namedParameters: [x],
            positionalParameters: [],
          );
        } else if (x is SwidiConst) {
          return SwidiConstParameterList(
            positionalParameters: [x],
            namedParameters: [],
          );
        }

        return SwidiConstParameterList(
          namedParameters: [],
          positionalParameters: [],
        );
      });
}
