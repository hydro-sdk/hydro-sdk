import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNumber.dart';
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

class SimpleConstFunctionInvocationParser extends SwidiGrammarDefinition
    with
        SwidiConstStringParser,
        SwidiConstNumberParser,
        SwidiConstBooleanFalseParser,
        SwidiConstBooleanTrueParser,
        SwidiConstBooleanParser,
        SwidiConstParser,
        SwidiConstNamedParameterParser,
        SwidiConstNamedParameterListParser,
        SwidiConstPositionalParameterListParser,
        SwidiConstParameterListParser,
        SwidiConstFunctionInvocationParser,
        SwidiConstMapParser {
  const SimpleConstFunctionInvocationParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        "myFunction(foo : 100,)",
      ]),
      parser: const SimpleConstFunctionInvocationParser().build(
          start: const SimpleConstFunctionInvocationParser()
              .constFunctionInvocation),
      result: SwidiConstFunctionInvocation(
        value: "myFunction",
        positionalParameters: [],
        namedParameters: {
          "foo": SwidiConst.fromSwidiConstNumber(
            swidiConstNumber: SwidiConstNumber(
              value: "100",
            ),
          ),
        },
      ),
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        "myFunction( foo:100,)",
      ]),
      parser: const SimpleConstFunctionInvocationParser().build(
          start: const SimpleConstFunctionInvocationParser()
              .constFunctionInvocation),
      result: SwidiConstFunctionInvocation(
        value: "myFunction",
        positionalParameters: [],
        namedParameters: {
          "foo": SwidiConst.fromSwidiConstNumber(
            swidiConstNumber: SwidiConstNumber(
              value: "100",
            ),
          ),
        },
      ),
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        "myFunction(foo : 100)",
      ]),
      parser: const SimpleConstFunctionInvocationParser().build(
          start: const SimpleConstFunctionInvocationParser()
              .constFunctionInvocation),
      result: SwidiConstFunctionInvocation(
        value: "myFunction",
        positionalParameters: [],
        namedParameters: {
          "foo": SwidiConst.fromSwidiConstNumber(
            swidiConstNumber: SwidiConstNumber(
              value: "100",
            ),
          ),
        },
      ),
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        "myFunction(foo:100)",
      ]),
      parser: const SimpleConstFunctionInvocationParser().build(
          start: const SimpleConstFunctionInvocationParser()
              .constFunctionInvocation),
      result: SwidiConstFunctionInvocation(
        value: "myFunction",
        positionalParameters: [],
        namedParameters: {
          "foo": SwidiConst.fromSwidiConstNumber(
            swidiConstNumber: SwidiConstNumber(
              value: "100",
            ),
          ),
        },
      ),
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        "myFunction(100,)",
        "myFunction(100)",
      ]),
      parser: const SimpleConstFunctionInvocationParser().build(
          start: const SimpleConstFunctionInvocationParser()
              .constFunctionInvocation),
      result: SwidiConstFunctionInvocation(
        value: "myFunction",
        positionalParameters: [
          SwidiConst.fromSwidiConstNumber(
            swidiConstNumber: SwidiConstNumber(
              value: "100",
            ),
          ),
        ],
        namedParameters: {},
      ),
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        "myFunction(100, 100, foo : 100, bar : 100)",
        "myFunction(100,100,foo:100,bar :100,)",
      ]),
      parser: const SimpleConstFunctionInvocationParser().build(
          start: const SimpleConstFunctionInvocationParser()
              .constFunctionInvocation),
      result: SwidiConstFunctionInvocation(
        value: "myFunction",
        positionalParameters: [
          SwidiConst.fromSwidiConstNumber(
            swidiConstNumber: SwidiConstNumber(
              value: "100",
            ),
          ),
          SwidiConst.fromSwidiConstNumber(
            swidiConstNumber: SwidiConstNumber(
              value: "100",
            ),
          ),
        ],
        namedParameters: {
          "foo": SwidiConst.fromSwidiConstNumber(
            swidiConstNumber: SwidiConstNumber(
              value: "100",
            ),
          ),
          "bar": SwidiConst.fromSwidiConstNumber(
            swidiConstNumber: SwidiConstNumber(
              value: "100",
            ),
          ),
        },
      ),
    );
  }, tags: "swid");
}
