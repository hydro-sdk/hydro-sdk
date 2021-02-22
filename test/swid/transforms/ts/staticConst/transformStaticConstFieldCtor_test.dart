import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstFieldDeclaration.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var icons = SwidClass(
      name: "Icons",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/material.dart",
      constructorType: null,
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      implementedClasses: [],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [],
    );

    var tenk = SwidStaticConstFieldDeclaration(
        name: "ten_k",
        value: SwidStaticConst.fromSwidStaticConstFunctionInvocation(
            staticConstFunctionInvocation: SwidStaticConstFunctionInvocation(
                value: "IconData",
                staticType: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                  name: "IconData",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "package:flutter/widgets.dart",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                )),
                normalParameters: [
                  SwidStaticConst.fromSwidIntegerLiteral(
                      swidIntegerLiteral: SwidIntegerLiteral(value: "0xe52a"))
                ],
                namedParameters: {
                  "fontFamily": SwidStaticConst.fromSwidStringLiteral(
                      swidStringLiteral:
                          SwidStringLiteral(value: "MaterialIcons"))
                },
                isConstructorInvocation: true)));
    expect(
        transformStaticConstFieldDeclaration(
            parentClass: icons,
            staticConstFieldDeclaration: tenk,
            scopeResolver: (_) => null),
        "public static ten_k = new IconData(0xe52a,{ fontFamily: \"MaterialIcons\" });");
  }, tags: "swid");
}
