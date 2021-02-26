import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiTypeParser.dart';
import 'lib/parserTestHarness.dart';

class SimpleTypeParser extends SwidiGrammarDefinition with SwidiTypeParser {
  const SimpleTypeParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
        input: const ParserTestHarnessInput.fromString(input: "void"),
        parser: const SimpleTypeParser()
            .build(start: const SimpleTypeParser().type),
        result: const SwidiInterface(name: "void"));
  }, tags: "swid");
}
