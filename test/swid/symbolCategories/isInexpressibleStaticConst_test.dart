import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidBooleanLiteral.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/isInexpressibleStaticConst.dart';

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
          staticConst: icons.staticConstFieldDeclarations.first.value,
        ),
        false);
  }, tags: "swid");
}
