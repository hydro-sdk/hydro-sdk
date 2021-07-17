import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiParser.dart';
import 'lib/parserTestHarness.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        """
  class IconData {
    void foo({int bar});
  }
    """,
        """
  class IconData {
    void foo({int bar,});
  }
    """
      ]),
      parser: const SwidiParser().build(),
      result: [
        const SwidiClass(
            name: "IconData",
            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
            methods: [
              SwidiFunctionDeclaration(
                name: "foo",
                returnType: SwidiInterface(
                  typeArguments: [],
                  name: "void",
                  libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                  referenceDeclarationPrefix:
                      SwidiReferenceDeclarationPrefix.empty,
                  nullabilitySuffix: SwidiNullabilitySuffix.none,
                ),
                optionalParameters: [],
                positionalParameters: [],
                namedParameters: [
                  SwidiNamedParameter(
                    declaration: SwidiDeclaration(
                      name: "bar",
                      type: SwidiInterface(
                        typeArguments: [],
                        name: "int",
                        libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                        referenceDeclarationPrefix:
                            SwidiReferenceDeclarationPrefix.empty,
                        nullabilitySuffix: SwidiNullabilitySuffix.none,
                      ),
                    ),
                  )
                ],
              )
            ]),
      ],
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        """
  class IconData {
    void foo({int? bar});
  }
    """,
        """
  class IconData {
    void foo({int? bar,});
  }
    """
      ]),
      parser: const SwidiParser().build(),
      result: [
        const SwidiClass(
            name: "IconData",
            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
            methods: [
              SwidiFunctionDeclaration(
                name: "foo",
                returnType: SwidiInterface(
                  typeArguments: [],
                  name: "void",
                  libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                  referenceDeclarationPrefix:
                      SwidiReferenceDeclarationPrefix.empty,
                  nullabilitySuffix: SwidiNullabilitySuffix.none,
                ),
                optionalParameters: [],
                positionalParameters: [],
                namedParameters: [
                  SwidiNamedParameter(
                    declaration: SwidiDeclaration(
                      name: "bar",
                      type: SwidiInterface(
                        typeArguments: [],
                        name: "int?",
                        libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                        referenceDeclarationPrefix:
                            SwidiReferenceDeclarationPrefix.empty,
                        nullabilitySuffix: SwidiNullabilitySuffix.question,
                      ),
                    ),
                  )
                ],
              )
            ]),
      ],
    );
  }, tags: "swid");
}
