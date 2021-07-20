import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstPositionalParameterList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNumberParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstStringParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/util/collectTokens.dart';
import 'package:petitparser/petitparser.dart';

mixin SwidiConstPositionalParameterListParser
    on
        SwidiConstGrammarDefinition,
        SwidiConstStringParser,
        SwidiConstNumberParser,
        SwidiConstParser {
  Parser<SwidiConstPositionalParameterList> constPositionalParameterList() =>
      super.constPositionalParameterList().map((x) {
        final parameters = collectTokens<SwidiConst>(x);

        return SwidiConstPositionalParameterList(
          parameters: parameters,
        );
      });
}
