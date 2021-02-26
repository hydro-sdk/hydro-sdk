import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/parser/swidiParser.dart';
import 'lib/parserTestHarness.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
        input: const ParserTestHarnessInput.fromList(inputs: [
          """
  class IconData {
    void foo(int bar,int baz);
  }
    """,
          """
  class IconData {
    void foo(int bar,int baz,);
  }
    """,
        ]),
        parser: const SwidiParser().build(),
        result: [
          const SwidiClass(name: "IconData", methods: [
            SwidiFunctionDeclaration(
              name: "foo",
              returnType: "void",
              positionalParameters: [
                SwidiDeclaration(
                    name: "bar", type: SwidiInterface(name: "int")),
                SwidiDeclaration(name: "baz", type: SwidiInterface(name: "int"))
              ],
            )
          ]),
        ]);
  }, tags: "swid");
}
