import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiAnnotation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstString.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiAnnotationParser.dart';
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

class SimpleAnnotationParser extends SwidiGrammarDefinition
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
        SwidiConstMapParser,
        SwidiAnnotationParser {
  const SimpleAnnotationParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        '[[@"foo"]]',
        '[[ @"foo" ]]',
      ]),
      parser: const SimpleAnnotationParser()
          .build(start: const SimpleAnnotationParser().annotation),
      result: SwidiAnnotation(
        value: SwidiConst.fromSwidiConstString(
          swidiConstString: SwidiConstString(
            value: "foo",
          ),
        ),
      ),
    );
  }, tags: "swid");
}
