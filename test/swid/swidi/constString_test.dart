import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstString.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNumberParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstStringParser.dart';
import 'lib/parserTestHarness.dart';

class SimpleConstStringParser extends SwidiGrammarDefinition
    with SwidiConstStringParser {
  const SimpleConstStringParser();
}

class SimpleConstParser extends SwidiGrammarDefinition
    with SwidiConstNumberParser, SwidiConstStringParser, SwidiConstParser {
  const SimpleConstParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(input: '@"abc"'),
      parser: const SimpleConstStringParser()
          .build(start: const SimpleConstStringParser().constString),
      result: const SwidiConstString(
        value: "abc",
      ),
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(input: '@"abc"'),
      parser: const SimpleConstParser()
          .build(start: const SimpleConstParser().CONST),
      result: const SwidiConst.fromSwidiConstString(
          swidiConstString: SwidiConstString(
        value: "abc",
      )),
    );
  });
}
