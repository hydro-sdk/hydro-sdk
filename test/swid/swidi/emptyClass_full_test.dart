import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiParser.dart';
import 'lib/parserTestHarness.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
        input:
            const ParserTestHarnessInput.fromString(input: "class IconData {}"),
        parser: const SwidiParser().build(),
        result: [
          const SwidiClass(
            name: "IconData",
            methods: [],
          )
        ]);
  }, tags: "swid");
}
