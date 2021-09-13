import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNumber.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstParameterList.dart';
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

class SimpleConstParameterListParser extends SwidiGrammarDefinition
    with
        SwidiConstStringParser,
        SwidiConstNumberParser,
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
  const SimpleConstParameterListParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        "foo : 100,",
        "foo:100,",
        "foo : 100",
        "foo:100",
      ]),
      parser: const SimpleConstParameterListParser().build(
          start: const SimpleConstParameterListParser().constParameterList),
      result: SwidiConstParameterList(
        positionalParameters: [],
        namedParameters: [
          SwidiConstNamedParameter(
            name: "foo",
            value: SwidiConst.fromSwidiConstNumber(
              swidiConstNumber: SwidiConstNumber(
                value: "100",
              ),
            ),
          ),
        ],
      ),
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        "100,",
        "100",
      ]),
      parser: const SimpleConstParameterListParser().build(
          start: const SimpleConstParameterListParser().constParameterList),
      result: SwidiConstParameterList(
        positionalParameters: [
          SwidiConst.fromSwidiConstNumber(
            swidiConstNumber: SwidiConstNumber(
              value: "100",
            ),
          ),
        ],
        namedParameters: [],
      ),
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        "100, 100, foo : 100, bar : 100",
        "100,100,foo:100,bar :100,",
      ]),
      parser: const SimpleConstParameterListParser().build(
          start: const SimpleConstParameterListParser().constParameterList),
      result: SwidiConstParameterList(
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
        namedParameters: [
          SwidiConstNamedParameter(
            name: "foo",
            value: SwidiConst.fromSwidiConstNumber(
              swidiConstNumber: SwidiConstNumber(
                value: "100",
              ),
            ),
          ),
          SwidiConstNamedParameter(
            name: "bar",
            value: SwidiConst.fromSwidiConstNumber(
              swidiConstNumber: SwidiConstNumber(
                value: "100",
              ),
            ),
          ),
        ],
      ),
    );
  }, tags: "swid");
}
