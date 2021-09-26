import 'package:flutter_test/flutter_test.dart';
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstMap.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNumber.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstString.dart';
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

class SimpleConstMapParser extends SwidiGrammarDefinition
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
  const SimpleConstMapParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        '{ @"foo": @"foo", }',
      ]),
      parser: const SimpleConstMapParser()
          .build(start: const SimpleConstMapParser().constMap),
      result: SwidiConstMap(
        entries: [
          Tuple2(
            SwidiConst.fromSwidiConstString(
              swidiConstString: SwidiConstString(
                value: "foo",
              ),
            ),
            SwidiConst.fromSwidiConstString(
              swidiConstString: SwidiConstString(
                value: "foo",
              ),
            ),
          ),
        ],
      ),
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        """
{ 
  1 : @"foo1",
  2 : @"foo2",
  3 : @"foo3",
  4 : @"foo4",
  5 : @"foo5",
  @"bar":@"bar",
}
""",
      ]),
      parser: const SimpleConstMapParser()
          .build(start: const SimpleConstMapParser().constMap),
      result: SwidiConstMap(
        entries: [
          Tuple2(
            SwidiConst.fromSwidiConstNumber(
              swidiConstNumber: SwidiConstNumber(
                value: "1",
              ),
            ),
            SwidiConst.fromSwidiConstString(
              swidiConstString: SwidiConstString(
                value: "foo1",
              ),
            ),
          ),
          Tuple2(
            SwidiConst.fromSwidiConstNumber(
              swidiConstNumber: SwidiConstNumber(
                value: "2",
              ),
            ),
            SwidiConst.fromSwidiConstString(
              swidiConstString: SwidiConstString(
                value: "foo2",
              ),
            ),
          ),
          Tuple2(
            SwidiConst.fromSwidiConstNumber(
              swidiConstNumber: SwidiConstNumber(
                value: "3",
              ),
            ),
            SwidiConst.fromSwidiConstString(
              swidiConstString: SwidiConstString(
                value: "foo3",
              ),
            ),
          ),
          Tuple2(
            SwidiConst.fromSwidiConstNumber(
              swidiConstNumber: SwidiConstNumber(
                value: "4",
              ),
            ),
            SwidiConst.fromSwidiConstString(
              swidiConstString: SwidiConstString(
                value: "foo4",
              ),
            ),
          ),
          Tuple2(
            SwidiConst.fromSwidiConstNumber(
              swidiConstNumber: SwidiConstNumber(
                value: "5",
              ),
            ),
            SwidiConst.fromSwidiConstString(
              swidiConstString: SwidiConstString(
                value: "foo5",
              ),
            ),
          ),
          Tuple2(
            SwidiConst.fromSwidiConstString(
              swidiConstString: SwidiConstString(
                value: "bar",
              ),
            ),
            SwidiConst.fromSwidiConstString(
              swidiConstString: SwidiConstString(
                value: "bar",
              ),
            ),
          ),
        ],
      ),
    );
  }, tags: "swid");
}
