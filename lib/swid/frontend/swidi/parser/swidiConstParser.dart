import 'package:petitparser/petitparser.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNumber.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstString.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstFunctionInvocationLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstNumberLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/lexers/iConstStringLexer.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiConstGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstFunctionInvocationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstNumberParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/parsers/iConstStringParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNumberParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstStringParser.dart';

mixin SwidiConstParser
    on
        SwidiConstGrammarDefinition,
        SwidiConstNumberParser,
        SwidiConstStringParser
    implements
        IConstLexer,
        IConstNumberLexer,
        IConstStringLexer,
        IConstFunctionInvocationLexer,
        IConstParser<Parser<SwidiConst>>,
        IConstNumberParser<Parser<SwidiConstNumber>>,
        IConstStringParser<Parser<SwidiConstString>>,
        IConstFunctionInvocationParser<Parser<SwidiConstFunctionInvocation>> {
  @override
  Parser<SwidiConst> lexicalConst() => super.lexicalConst().map((x) {
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
