import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/tsClassStaticMethodImplementation.dart';
import 'package:hydro_sdk/swid/ir/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedIdentifier.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final diagnosticsNode = SwidClass(
      name: "DiagnosticsNode",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/foundation/diagnostics.dart",
      constructorType: SwidFunctionType(
        name: "",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "",
        namedParameterTypes: {
          "linePrefix": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "String",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "showName": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "bool",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "showSeparator": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "bool",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "style": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "DiagnosticsTreeStyle",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath:
                  "package:flutter/src/foundation/diagnostics.dart",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.enumElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "name": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "String",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
        },
        namedDefaults: {
          "namedDefaults": SwidDefaultFormalParameter(
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath:
                "package:flutter/src/foundation/diagnostics.dart",
            staticType: SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "bool",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            value: SwidStaticConst.fromSwidBooleanLiteral(
              swidBooleanLiteral: SwidBooleanLiteral(
                value: "true",
              ),
            ),
            defaultValueCode: "true",
          ),
          "showSeparator": SwidDefaultFormalParameter(
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath:
                "package:flutter/src/foundation/diagnostics.dart",
            staticType: SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "bool",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            value: SwidStaticConst.fromSwidBooleanLiteral(
              swidBooleanLiteral: SwidBooleanLiteral(
                value: "true",
              ),
            ),
            defaultValueCode: "true",
          )
        },
        normalParameterNames: [],
        normalParameterTypes: [],
        optionalParameterNames: [],
        optionalParameterTypes: [],
        returnType: SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "DiagnosticsNods",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath:
                "package:flutter/src/foundation/diagnostics.dart",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
            declarationModifiers: SwidDeclarationModifiers.empty(),
          ),
        ),
        isFactory: false,
        typeFormals: [],
        declarationModifiers: SwidDeclarationModifiers.empty(),
      ),
      generativeConstructors: [],
      factoryConstructors: [
        SwidFunctionType(
          name: "message",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "",
          namedParameterTypes: {
            "allowWrap": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "bool",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            "level": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "DiagnosticLevel",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/foundation/diagnostics.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.enumElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            "style": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "DiagnosticsTreeStyle",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/foundation/diagnostics.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.enumElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
          },
          namedDefaults: {
            "allowWrap": SwidDefaultFormalParameter(
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/foundation/diagnostics.dart",
              staticType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "bool",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:core",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              ),
              value: SwidStaticConst.fromSwidBooleanLiteral(
                swidBooleanLiteral: SwidBooleanLiteral(
                  value: "true",
                ),
              ),
              defaultValueCode: "true",
            ),
            "level": SwidDefaultFormalParameter(
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/foundation/diagnostics.dart",
              staticType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "DiagnosticLevel",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath:
                      "package:flutter/src/foundation/diagnostics.dart",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.enumElement,
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              ),
              value: SwidStaticConst.fromSwidStaticConstPrefixedIdentifier(
                staticConstPrefixedIdentifier:
                    SwidStaticConstPrefixedIdentifier(
                  prefix: SwidInterface(
                    name: "DiagnosticLevel",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/foundation/diagnostics.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                  staticConstFieldReference: SwidStaticConstFieldReference(
                    name: "info",
                  ),
                ),
              ),
              defaultValueCode: "DiagnosticLevel.info",
            ),
            "style": SwidDefaultFormalParameter(
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/foundation/diagnostics.dart",
              staticType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "DiagnosticsTreeStyle",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath:
                      "package:flutter/src/foundation/diagnostics.dart",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.enumElement,
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              ),
              value: SwidStaticConst.fromSwidStaticConstPrefixedIdentifier(
                staticConstPrefixedIdentifier:
                    SwidStaticConstPrefixedIdentifier(
                  prefix: SwidInterface(
                    name: "DiagnosticsTreeStyle",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/foundation/diagnostics.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                  staticConstFieldReference: SwidStaticConstFieldReference(
                    name: "singleLine",
                  ),
                ),
              ),
              defaultValueCode: "DiagnosticsTreeStyle.singleLine",
            ),
          },
          normalParameterNames: [
            "message",
          ],
          normalParameterTypes: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "String",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            )
          ],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "DiagnosticsNode",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/foundation/diagnostics.dart",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: true,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        )
      ],
      staticMethods: [
        SwidFunctionType(
          name: "toJsonList",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/foundation/diagnostics.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [
            "nodes",
            "parent",
            "delegate",
          ],
          normalParameterTypes: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "List<DiagnosticsNode>",
                nullabilitySuffix: SwidNullabilitySuffix.question,
                originalPackagePath: "dart:core",
                typeArguments: [
                  SwidTypeArgumentType(
                    type: SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                        name: "DiagnosticsNode",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath:
                            "package:flutter/src/foundation/diagnostics.dart",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.classElement,
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                      ),
                    ),
                    element: null,
                  ),
                ],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "DiagnosticsNode",
                nullabilitySuffix: SwidNullabilitySuffix.question,
                originalPackagePath:
                    "package:flutter/src/foundation/diagnostics.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "DiagnosticsSerializationDelegate",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/foundation/diagnostics.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            )
          ],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "List<Map<String, Object>>",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [
                SwidTypeArgumentType(
                  type: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "Map<String, Object>",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      typeArguments: [
                        SwidTypeArgumentType(
                          type: SwidType.fromSwidInterface(
                            swidInterface: SwidInterface(
                              name: "String",
                              nullabilitySuffix: SwidNullabilitySuffix.none,
                              originalPackagePath: "dart:core",
                              typeArguments: [],
                              referenceDeclarationKind:
                                  SwidReferenceDeclarationKind.classElement,
                              declarationModifiers:
                                  SwidDeclarationModifiers.empty(),
                            ),
                          ),
                          element: null,
                        ),
                        SwidTypeArgumentType(
                          type: SwidType.fromSwidInterface(
                            swidInterface: SwidInterface(
                              name: "Object",
                              nullabilitySuffix: SwidNullabilitySuffix.none,
                              originalPackagePath: "dart:core",
                              typeArguments: [],
                              referenceDeclarationKind:
                                  SwidReferenceDeclarationKind.classElement,
                              declarationModifiers:
                                  SwidDeclarationModifiers.empty(),
                            ),
                          ),
                          element: null,
                        )
                      ],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                    ),
                  ),
                  element: null,
                )
              ],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        )
      ],
      methods: [
        SwidFunctionType(
          name: "toDescription",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/foundation/diagnostics.dart",
          namedParameterTypes: {
            "parentConfiguration": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "TextTreeConfiguration",
                nullabilitySuffix: SwidNullabilitySuffix.question,
                originalPackagePath:
                    "package:flutter/src/foundation/diagnostics.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            )
          },
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "String",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
        SwidFunctionType(
          name: "isFiltered",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/foundation/diagnostics.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [
            "minLevel",
          ],
          normalParameterTypes: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "DiagnosticLevel",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/foundation/diagnostics.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.enumElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
          ],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "bool",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
        SwidFunctionType(
          name: "level",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/foundation/diagnostics.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "DiagnosticsLevel",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/foundation/diagnostics.dart",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.enumElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
        SwidFunctionType(
          name: "emptyBodyDescription",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/foundation/diagnostics.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "String",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
        SwidFunctionType(
          name: "value",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/foundation/diagnostics.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "Object",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
        SwidFunctionType(
          name: "allowWrap",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/foundation/diagnostics.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "bool",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
        SwidFunctionType(
          name: "allowNameWrap",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/foundation/diagnostics.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "bool",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
        SwidFunctionType(
          name: "allowTruncate",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/foundation/diagnostics.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "bool",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
        SwidFunctionType(
          name: "getProperties",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/foundation/diagnostics.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "List<DiagnosticsNode>",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [
                SwidTypeArgumentType(
                  type: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "DiagnosticsNode",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath:
                          "package:flutter/src/foundation/diagnostics.dart",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                    ),
                  ),
                  element: null,
                )
              ],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
        SwidFunctionType(
          name: "getChildren",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/foundation/diagnostics.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "List<DiagnosticsNode>",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [
                SwidTypeArgumentType(
                  type: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "DiagnosticsNode",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath:
                          "package:flutter/src/foundation/diagnostics.dart",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                    ),
                  ),
                  element: null,
                ),
              ],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
        SwidFunctionType(
          name: "toJsonMap",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/foundation/diagnostics.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [
            "delegate",
          ],
          normalParameterTypes: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "DiagnosticsSerializationDelegate",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/foundation/diagnostics.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            )
          ],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "Map<String, Object>",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [
                SwidTypeArgumentType(
                  type: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "String",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                    ),
                  ),
                  element: null,
                ),
                SwidTypeArgumentType(
                  type: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "Object",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                    ),
                  ),
                  element: null,
                )
              ],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
        SwidFunctionType(
          name: "toString",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/foundation/diagnostics.dart",
          namedParameterTypes: {
            "minLevel": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "DiagnosticLevel",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/foundation/diagnostics.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.enumElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            "parentConfiguration": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "TextTreeConfiguration",
                nullabilitySuffix: SwidNullabilitySuffix.question,
                originalPackagePath:
                    "package:flutter/src/foundation/diagnostics.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
          },
          namedDefaults: {
            "minLevel": SwidDefaultFormalParameter(
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/foundation/diagnostics.dart",
              staticType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "DiagnosticLevel",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath:
                      "package:flutter/src/foundation/diagnostics.dart",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.enumElement,
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              ),
              value: SwidStaticConst.fromSwidStaticConstPrefixedIdentifier(
                staticConstPrefixedIdentifier:
                    SwidStaticConstPrefixedIdentifier(
                  prefix: SwidInterface(
                    name: "DiagnosticLevel",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/foundation/diagnostics.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                  staticConstFieldReference: SwidStaticConstFieldReference(
                    name: "info",
                  ),
                ),
              ),
              defaultValueCode: "DiagnosticLevel.info",
            ),
          },
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "String",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
        SwidFunctionType(
          name: "textTreeConfiguration",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/foundation/diagnostics.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "TextTreeConfiguration",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath:
                  "package:flutter/src/foundation/diagnostics.dart",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
        SwidFunctionType(
          name: "toStringDeep",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/foundation/diagnostics.dart",
          namedParameterTypes: {
            "minLevel": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "DiagnosticLevel",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/foundation/diagnostics.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.enumElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            "parentConfiguration": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "TextTreeConfiguration",
                nullabilitySuffix: SwidNullabilitySuffix.question,
                originalPackagePath:
                    "package:flutter/src/foundation/diagnostics.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            "prefixLineOne": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "String",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            "prefixOtherLines": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "String",
                nullabilitySuffix: SwidNullabilitySuffix.question,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
          },
          namedDefaults: {
            "minLevel": SwidDefaultFormalParameter(
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/foundation/diagnostics.dart",
              staticType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "DiagnosticLevel",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath:
                      "package:flutter/src/foundation/diagnostics.dart",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.enumElement,
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              ),
              value: SwidStaticConst.fromSwidStaticConstPrefixedIdentifier(
                staticConstPrefixedIdentifier:
                    SwidStaticConstPrefixedIdentifier(
                  prefix: SwidInterface(
                    name: "DiagnosticLevel",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/foundation/diagnostics.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                  staticConstFieldReference: SwidStaticConstFieldReference(
                    name: "debug",
                  ),
                ),
              ),
              defaultValueCode: "DiagnosticLevel.debug",
            ),
            "prefixLineOne": SwidDefaultFormalParameter(
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/foundation/diagnostics.dart",
              staticType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "String",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:core",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              ),
              value: SwidStaticConst.fromSwidStringLiteral(
                swidStringLiteral: SwidStringLiteral(
                  value: "",
                ),
              ),
              defaultValueCode: "''",
            ),
          },
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "String",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        )
      ],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {
        "name": SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "String",
            nullabilitySuffix: SwidNullabilitySuffix.question,
            originalPackagePath: "dart:core",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
            declarationModifiers: SwidDeclarationModifiers.empty(),
          ),
        ),
        "showSeparator": SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "bool",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:core",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
            declarationModifiers: SwidDeclarationModifiers.empty(),
          ),
        ),
        "showName": SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "bool",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:core",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
            declarationModifiers: SwidDeclarationModifiers.empty(),
          ),
        ),
        "linePrefix": SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "String",
            nullabilitySuffix: SwidNullabilitySuffix.question,
            originalPackagePath: "dart:core",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
            declarationModifiers: SwidDeclarationModifiers.empty(),
          ),
        ),
        "style": SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "DiagnosticsTreeStyle",
            nullabilitySuffix: SwidNullabilitySuffix.question,
            originalPackagePath:
                "package:flutter/src/foundation/diagnostics.dart",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.enumElement,
            declarationModifiers: SwidDeclarationModifiers.empty(),
          ),
        )
      },
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      isMixin: false,
      typeFormals: [],
    );

    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TsClassStaticMethodImplementation(
            swidClass: diagnosticsNode,
            swidFunctionType: diagnosticsNode.factoryConstructors.firstWhere(
              (x) => x.name == "message",
            ),
          ),
        ),
        """
public static message(message: string, props : {  allowWrap? : boolean, level? : DiagnosticLevel, style? : DiagnosticsTreeStyle,}) : IDiagnosticsNode{
return flutter.foundation.diagnosticsNodeMessage(message, {
...messageDefaultProps,
...props
});
}""");
  }, tags: "swid");
}
