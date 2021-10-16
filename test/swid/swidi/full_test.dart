import 'package:flutter_test/flutter_test.dart';
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiAnnotation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstMap.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstString.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationPositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypePositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeFormal.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiParser.dart';
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
        SwidiClass(
          name: "IconData",
          libraryScopePrefix: SwidiLibraryScopePrefix(
              name: "package:flutter/src/widgets/icon_data.dart"),
          staticMethods: [],
          methods: [
            SwidiFunctionDeclaration(
              shortHandOverride: SwidiConst.fromSwidiEmptyConst(
                swidiEmptyConst: SwidiEmptyConst(),
              ),
              typeFormals: [],
              name: "foo",
              returnType: SwidiType.fromSwidiInterface(
                swidiInterface: SwidiInterface(
                  annotations: [],
                  typeArguments: [],
                  name: "void",
                  libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                  referenceDeclarationPrefix:
                      SwidiReferenceDeclarationPrefix(name: "void"),
                  nullabilitySuffix: SwidiNullabilitySuffix.none,
                ),
              ),
              optionalParameters: [],
              positionalParameters: [
                SwidiFunctionDeclarationPositionalParameter(
                  declaration: SwidiDeclaration(
                    defaultConstValue: SwidiConst.fromSwidiEmptyConst(
                      swidiEmptyConst: SwidiEmptyConst(),
                    ),
                    name: "bar",
                    type: SwidiType.fromSwidiInterface(
                      swidiInterface: SwidiInterface(
                        annotations: [],
                        typeArguments: [],
                        name: "int",
                        libraryScopePrefix:
                            SwidiLibraryScopePrefix(name: "dart:core"),
                        referenceDeclarationPrefix:
                            SwidiReferenceDeclarationPrefix(name: "class"),
                        nullabilitySuffix: SwidiNullabilitySuffix.none,
                      ),
                    ),
                  ),
                ),
              ],
              namedParameters: [
                SwidiFunctionDeclarationNamedParameter(
                  declaration: SwidiDeclaration(
                    defaultConstValue: SwidiConst.fromSwidiEmptyConst(
                      swidiEmptyConst: SwidiEmptyConst(),
                    ),
                    name: "baz",
                    type: SwidiType.fromSwidiInterface(
                      swidiInterface: SwidiInterface(
                        annotations: [],
                        typeArguments: [],
                        name: "int",
                        libraryScopePrefix:
                            SwidiLibraryScopePrefix(name: "dart:core"),
                        referenceDeclarationPrefix:
                            SwidiReferenceDeclarationPrefix(name: "class"),
                        nullabilitySuffix: SwidiNullabilitySuffix.none,
                      ),
                    ),
                  ),
                ),
                SwidiFunctionDeclarationNamedParameter(
                  declaration: SwidiDeclaration(
                    defaultConstValue: SwidiConst.fromSwidiEmptyConst(
                      swidiEmptyConst: SwidiEmptyConst(),
                    ),
                    name: "qux",
                    type: SwidiType.fromSwidiInterface(
                      swidiInterface: SwidiInterface(
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
                  ),
                )
              ],
            ),
          ],
          shortHandOverride: SwidiConst.fromSwidiEmptyConst(
            swidiEmptyConst: SwidiEmptyConst(),
          ),
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
      result: [
        SwidiClass(
          name: "IconData",
          libraryScopePrefix: SwidiLibraryScopePrefix(
            name: "package:flutter/src/widgets/icon_data.dart",
          ),
          staticMethods: [],
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
              returnType: SwidiType.fromSwidiInterface(
                swidiInterface: SwidiInterface(
                  annotations: [],
                  name: "T",
                  libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                  referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix(
                    name: "type",
                  ),
                  nullabilitySuffix: SwidiNullabilitySuffix.none,
                  typeArguments: [],
                ),
              ),
              positionalParameters: [],
              optionalParameters: [
                SwidiFunctionDeclarationOptionalParameter(
                  declaration: SwidiDeclaration(
                    name: "default",
                    defaultConstValue: SwidiConst.fromSwidiConstString(
                      swidiConstString: SwidiConstString(
                        value: "foo bar default",
                      ),
                    ),
                    type: SwidiType.fromSwidiInterface(
                      swidiInterface: SwidiInterface(
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
                  ),
                )
              ],
              namedParameters: [],
            )
          ],
          shortHandOverride: SwidiConst.fromSwidiEmptyConst(
            swidiEmptyConst: SwidiEmptyConst(),
          ),
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
      result: [
        SwidiClass(
          name: "List",
          libraryScopePrefix: SwidiLibraryScopePrefix(
            name: "dart:core",
          ),
          staticMethods: [],
          methods: [
            SwidiFunctionDeclaration(
              shortHandOverride: SwidiConst.fromSwidiEmptyConst(
                swidiEmptyConst: SwidiEmptyConst(),
              ),
              name: "fromArray",
              returnType: SwidiType.fromSwidiInterface(
                swidiInterface: SwidiInterface(
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
              ),
              positionalParameters: [],
              optionalParameters: [
                SwidiFunctionDeclarationOptionalParameter(
                  declaration: SwidiDeclaration(
                    defaultConstValue: SwidiConst.fromSwidiEmptyConst(
                      swidiEmptyConst: SwidiEmptyConst(),
                    ),
                    name: "array",
                    type: SwidiType.fromSwidiInterface(
                      swidiInterface: SwidiInterface(
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
          shortHandOverride: SwidiConst.fromSwidiEmptyConst(
            swidiEmptyConst: SwidiEmptyConst(),
          ),
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
      result: [
        SwidiClass(
          name: "List",
          libraryScopePrefix: SwidiLibraryScopePrefix(
            name: "dart:core",
          ),
          staticMethods: [],
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
              returnType: SwidiType.fromSwidiInterface(
                swidiInterface: SwidiInterface(
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
              ),
              positionalParameters: [],
              optionalParameters: [
                SwidiFunctionDeclarationOptionalParameter(
                  declaration: SwidiDeclaration(
                    defaultConstValue: SwidiConst.fromSwidiEmptyConst(
                      swidiEmptyConst: SwidiEmptyConst(),
                    ),
                    name: "array",
                    type: SwidiType.fromSwidiInterface(
                      swidiInterface: SwidiInterface(
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
          shortHandOverride: SwidiConst.fromSwidiEmptyConst(
            swidiEmptyConst: SwidiEmptyConst(),
          ),
        ),
      ],
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(
        input: """
class "dart:core"::List {
  static "dart:core"::class::List<T> fromArray<T extends "dart:core"::class::Object?>([
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
      result: [
        SwidiClass(
          name: "List",
          libraryScopePrefix: SwidiLibraryScopePrefix(
            name: "dart:core",
          ),
          staticMethods: [
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
              returnType: SwidiType.fromSwidiInterface(
                swidiInterface: SwidiInterface(
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
              ),
              positionalParameters: [],
              optionalParameters: [
                SwidiFunctionDeclarationOptionalParameter(
                  declaration: SwidiDeclaration(
                    defaultConstValue: SwidiConst.fromSwidiEmptyConst(
                      swidiEmptyConst: SwidiEmptyConst(),
                    ),
                    name: "array",
                    type: SwidiType.fromSwidiInterface(
                      swidiInterface: SwidiInterface(
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
          methods: [],
          shortHandOverride: SwidiConst.fromSwidiEmptyConst(
            swidiEmptyConst: SwidiEmptyConst(),
          ),
        ),
      ],
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(
        input: """
class "dart:async"::Future {
  "dart:async"::class::Future<type::R> then<R extends "dart:core"::class::Object?>(
    Function type::R (type::T) onValue, {
      Function "dart:async"::class::FutureOr<type::R> (dynamic::dynamic, "dart:core"::class::StackTrace)? onError,
  });
}
""",
      ),
      parser: const SwidiParser().build(),
      result: [
        SwidiClass(
          name: "Future",
          libraryScopePrefix: SwidiLibraryScopePrefix(
            name: "dart:async",
          ),
          methods: [
            SwidiFunctionDeclaration(
              name: "then",
              returnType: SwidiType.fromSwidiInterface(
                swidiInterface: SwidiInterface(
                    name: "Future",
                    annotations: [],
                    libraryScopePrefix: SwidiLibraryScopePrefix(
                      name: "dart:async",
                    ),
                    nullabilitySuffix: SwidiNullabilitySuffix.none,
                    referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix(
                      name: "class",
                    ),
                    typeArguments: [
                      SwidiInterface(
                        name: "R",
                        libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                        referenceDeclarationPrefix:
                            SwidiReferenceDeclarationPrefix(
                          name: "type",
                        ),
                        nullabilitySuffix: SwidiNullabilitySuffix.none,
                        typeArguments: [],
                        annotations: [],
                      )
                    ]),
              ),
              positionalParameters: [
                SwidiFunctionDeclarationPositionalParameter(
                  declaration: SwidiDeclaration(
                    name: "onValue",
                    type: SwidiType.fromSwidiFunctionType(
                      swidiFunctionType: SwidiFunctionType(
                        returnType: SwidiType.fromSwidiInterface(
                          swidiInterface: SwidiInterface(
                            name: "R",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix(
                              name: "type",
                            ),
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                            typeArguments: [],
                            annotations: [],
                          ),
                        ),
                        positionalParameters: [
                          SwidiFunctionTypePositionalParameter(
                            type: SwidiType.fromSwidiInterface(
                              swidiInterface: SwidiInterface(
                                name: "T",
                                libraryScopePrefix:
                                    SwidiLibraryScopePrefix.empty,
                                referenceDeclarationPrefix:
                                    SwidiReferenceDeclarationPrefix(
                                  name: "type",
                                ),
                                nullabilitySuffix: SwidiNullabilitySuffix.none,
                                typeArguments: [],
                                annotations: [],
                              ),
                            ),
                          )
                        ],
                        optionalParameters: [],
                        namedParameters: [],
                        nullabilitySuffix: SwidiNullabilitySuffix.none,
                        typeFormals: [],
                        annotations: [],
                      ),
                    ),
                    defaultConstValue: SwidiConst.fromSwidiEmptyConst(
                      swidiEmptyConst: SwidiEmptyConst(),
                    ),
                  ),
                )
              ],
              optionalParameters: [],
              namedParameters: [
                SwidiFunctionDeclarationNamedParameter(
                  declaration: SwidiDeclaration(
                    name: "onError",
                    type: SwidiType.fromSwidiFunctionType(
                      swidiFunctionType: SwidiFunctionType(
                        returnType: SwidiType.fromSwidiInterface(
                          swidiInterface: SwidiInterface(
                            name: "FutureOr",
                            libraryScopePrefix: SwidiLibraryScopePrefix(
                              name: "dart:async",
                            ),
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix(
                              name: "class",
                            ),
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                            typeArguments: [
                              SwidiInterface(
                                name: "R",
                                libraryScopePrefix:
                                    SwidiLibraryScopePrefix.empty,
                                referenceDeclarationPrefix:
                                    SwidiReferenceDeclarationPrefix(
                                  name: "type",
                                ),
                                nullabilitySuffix: SwidiNullabilitySuffix.none,
                                typeArguments: [],
                                annotations: [],
                              ),
                            ],
                            annotations: [],
                          ),
                        ),
                        positionalParameters: [
                          SwidiFunctionTypePositionalParameter(
                            type: SwidiType.fromSwidiInterface(
                              swidiInterface: SwidiInterface(
                                name: "dynamic",
                                libraryScopePrefix:
                                    SwidiLibraryScopePrefix.empty,
                                referenceDeclarationPrefix:
                                    SwidiReferenceDeclarationPrefix(
                                  name: "dynamic",
                                ),
                                nullabilitySuffix: SwidiNullabilitySuffix.none,
                                typeArguments: [],
                                annotations: [],
                              ),
                            ),
                          ),
                          SwidiFunctionTypePositionalParameter(
                            type: SwidiType.fromSwidiInterface(
                              swidiInterface: SwidiInterface(
                                name: "StackTrace",
                                libraryScopePrefix: SwidiLibraryScopePrefix(
                                  name: "dart:core",
                                ),
                                referenceDeclarationPrefix:
                                    SwidiReferenceDeclarationPrefix(
                                  name: "class",
                                ),
                                nullabilitySuffix: SwidiNullabilitySuffix.none,
                                typeArguments: [],
                                annotations: [],
                              ),
                            ),
                          )
                        ],
                        optionalParameters: [],
                        namedParameters: [],
                        nullabilitySuffix: SwidiNullabilitySuffix.question,
                        typeFormals: [],
                        annotations: [],
                      ),
                    ),
                    defaultConstValue: SwidiConst.fromSwidiEmptyConst(
                      swidiEmptyConst: SwidiEmptyConst(),
                    ),
                  ),
                )
              ],
              typeFormals: [
                SwidiTypeFormal(
                  name: "R",
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
              shortHandOverride: SwidiConst.fromSwidiEmptyConst(
                swidiEmptyConst: SwidiEmptyConst(),
              ),
            )
          ],
          staticMethods: [],
          shortHandOverride: SwidiConst.fromSwidiEmptyConst(
            swidiEmptyConst: SwidiEmptyConst(),
          ),
        ),
      ],
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromString(
        input: """
class "dart:core"::Function { } -> {
  @"tsInterface": @"export type IFunction = (...args: any[]) => any;",
}
""",
      ),
      parser: const SwidiParser().build(),
      result: [
        SwidiClass(
          name: "Function",
          libraryScopePrefix: SwidiLibraryScopePrefix(
            name: "dart:core",
          ),
          methods: [],
          staticMethods: [],
          shortHandOverride: SwidiConst.fromSwidiConstMap(
            swidiConstMap: SwidiConstMap(
              entries: [
                Tuple2(
                  SwidiConst.fromSwidiConstString(
                    swidiConstString: SwidiConstString(
                      value: "tsInterface",
                    ),
                  ),
                  SwidiConst.fromSwidiConstString(
                    swidiConstString: SwidiConstString(
                      value: "export type IFunction = (...args: any[]) => any;",
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }, tags: "swid");
}
