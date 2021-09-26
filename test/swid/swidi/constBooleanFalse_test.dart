import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstBoolean.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstBooleanFalse.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstBooleanFalseParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstBooleanParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstBooleanTrueParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstFunctionInvocationParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstMapParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNamedParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNamedParameterParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNumberParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstPositionalParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstStringParser.dart';
import 'lib/parserTestHarness.dart';

class SimpleConstBooleanParser extends SwidiGrammarDefinition
    with
        SwidiConstBooleanFalseParser,
        SwidiConstBooleanTrueParser,
        SwidiConstBooleanParser {
  const SimpleConstBooleanParser();
}

class SimpleConstParser extends SwidiGrammarDefinition
    with
        SwidiConstNumberParser,
        SwidiConstStringParser,
        SwidiConstBooleanFalseParser,
        SwidiConstBooleanTrueParser,
        SwidiConstBooleanParser,
        SwidiConstParser,
        SwidiConstFunctionInvocationParser,
        SwidiConstParameterListParser,
        SwidiConstPositionalParameterListParser,
        SwidiConstNamedParameterParser,
        SwidiConstNamedParameterListParser,
        SwidiConstMapParser {
  const SimpleConstParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(input: "false"),
      parser: const SimpleConstBooleanParser()
          .build(start: const SimpleConstBooleanParser().constBoolean),
      result: SwidiConstBoolean.fromSwidiConstBooleanFalse(
        swidiConstBooleanFalse: SwidiConstBooleanFalse(),
      ),
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(input: "false"),
      parser: const SimpleConstParser()
          .build(start: const SimpleConstParser().lexicalConst),
      result: SwidiConst.fromSwidiConstBoolean(
        swidiConstBoolean: SwidiConstBoolean.fromSwidiConstBooleanFalse(
          swidiConstBooleanFalse: SwidiConstBooleanFalse(),
        ),
      ),
    );
  }, tags: "swid");
}
