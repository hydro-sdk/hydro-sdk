import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiAnnotation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstMap.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstString.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeFormal.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiParser.dart';
import 'package:tuple/tuple.dart';
import 'lib/parserTestHarness.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        """
  class "package:flutter/src/widgets/icon_data.dart"::IconData {
    void::void foo(
      "dart:core"::class::int bar, {
        "dart:core"::class::int baz,
        "dart:core"::class::int? qux,
    });
  }
    """,
        """
  class "package:flutter/src/widgets/icon_data.dart"::IconData {
    void::void foo(
      "dart:core"::class::int bar, {
        "dart:core"::class::int baz,
        "dart:core"::class::int? qux
    });
  }
    """
      ]),
      parser: const SwidiParser().build(),
      result: [
        const SwidiClass(
          name: "IconData",
          libraryScopePrefix: SwidiLibraryScopePrefix(
              name: "package:flutter/src/widgets/icon_data.dart"),
          methods: [
            SwidiFunctionDeclaration(
              shortHandOverride: SwidiConst.fromSwidiEmptyConst(
                swidiEmptyConst: SwidiEmptyConst(),
              ),
              typeFormals: [],
              name: "foo",
              returnType: SwidiInterface(
                annotations: [],
                typeArguments: [],
                name: "void",
                libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                referenceDeclarationPrefix:
                    SwidiReferenceDeclarationPrefix(name: "void"),
                nullabilitySuffix: SwidiNullabilitySuffix.none,
              ),
              optionalParameters: [],
              positionalParameters: [
                SwidiPositionalParameter(
                    declaration: SwidiDeclaration(
                        name: "bar",
                        type: SwidiInterface(
                          annotations: [],
                          typeArguments: [],
                          name: "int",
                          libraryScopePrefix:
                              SwidiLibraryScopePrefix(name: "dart:core"),
                          referenceDeclarationPrefix:
                              SwidiReferenceDeclarationPrefix(name: "class"),
                          nullabilitySuffix: SwidiNullabilitySuffix.none,
                        ))),
              ],
              namedParameters: [
                SwidiNamedParameter(
                    declaration: SwidiDeclaration(
                        name: "baz",
                        type: SwidiInterface(
                          annotations: [],
                          typeArguments: [],
                          name: "int",
                          libraryScopePrefix:
                              SwidiLibraryScopePrefix(name: "dart:core"),
                          referenceDeclarationPrefix:
                              SwidiReferenceDeclarationPrefix(name: "class"),
                          nullabilitySuffix: SwidiNullabilitySuffix.none,
                        ))),
                SwidiNamedParameter(
                  declaration: SwidiDeclaration(
                    name: "qux",
                    type: SwidiInterface(
                      annotations: [],
                      typeArguments: [],
                      name: "int?",
                      libraryScopePrefix:
                          SwidiLibraryScopePrefix(name: "dart:core"),
                      referenceDeclarationPrefix:
                          SwidiReferenceDeclarationPrefix(name: "class"),
                      nullabilitySuffix: SwidiNullabilitySuffix.question,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(
        input: """
class "package:flutter/src/widgets/icon_data.dart"::IconData {
  type::T foo<T extends "dart:core"::class::Object?>(
    [
      type::T<dynamic::dynamic>? default = @"foo bar default",
    ]
  );
}
""",
      ),
      parser: const SwidiParser().build(),
      result: const [
        SwidiClass(
          name: "IconData",
          libraryScopePrefix: SwidiLibraryScopePrefix(
            name: "package:flutter/src/widgets/icon_data.dart",
          ),
          methods: [
            SwidiFunctionDeclaration(
              shortHandOverride: SwidiConst.fromSwidiEmptyConst(
                swidiEmptyConst: SwidiEmptyConst(),
              ),
              name: "foo",
              typeFormals: [
                SwidiTypeFormal(
                  name: "T",
                  bound: SwidiInterface(
                    annotations: [],
                    name: "Object?",
                    libraryScopePrefix: SwidiLibraryScopePrefix(
                      name: "dart:core",
                    ),
                    referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix(
                      name: "class",
                    ),
                    nullabilitySuffix: SwidiNullabilitySuffix.question,
                    typeArguments: [],
                  ),
                )
              ],
              returnType: SwidiInterface(
                annotations: [],
                name: "T",
                libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix(
                  name: "type",
                ),
                nullabilitySuffix: SwidiNullabilitySuffix.none,
                typeArguments: [],
              ),
              positionalParameters: [],
              optionalParameters: [
                SwidiOptionalParameter(
                  declaration: SwidiDeclaration(
                    name: "default",
                    defaultConstValue: SwidiConst.fromSwidiConstString(
                      swidiConstString: SwidiConstString(
                        value: "foo bar default",
                      ),
                    ),
                    type: SwidiInterface(
                      annotations: [],
                      name: "T?",
                      libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                      referenceDeclarationPrefix:
                          SwidiReferenceDeclarationPrefix(name: "type"),
                      nullabilitySuffix: SwidiNullabilitySuffix.question,
                      typeArguments: [
                        SwidiInterface(
                          annotations: [],
                          name: "dynamic",
                          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                          referenceDeclarationPrefix:
                              SwidiReferenceDeclarationPrefix(
                            name: "dynamic",
                          ),
                          nullabilitySuffix: SwidiNullabilitySuffix.none,
                          typeArguments: [],
                        )
                      ],
                    ),
                  ),
                )
              ],
              namedParameters: [],
            )
          ],
        ),
      ],
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(
        input: """
