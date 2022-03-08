import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartLoadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "TextField",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/material/text_field.dart",
      constructorType: SwidFunctionType(
        name: "",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "",
        namedParameterTypes: {
          "autoCorrect": SwidType.fromSwidInterface(
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
          "autofillHints": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "Iterable<String>",
              nullabilitySuffix: SwidNullabilitySuffix.question,
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
                )
              ],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "autofocus": SwidType.fromSwidInterface(
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
          "buildCounter": SwidType.fromSwidFunctionType(
            swidFunctionType: SwidFunctionType(
              name: "",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath:
                  "package:flutter/src/material/text_field.dart",
              namedParameterTypes: {
                "currentLength": SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "int",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "dart:core",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    declarationModifiers:
                        SwidDeclarationModifiers.empty().clone(
                      isRequiredNamed: true,
                    ),
                  ),
                ),
                "isFocused": SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "bool",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "dart:core",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    declarationModifiers:
                        SwidDeclarationModifiers.empty().clone(
                      isRequiredNamed: true,
                    ),
                  ),
                ),
                "maxLength": SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "int",
                    nullabilitySuffix: SwidNullabilitySuffix.question,
                    originalPackagePath: "dart:core",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    declarationModifiers:
                        SwidDeclarationModifiers.empty().clone(
                      isRequiredNamed: true,
                    ),
                  ),
                ),
              },
              namedDefaults: {},
              normalParameterNames: [
                "context",
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
                )
              ],
              optionalParameterNames: [],
              optionalParameterTypes: [],
              returnType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "Widget",
                  nullabilitySuffix: SwidNullabilitySuffix.question,
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
            name: "TextField",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "package:flutter/src/material/text_field.dart",
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
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      isMixin: false,
      typeFormals: [],
    );

    final pipeline = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    );

    final res = pipeline.reduceFromTerm(
      DartLoadNamespaceSymbolDeclaration(
        swidClass: ir,
        format: true,
      ),
    );

    expect(res, """
void loadTextField(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table[\'textField\'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedbuildCounter = luaCallerArguments.length >= 2
        ? luaCallerArguments[1][\'buildCounter\']
        : null;
    return [
      RTManagedTextField(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          autoCorrect: luaCallerArguments.length >= 2
              ? luaCallerArguments[1][\'autoCorrect\']
              : null,
          autofillHints: _36c2.maybeUnBoxAndBuildArgument<
                  _fac9.Iterable<_fac9.String>?, _fac9.String>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1][\'autofillHints\']
                  : null,
              parentState: hydroState),
          autofocus: luaCallerArguments.length >= 2
              ? luaCallerArguments[1][\'autofocus\']
              : null,
          buildCounter: unpackedbuildCounter != null
              ? (context,
                      {required currentLength,
                      required isFocused,
                      maxLength}) =>
                  _36c2
                      .maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
                          ((
                            final _fac9.List<_fac9.dynamic>? val,
                          ) =>
                              val != null && val.length >= 1 ? val[0] : null)(
                            unpackedbuildCounter.dispatch(
                              [
                                luaCallerArguments[0],
                                context,
                                _36c2.HydroTable.fromMap({
                                  "currentLength": currentLength,
                                  "isFocused": isFocused,
                                  "maxLength": maxLength
                                }),
                              ],
                              parentState: hydroState,
                            ),
                          ),
                          parentState: hydroState)
              : null)
    ];
  });
  _36c2.registerBoxer<_6de5.TextField>(boxer: (
      {required _6de5.TextField vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextField(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
""");
  }, tags: "swid");
}
