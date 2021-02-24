import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/grammar/swidiGrammarDefinition.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiClassParser.dart';

import 'lib/parserTestHarness.dart';

class BasicClassParser extends SwidiGrammarDefinition with SwidiClassParser {
  const BasicClassParser();
}

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
        input: """
class IconData {
}
    """,
        parser: const BasicClassParser()
            .build(start: const BasicClassParser().classDefinition),
        result: const SwidiClass(name: "IconData"));
  }, tags: "swid");
}