class "dart:core"::List {
  "dart:core"::class::List<T> fromArray<T extends "dart:core"::class::Object?>([
    [[ ignoreTransform(@"referenceRewriting") ]]
    [[ ignoreAnalysis(@"referenceCollection")]]
    class::Array<T>? array,
  ]);
}
""",
      ),
      parser: const SwidiParser().build(),
      result: const [
        SwidiClass(
          name: "List",
          libraryScopePrefix: SwidiLibraryScopePrefix(
            name: "dart:core",
          ),
          methods: [
            SwidiFunctionDeclaration(
              shortHandOverride: SwidiConst.fromSwidiEmptyConst(
                swidiEmptyConst: SwidiEmptyConst(),
              ),
              name: "fromArray",
              returnType: SwidiInterface(
                name: "List",
                libraryScopePrefix: SwidiLibraryScopePrefix(
                  name: "dart:core",
                ),
                referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix(
                  name: "class",
                ),
                nullabilitySuffix: SwidiNullabilitySuffix.none,
                typeArguments: [
                  SwidiInterface(
                    name: "T",
                    libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                    referenceDeclarationPrefix:
                        SwidiReferenceDeclarationPrefix.empty,
                    nullabilitySuffix: SwidiNullabilitySuffix.none,
                    typeArguments: [],
                    annotations: [],
                  )
                ],
                annotations: [],
              ),
              positionalParameters: [],
              optionalParameters: [
                SwidiOptionalParameter(
                  declaration: SwidiDeclaration(
                    name: "array",
                    type: SwidiInterface(
                      name: "Array?",
                      libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                      referenceDeclarationPrefix:
                          SwidiReferenceDeclarationPrefix(
                        name: "class",
                      ),
                      nullabilitySuffix: SwidiNullabilitySuffix.question,
                      typeArguments: [
                        SwidiInterface(
                          name: "T",
                          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                          referenceDeclarationPrefix:
                              SwidiReferenceDeclarationPrefix.empty,
                          nullabilitySuffix: SwidiNullabilitySuffix.none,
                          typeArguments: [],
                          annotations: [],
                        )
                      ],
                      annotations: [
                        SwidiAnnotation(
                          value: SwidiConst.fromSwidiConstFunctionInvocation(
                            swidiConstFunctionInvocation:
                                SwidiConstFunctionInvocation(
                              value: "ignoreTransform",
                              positionalParameters: [
                                SwidiConst.fromSwidiConstString(
                                  swidiConstString: SwidiConstString(
                                    value: "referenceRewriting",
                                  ),
                                )
                              ],
                              namedParameters: {},
                            ),
                          ),
                        ),
                        SwidiAnnotation(
                          value: SwidiConst.fromSwidiConstFunctionInvocation(
                            swidiConstFunctionInvocation:
                                SwidiConstFunctionInvocation(
                              value: "ignoreAnalysis",
                              positionalParameters: [
                                SwidiConst.fromSwidiConstString(
                                  swidiConstString: SwidiConstString(
                                    value: "referenceCollection",
                                  ),
                                )
                              ],
                              namedParameters: {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
              namedParameters: [],
              typeFormals: [
                SwidiTypeFormal(
                  name: "T",
                  bound: SwidiInterface(
                    name: "Object?",
                    libraryScopePrefix: SwidiLibraryScopePrefix(
                      name: "dart:core",
                    ),
                    referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix(
                      name: "class",
                    ),
                    nullabilitySuffix: SwidiNullabilitySuffix.question,
                    typeArguments: [],
                    annotations: [],
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(
        input: """
