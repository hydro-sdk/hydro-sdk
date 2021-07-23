import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNumber.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstPositionalParameterList.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNumberParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstPositionalParameterListParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstStringParser.dart';
import 'lib/parserTestHarness.dart';

class SimpleConstParameterListParser extends SwidiGrammarDefinition
    with
        SwidiConstStringParser,
        SwidiConstNumberParser,
        SwidiConstParser,
        SwidiConstPositionalParameterListParser {
  const SimpleConstParameterListParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        "100,",
        "100",
      ]),
      parser: const SimpleConstParameterListParser().build(
          start: const SimpleConstParameterListParser()
              .constPositionalParameterList),
      result: const [
        SwidiConstPositionalParameterList(
          parameters: [
            SwidiConst.fromSwidiConstNumber(
              swidiConstNumber: SwidiConstNumber(
                value: "100",
              ),
            ),
          ],
        ),
      ],
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        "100, 100",
        "100, 100,",
      ]),
      parser: const SimpleConstParameterListParser().build(
          start: const SimpleConstParameterListParser()
              .constPositionalParameterList),
      result: const [
        SwidiConstPositionalParameterList(
          parameters: [
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
        ),
      ],
    );
  }, tags: "swid");
}