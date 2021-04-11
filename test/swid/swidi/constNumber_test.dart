import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNumber.dart';
import 'package:hydro_sdk/swid/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiConstNumberParser.dart';

import 'lib/parserTestHarness.dart';

class SimpleConstNumberParser extends SwidiGrammarDefinition
    with SwidiConstNumberParser {
  const SimpleConstNumberParser();
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
  });
}
