import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/analyses/isInexpressibleStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidDoubleLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedExpression.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var endian = SwidClass(
      name: "Endian",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:typed_data",
      constructorType: null,
      generativeConstructors: [],
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
                  declarationModifiers: SwidDeclarationModifiers.empty(),
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
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [],
    );

    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          IsInexpressibleStaticConst(
            parentClass: endian,
            swidStaticConst: endian.staticConstFieldDeclarations.first.value,
          ),
        ),
        true);

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
      staticConstFieldDeclarations: [
        SwidStaticConstFieldDeclaration(
          name: "ten_k",
          value: SwidStaticConst.fromSwidStaticConstFunctionInvocation(
            staticConstFunctionInvocation: SwidStaticConstFunctionInvocation(
              value: "IconData",
              staticType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  declarationModifiers: SwidDeclarationModifiers.empty(),
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
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [],
    );

    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          IsInexpressibleStaticConst(
            parentClass: icons,
            swidStaticConst: icons.staticConstFieldDeclarations.first.value,
          ),
        ),
        false);

    var rect = SwidClass(
      name: "Icons",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/material.dart",
      constructorType: null,
      generativeConstructors: [],
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
                  declarationModifiers: SwidDeclarationModifiers.empty(),
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
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [],
    );

    expect(
      CachingPipeline(
        cacheMgr: const PipelineNoopCacheMgr(),
      ).reduceFromTerm(
        IsInexpressibleStaticConst(
          parentClass: rect,
          swidStaticConst: rect.staticConstFieldDeclarations.first.value,
        ),
      ),
      false,
    );
    expect(
      CachingPipeline(
        cacheMgr: const PipelineNoopCacheMgr(),
      ).reduceFromTerm(
        IsInexpressibleStaticConst(
          parentClass: rect,
          swidStaticConst: rect.staticConstFieldDeclarations.last.value,
        ),
      ),
      false,
    );

    var cupertinoIcons = SwidClass(
      name: "Icons",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/cupertino/icons.dart",
      constructorType: null,
      generativeConstructors: [],
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
                  declarationModifiers: SwidDeclarationModifiers.empty(),
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
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [],
    );

    expect(
        cupertinoIcons.staticConstFieldDeclarations.every((x) =>
            CachingPipeline(
              cacheMgr: const PipelineNoopCacheMgr(),
            ).reduceFromTerm(
              IsInexpressibleStaticConst(
                parentClass: cupertinoIcons,
                swidStaticConst: x.value,
              ),
            ) ==
            false),
        true);
  }, tags: "swid");
}
