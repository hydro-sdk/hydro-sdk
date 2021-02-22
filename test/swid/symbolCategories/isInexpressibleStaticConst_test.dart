import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidDoubleLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConstPrefixedExpression.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/util/isInexpressibleStaticConst.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var endian = SwidClass(
      name: "Endian",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:typed_data",
      constructorType: null,
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      implementedClasses: [],
      staticConstFieldDeclarations: [
        SwidStaticConstFieldDeclaration(
          name: "big",
          value: SwidStaticConst.fromSwidStaticConstFunctionInvocation(
            staticConstFunctionInvocation: SwidStaticConstFunctionInvocation(
              value: "Endian._",
              staticType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "Endian",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:typed_data",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                ),
              ),
              normalParameters: [
                SwidStaticConst.fromSwidBooleanLiteral(
                  swidBooleanLiteral: SwidBooleanLiteral(value: "false"),
                ),
              ],
              namedParameters: {},
              isConstructorInvocation: false,
            ),
          ),
        )
      ],
      instanceFieldDeclarations: {},
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [],
    );

    expect(
        isInexpressibleStaticConst(
          parentClass: endian,
          staticConst: endian.staticConstFieldDeclarations.first.value,
        ),
        true);

    var icons = SwidClass(
      name: "Icons",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/material.dart",
      constructorType: null,
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      implementedClasses: [],
      staticConstFieldDeclarations: [
        SwidStaticConstFieldDeclaration(
          name: "ten_k",
          value: SwidStaticConst.fromSwidStaticConstFunctionInvocation(
            staticConstFunctionInvocation: SwidStaticConstFunctionInvocation(
              value: "IconData",
              staticType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "IconData",
                  nullabilitySuffix: SwidNullabilitySuffix.star,
                  originalPackagePath:
                      "package:flutter/src/widgets/icon_data.dart",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                ),
              ),
              normalParameters: [
                SwidStaticConst.fromSwidIntegerLiteral(
                  swidIntegerLiteral: SwidIntegerLiteral(
                    value: "0xe52a",
                  ),
                ),
              ],
              namedParameters: {
                "fontFamily": SwidStaticConst.fromSwidStringLiteral(
                  swidStringLiteral: SwidStringLiteral(
                    value: "MaterialIcons",
                  ),
                )
              },
              isConstructorInvocation: true,
            ),
          ),
        )
      ],
      instanceFieldDeclarations: {},
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [],
    );

    expect(
        isInexpressibleStaticConst(
          parentClass: icons,
          staticConst: icons.staticConstFieldDeclarations.first.value,
        ),
        false);

    var rect = SwidClass(
      name: "Icons",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/material.dart",
      constructorType: null,
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      implementedClasses: [],
      staticConstFieldDeclarations: [
        SwidStaticConstFieldDeclaration(
          name: "_giantScalar",
          value: SwidStaticConst.fromDoubleLiteral(
            swidDoubleLiteral: SwidDoubleLiteral(
              value: "1.0E+9",
            ),
          ),
        ),
        SwidStaticConstFieldDeclaration(
          name: "largest",
          value: SwidStaticConst.fromSwidStaticConstFunctionInvocation(
            staticConstFunctionInvocation: SwidStaticConstFunctionInvocation(
              value: "Rect.fromLTRB",
              staticType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "Rect",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:ui",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                ),
              ),
              normalParameters: [
                SwidStaticConst.fromSwidStaticConstPrefixedExpression(
                  swidStaticConstPrefixedExpression:
                      SwidStaticConstPrefixedExpression(
                    prefix: "-",
                    expression:
                        SwidStaticConst.fromSwidStaticConstFieldReference(
                      swidStaticConstFieldReference:
                          SwidStaticConstFieldReference(
                        name: "_giantScalar",
                      ),
                    ),
                  ),
                ),
                SwidStaticConst.fromSwidStaticConstPrefixedExpression(
                  swidStaticConstPrefixedExpression:
                      SwidStaticConstPrefixedExpression(
                    prefix: "-",
                    expression:
                        SwidStaticConst.fromSwidStaticConstFieldReference(
                      swidStaticConstFieldReference:
                          SwidStaticConstFieldReference(
                        name: "_giantScalar",
                      ),
                    ),
                  ),
                ),
                SwidStaticConst.fromSwidStaticConstFieldReference(
                  swidStaticConstFieldReference: SwidStaticConstFieldReference(
                    name: "_giantScalar",
                  ),
                ),
                SwidStaticConst.fromSwidStaticConstFieldReference(
                  swidStaticConstFieldReference: SwidStaticConstFieldReference(
                    name: "_giantScalar",
                  ),
                ),
              ],
              namedParameters: {},
              isConstructorInvocation: false,
            ),
          ),
        ),
      ],
      instanceFieldDeclarations: {},
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [],
    );

    expect(
        isInexpressibleStaticConst(
          parentClass: rect,
          staticConst: rect.staticConstFieldDeclarations.first.value,
        ),
        false);
    expect(
        isInexpressibleStaticConst(
          parentClass: rect,
          staticConst: rect.staticConstFieldDeclarations.last.value,
        ),
        false);

    var cupertinoIcons = SwidClass(
      name: "Icons",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/cupertino/icons.dart",
      constructorType: null,
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      implementedClasses: [],
      staticConstFieldDeclarations: [
        SwidStaticConstFieldDeclaration(
          name: "iconFont",
          value: SwidStaticConst.fromSwidStringLiteral(
            swidStringLiteral: SwidStringLiteral(value: "CupertinoIcons"),
          ),
        ),
        SwidStaticConstFieldDeclaration(
          name: "iconFontPackage",
          value: SwidStaticConst.fromSwidStringLiteral(
            swidStringLiteral: SwidStringLiteral(value: "cupertino_icons"),
          ),
        ),
        SwidStaticConstFieldDeclaration(
          name: "left_chevron",
          value: SwidStaticConst.fromSwidStaticConstFunctionInvocation(
            staticConstFunctionInvocation: SwidStaticConstFunctionInvocation(
              value: "IconData",
              staticType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "IconData",
                  nullabilitySuffix: SwidNullabilitySuffix.star,
                  originalPackagePath:
                      "package:flutter/src/widgets/icon_data.dart",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                ),
              ),
              normalParameters: [
                SwidStaticConst.fromSwidIntegerLiteral(
                  swidIntegerLiteral: SwidIntegerLiteral(
                    value: "oxf3d2",
                  ),
                ),
              ],
              namedParameters: {
                "fontFamily": SwidStaticConst.fromSwidStaticConstFieldReference(
                  swidStaticConstFieldReference: SwidStaticConstFieldReference(
                    name: "iconFont",
                  ),
                ),
                "fontPackage":
                    SwidStaticConst.fromSwidStaticConstFieldReference(
                  swidStaticConstFieldReference: SwidStaticConstFieldReference(
                    name: "iconFontPackage",
                  ),
                ),
                "matchTextDirection": SwidStaticConst.fromSwidBooleanLiteral(
                  swidBooleanLiteral: SwidBooleanLiteral(
                    value: "true",
                  ),
                )
              },
              isConstructorInvocation: true,
            ),
          ),
        )
      ],
      instanceFieldDeclarations: {},
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [],
    );

    expect(
        cupertinoIcons.staticConstFieldDeclarations.every((x) =>
            isInexpressibleStaticConst(
                parentClass: cupertinoIcons, staticConst: x.value) ==
            false),
        true);
  }, tags: "swid");
}