class "dart:core"::List {
  "dart:core"::class::List<T> fromArray<T extends "dart:core"::class::Object?>([
    [[ ignoreTransform(@"referenceRewriting") ]]
    [[ ignoreAnalysis(@"referenceCollection")]]
    class::Array<T>? array,
  ]) -> {
    @"tsClassMethodDeclaration": @"foo bar baz",
  };
}
""",
      ),
      parser: const SwidiParser().build(),
      result: const [
        SwidiClass(
          name: "List",
          libraryScopePrefix: SwidiLibraryScopePrefix(
            name: "dart:core",
          ),
          methods: [
            SwidiFunctionDeclaration(
              shortHandOverride: SwidiConst.fromSwidiConstMap(
                swidiConstMap: SwidiConstMap(
                  entries: [
                    Tuple2(
                      SwidiConst.fromSwidiConstString(
                        swidiConstString: SwidiConstString(
                          value: "tsClassMethodDeclaration",
                        ),
                      ),
                      SwidiConst.fromSwidiConstString(
                        swidiConstString: SwidiConstString(
                          value: "foo bar baz",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              name: "fromArray",
              returnType: SwidiInterface(
                name: "List",
                libraryScopePrefix: SwidiLibraryScopePrefix(
                  name: "dart:core",
                ),
                referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix(
                  name: "class",
                ),
                nullabilitySuffix: SwidiNullabilitySuffix.none,
                typeArguments: [
                  SwidiInterface(
                    name: "T",
                    libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                    referenceDeclarationPrefix:
                        SwidiReferenceDeclarationPrefix.empty,
                    nullabilitySuffix: SwidiNullabilitySuffix.none,
                    typeArguments: [],
                    annotations: [],
                  )
                ],
                annotations: [],
              ),
              positionalParameters: [],
              optionalParameters: [
                SwidiOptionalParameter(
                  declaration: SwidiDeclaration(
                    name: "array",
                    type: SwidiInterface(
                      name: "Array?",
                      libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                      referenceDeclarationPrefix:
                          SwidiReferenceDeclarationPrefix(
                        name: "class",
                      ),
                      nullabilitySuffix: SwidiNullabilitySuffix.question,
                      typeArguments: [
                        SwidiInterface(
                          name: "T",
                          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                          referenceDeclarationPrefix:
                              SwidiReferenceDeclarationPrefix.empty,
                          nullabilitySuffix: SwidiNullabilitySuffix.none,
                          typeArguments: [],
                          annotations: [],
                        )
                      ],
                      annotations: [
                        SwidiAnnotation(
                          value: SwidiConst.fromSwidiConstFunctionInvocation(
                            swidiConstFunctionInvocation:
                                SwidiConstFunctionInvocation(
                              value: "ignoreTransform",
                              positionalParameters: [
                                SwidiConst.fromSwidiConstString(
                                  swidiConstString: SwidiConstString(
                                    value: "referenceRewriting",
                                  ),
                                )
                              ],
                              namedParameters: {},
                            ),
                          ),
                        ),
                        SwidiAnnotation(
                          value: SwidiConst.fromSwidiConstFunctionInvocation(
                            swidiConstFunctionInvocation:
                                SwidiConstFunctionInvocation(
                              value: "ignoreAnalysis",
                              positionalParameters: [
                                SwidiConst.fromSwidiConstString(
                                  swidiConstString: SwidiConstString(
                                    value: "referenceCollection",
                                  ),
                                )
                              ],
                              namedParameters: {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
              namedParameters: [],
              typeFormals: [
                SwidiTypeFormal(
                  name: "T",
                  bound: SwidiInterface(
                    name: "Object?",
                    libraryScopePrefix: SwidiLibraryScopePrefix(
                      name: "dart:core",
                    ),
                    referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix(
                      name: "class",
                    ),
                    nullabilitySuffix: SwidiNullabilitySuffix.question,
                    typeArguments: [],
                    annotations: [],
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }, tags: "swid");
}
