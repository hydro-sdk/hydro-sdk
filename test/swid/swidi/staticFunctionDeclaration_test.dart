import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiParser.dart';
import 'lib/parserTestHarness.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(
        input: """
  class IconData {
    static bar foo();
  }
    """,
      ),
      parser: const SwidiParser().build(),
      result: [
        const SwidiClass(
          name: "IconData",
          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
          staticMethods: [
            SwidiFunctionDeclaration(
              shortHandOverride: SwidiConst.fromSwidiEmptyConst(
                swidiEmptyConst: SwidiEmptyConst(),
              ),
              typeFormals: [],
              name: "foo",
              returnType: SwidiInterface(
                annotations: [],
                typeArguments: [],
                name: "bar",
                libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                referenceDeclarationPrefix:
                    SwidiReferenceDeclarationPrefix.empty,
                nullabilitySuffix: SwidiNullabilitySuffix.none,
              ),
              optionalParameters: [],
              namedParameters: [],
              positionalParameters: [],
            )
          ],
          methods: [],
        ),
      ],
    );
  }, tags: "swid");
}