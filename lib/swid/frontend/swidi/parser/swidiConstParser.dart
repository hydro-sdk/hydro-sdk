import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNumber.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstString.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNumberParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstStringParser.dart';

mixin SwidiConstParser
    on
        SwidiConstGrammarDefinition,
        SwidiConstNumberParser,
        SwidiConstStringParser {
  Parser<SwidiConst> CONST() => super.CONST().map((x) {
        if (x is SwidiConstNumber) {
          return SwidiConst.fromSwidiConstNumber(
            swidiConstNumber: x,
          );
        } else if (x is SwidiConstString) {
          return SwidiConst.fromSwidiConstString(
            swidiConstString: x,
          );
        }

        return const SwidiConst.fromSwidiEmptyConst(
          swidiEmptyConst: SwidiEmptyConst(),
        );
      });
}
