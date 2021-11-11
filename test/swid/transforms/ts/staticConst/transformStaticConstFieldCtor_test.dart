import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var icons = SwidClass(
      name: "Icons",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/material.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      implementedClasses: [],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
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
            declarationModifiers: SwidDeclarationModifiers.empty(),
            name: "IconData",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "package:flutter/widgets.dart",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
          )),
          normalParameters: [
            SwidStaticConst.fromSwidIntegerLiteral(
              swidIntegerLiteral: SwidIntegerLiteral(
                value: "0xe52a",
              ),
            )
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
    );
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformStaticConstFieldDeclaration(
            parentClass: icons,
            staticConstFieldDeclaration: tenk,
            scopeResolver: (_) => null,
          ),
        ),
        "public static ten_k = new IconData(0xe52a,{ fontFamily: \"MaterialIcons\" });");
  }, tags: "swid");
}
