import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNumberParser.dart';

mixin SwidiConstParser on SwidiConstGrammarDefinition, SwidiConstNumberParser {
  Parser<SwidiConst> CONST() => super.CONST().map((x) {
        return SwidiConst.fromSwidiConstNumber(swidiConstNumber: x);
      });
}
