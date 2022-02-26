import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartRtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidElement.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentElement.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalBound.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "RawAutocomplete",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/widgets/autocomplete.dart",
      constructorType: SwidFunctionType(
        name: "",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "",
        namedParameterTypes: {
          "displayStringForOption": SwidType.fromSwidFunctionType(
            swidFunctionType: SwidFunctionType(
              name: "",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "pacakge:flutter/src/widgets/autocomplete.dart",
              namedParameterTypes: {},
              namedDefaults: {},
              normalParameterNames: [
                "option",
              ],
              normalParameterTypes: [
                SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "T",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/widgets/autocomplete.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.typeParameterType,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                )
              ],
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
          ),
          "fieldViewBuilder": SwidType.fromSwidFunctionType(
            swidFunctionType: SwidFunctionType(
              name: "",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath:
                  "package:flutter/src/widgets/autocomplete.dart",
              namedParameterTypes: {},
              namedDefaults: {},
              normalParameterNames: [
                "context",
                "textEditingController",
                "focusNode",
                "onFieldSubmitted",
              ],
              normalParameterTypes: [
                SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "BuildContext",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/widgets/framework.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                ),
                SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "TextEditingController",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/widgets/editable_text.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                ),
                SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "FocusNode",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/widgets/focus_manager.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                ),
                SwidType.fromSwidFunctionType(
                  swidFunctionType: SwidFunctionType(
                    name: "",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "dart:ui",
                    namedParameterTypes: {},
                    namedDefaults: {},
                    normalParameterNames: [],
                    normalParameterTypes: [],
                    optionalParameterNames: [],
                    optionalParameterTypes: [],
                    returnType: SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                        name: "void",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath: "",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.voidType,
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                      ),
                    ),
                    isFactory: false,
                    typeFormals: [],
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                )
              ],
              optionalParameterNames: [],
              optionalParameterTypes: [],
              returnType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "Widget",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath:
                      "package:flutter/src/widgets/framework.dart",
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
          ),
          "focusNode": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "FocusNode",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath:
                  "package:flutter/src/widgets/focus_manager.dart",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "initialValue": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "TextEditingValue",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath:
                  "package:flutter/src/services/text_input.dart",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "key": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "Key",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath: "package:flutter/src/foundation/key.dart",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "onSelected": SwidType.fromSwidFunctionType(
            swidFunctionType: SwidFunctionType(
              name: "",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath:
                  "package:flutter/src/widgets/autocomplete.dart",
              namedParameterTypes: {},
              namedDefaults: {},
              normalParameterNames: [
                "option",
              ],
              normalParameterTypes: [
                SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "T",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/widgets/autocomplete.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.typeParameterType,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                )
              ],
              optionalParameterNames: [],
              optionalParameterTypes: [],
              returnType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "void",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.voidType,
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              ),
              isFactory: false,
              typeFormals: [],
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "textEditingController": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "TextEditingController",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath:
                  "package:flutter/src/widgets/editable_text.dart",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "optionsBuilder": SwidType.fromSwidFunctionType(
            swidFunctionType: SwidFunctionType(
              name: "",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/widgets/autocomplete.dart",
              namedParameterTypes: {},
              namedDefaults: {},
              normalParameterNames: [
                "textEditingValue",
              ],
              normalParameterTypes: [
                SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "TextEditingValue",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/services/text_input.dart",
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
                  name: "FutureOr<Iterable<T>>",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:async",
                  typeArguments: [
                    SwidTypeArgumentType(
                      type: SwidType.fromSwidInterface(
                        swidInterface: SwidInterface(
                          name: "Iterable<T>",
                          nullabilitySuffix: SwidNullabilitySuffix.none,
                          originalPackagePath: "dart:core",
                          typeArguments: [
                            SwidTypeArgumentType(
                              type: SwidType.fromSwidInterface(
                                swidInterface: SwidInterface(
                                  name: "T",
                                  nullabilitySuffix: SwidNullabilitySuffix.none,
                                  originalPackagePath:
                                      "package:flutter/src/widgets/autocomplete.dart",
                                  typeArguments: [],
                                  referenceDeclarationKind:
                                      SwidReferenceDeclarationKind
                                          .typeParameterType,
                                  declarationModifiers:
                                      SwidDeclarationModifiers.empty(),
                                ),
                              ),
                              element: SwidElement.fromSwidTypeArgumentElement(
                                swidTypeArgumentElement:
                                    SwidTypeArgumentElement(
                                  bound: SwidType.fromSwidInterface(
                                    swidInterface: SwidInterface(
                                      name: "Object",
                                      nullabilitySuffix:
                                          SwidNullabilitySuffix.none,
                                      originalPackagePath: "dart:core",
                                      typeArguments: [],
                                      referenceDeclarationKind:
                                          SwidReferenceDeclarationKind
                                              .classElement,
                                      declarationModifiers:
                                          SwidDeclarationModifiers.empty(),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
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
              isFactory: false,
              typeFormals: [],
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "optionsViewBuilder": SwidType.fromSwidFunctionType(
            swidFunctionType: SwidFunctionType(
              name: "",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/widgets/autocomplete.dart",
              namedParameterTypes: {},
              namedDefaults: {},
              normalParameterNames: [
                "context",
                "onSelected",
                "options",
              ],
              normalParameterTypes: [
                SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "BuildContext",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/widgets/framework.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                ),
                SwidType.fromSwidFunctionType(
                  swidFunctionType: SwidFunctionType(
                    name: "",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/widgets/autocomplete.dart",
                    namedParameterTypes: {},
                    namedDefaults: {},
                    normalParameterNames: [
                      "option",
                    ],
                    normalParameterTypes: [
                      SwidType.fromSwidInterface(
                        swidInterface: SwidInterface(
                          name: "T",
                          nullabilitySuffix: SwidNullabilitySuffix.none,
                          originalPackagePath:
                              "package:flutter/src/widgets/autocomplete.dart",
                          typeArguments: [],
                          referenceDeclarationKind:
                              SwidReferenceDeclarationKind.typeParameterType,
                          declarationModifiers:
                              SwidDeclarationModifiers.empty(),
                        ),
                      )
                    ],
                    optionalParameterNames: [],
                    optionalParameterTypes: [],
                    returnType: SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                        name: "void",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath: "",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.voidType,
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                      ),
                    ),
                    isFactory: false,
                    typeFormals: [],
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                ),
                SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "Iterable<T>",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "dart:core",
                    typeArguments: [
                      SwidTypeArgumentType(
                        type: SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
                            name: "T",
                            nullabilitySuffix: SwidNullabilitySuffix.none,
                            originalPackagePath:
                                "package:flutter/src/widgetd/autocomplete.dart",
                            typeArguments: [],
                            referenceDeclarationKind:
                                SwidReferenceDeclarationKind.typeParameterType,
                            declarationModifiers:
                                SwidDeclarationModifiers.empty(),
                          ),
                        ),
                        element: SwidElement.fromSwidTypeArgumentElement(
                          swidTypeArgumentElement: SwidTypeArgumentElement(
                            bound: SwidType.fromSwidInterface(
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
                          ),
                        ),
                      )
                    ],
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
                  name: "Widget",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath:
                      "package:flutter/src/widgets/framework.dart",
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
          )
        },
        namedDefaults: {},
        normalParameterNames: [],
        normalParameterTypes: [],
        optionalParameterNames: [],
        optionalParameterTypes: [],
        returnType: SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "RawAutocomplete<T>",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath:
                "package:flutter/src/widgets/autocomplete.dart",
            typeArguments: [
              SwidTypeArgumentType(
                type: SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "T",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/widgets/autocomplete.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.typeParameterType,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                ),
                element: SwidElement.fromSwidTypeArgumentElement(
                  swidTypeArgumentElement: SwidTypeArgumentElement(
                    bound: SwidType.fromSwidInterface(
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
                  ),
                ),
              )
            ],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
            declarationModifiers: SwidDeclarationModifiers.empty(),
          ),
        ),
        isFactory: false,
        typeFormals: [],
        declarationModifiers: SwidDeclarationModifiers.empty(),
      ),
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      isMixin: false,
      typeFormals: [
        SwidTypeFormal(
          value: SwidTypeFormalValue.fromString(
            string: "T",
          ),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
          swidTypeFormalBound: SwidTypeFormalBound.fromSwidInterface(
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
        )
      ],
    );

    final pipeline = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    );

    final res = pipeline.reduceFromTerm(
      DartRTManagedClassDeclaration(
        swidClass: ir,
        format: true,
      ),
    );

    expect(res, """
class RTManagedRawAutocomplete extends _2a05.RawAutocomplete
    implements _36c2.Box<_2a05.RawAutocomplete> {
  RTManagedRawAutocomplete(
      {required _fac9.String Function(_fac9.Object option)
          displayStringForOption,
      _e2dc.Widget Function(
              _e2dc.BuildContext context,
              _d800.TextEditingController textEditingController,
              _b485.FocusNode focusNode,
              void Function() onFieldSubmitted)?
          fieldViewBuilder,
      _b485.FocusNode? focusNode,
      _8577.TextEditingValue? initialValue,
      _ab4a.Key? key,
      void Function(_fac9.Object option)? onSelected,
      _d800.TextEditingController? textEditingController,
      required _7de1.FutureOr<_fac9.Iterable<_fac9.Object>> Function(
              _8577.TextEditingValue textEditingValue)
          optionsBuilder,
      required _e2dc.Widget Function(
              _e2dc.BuildContext context,
              void Function(_fac9.Object option) onSelected,
              _fac9.Iterable<_fac9.Object> options)
          optionsViewBuilder,
      required this.table,
      required this.hydroState})
      : super(
            displayStringForOption: displayStringForOption,
            fieldViewBuilder: fieldViewBuilder,
            focusNode: focusNode,
            initialValue: initialValue,
            key: key,
            onSelected: onSelected,
            textEditingController: textEditingController,
            optionsBuilder: optionsBuilder,
            optionsViewBuilder: optionsViewBuilder) {
    table[\'vmObject\'] = vmObject;
    table[\'unwrap\'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _2a05.RawAutocomplete unwrap() => this;
  _2a05.RawAutocomplete get vmObject => this;
}
""");
  }, tags: "swid");
}
