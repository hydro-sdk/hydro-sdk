import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNumber.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNumberParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstParser.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstStringParser.dart';
import 'lib/parserTestHarness.dart';

class SimpleConstNumberParser extends SwidiGrammarDefinition
    with SwidiConstNumberParser {
  const SimpleConstNumberParser();
}

class SimpleConstParser extends SwidiGrammarDefinition
    with SwidiConstNumberParser, SwidiConstStringParser, SwidiConstParser {
  const SimpleConstParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(input: "100"),
      parser: const SimpleConstNumberParser()
          .build(start: const SimpleConstNumberParser().constNumber),
      result: const SwidiConstNumber(
        value: "100",
      ),
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(input: "100"),
      parser: const SimpleConstParser()
          .build(start: const SimpleConstParser().lexicalConst),
      result: const SwidiConst.fromSwidiConstNumber(
          swidiConstNumber: SwidiConstNumber(
        value: "100",
      )),
    );
  }, tags: "swid");
}
