import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/tsClassStaticConstFieldDeclarations.dart';
import 'package:hydro_sdk/swid/ir/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstIdentifier.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final cupertinoIconsClass = SwidClass(
      name: "CupertinoIcons",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/cupertino/icons.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      staticConstFieldDeclarations: [
        SwidStaticConstFieldDeclaration(
          name: "iconFont",
          value: SwidStaticConst.fromSwidStringLiteral(
            swidStringLiteral: SwidStringLiteral(
              value: "CupertinoIcons",
            ),
          ),
        ),
        SwidStaticConstFieldDeclaration(
          name: "iconFontPackage",
          value: SwidStaticConst.fromSwidStringLiteral(
            swidStringLiteral: SwidStringLiteral(
              value: "cupertino_icons",
            ),
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
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/widgets/icon_data.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                ),
                normalParameters: [
                  SwidStaticConst.fromSwidIntegerLiteral(
                    swidIntegerLiteral: SwidIntegerLiteral(
                      value: "0xf3d2",
                    ),
                  ),
                ],
                namedParameters: {
                  "fontFamily": SwidStaticConst.fromSwidStaticConstIdentifier(
                    staticConstIdentifier: SwidStaticConstIdentifier(
                      identifier: "iconFont",
                      enclosingType: SwidType.fromSwidInterface(
                        swidInterface: SwidInterface(
                          name: "CupertinoIcons",
                          nullabilitySuffix: SwidNullabilitySuffix.none,
                          originalPackagePath:
                              "package:flutter/src/cupertino/icons.dart",
                          typeArguments: [],
                          referenceDeclarationKind:
                              SwidReferenceDeclarationKind.classElement,
                          declarationModifiers:
                              SwidDeclarationModifiers.empty(),
                        ),
                      ),
                    ),
                  ),
                  "fontPackage": SwidStaticConst.fromSwidStaticConstIdentifier(
                    staticConstIdentifier: SwidStaticConstIdentifier(
                      identifier: "iconFontPackage",
                      enclosingType: SwidType.fromSwidInterface(
                        swidInterface: SwidInterface(
                          name: "CupertinoIcons",
                          nullabilitySuffix: SwidNullabilitySuffix.none,
                          originalPackagePath:
                              "package:flutter/src/cupertino/icons.dart",
                          typeArguments: [],
                          referenceDeclarationKind:
                              SwidReferenceDeclarationKind.classElement,
                          declarationModifiers:
                              SwidDeclarationModifiers.empty(),
                        ),
                      ),
                    ),
                  ),
                  "matchTextDirection": SwidStaticConst.fromSwidBooleanLiteral(
                    swidBooleanLiteral: SwidBooleanLiteral(
                      value: "true",
                    ),
                  )
                },
                isConstructorInvocation: true),
          ),
        ),
      ],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      isMixin: false,
      typeFormals: [],
    );

    expect(cupertinoIconsClass.staticConstFieldDeclarations.length, 3);
    //Should be able to resolve the inline references to CupertinoIcons.iconFont and CupertinoIcons.iconFontPackage
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TsClassStaticConstFieldDeclarations(
            swidClass: cupertinoIconsClass,
          ),
        ),
        """
    public static iconFont = "CupertinoIcons";
    public static iconFontPackage = "cupertino_icons";
    public static left_chevron = new IconData(0xf3d2,{ fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage, matchTextDirection: true });
""");
  }, tags: "swid");
}
