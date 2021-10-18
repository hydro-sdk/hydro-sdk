import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiParser.dart';
import 'lib/parserTestHarness.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input:
          const ParserTestHarnessInput.fromString(input: "class IconData {}"),
      parser: const SwidiParser().build(),
      result: [
        SwidiClass(
          name: "IconData",
          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
          methods: [],
          staticMethods: [],
          shortHandOverride: SwidiConst.fromSwidiEmptyConst(
            swidiEmptyConst: SwidiEmptyConst(),
          ),
        )
      ],
    );
  }, tags: "swid");
}
