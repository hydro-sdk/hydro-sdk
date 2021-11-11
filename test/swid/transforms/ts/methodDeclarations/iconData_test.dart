import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/tsClassMethodDeclarations.dart';
import 'package:hydro_sdk/swid/ir/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final iconDataClass = SwidClass(
      name: "IconData",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/widgets/icon_data.dart",
      constructorType: SwidFunctionType(
        name: "",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "",
        namedParameterTypes: {
          "fontFamily": SwidType.fromSwidInterface(
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
          "fontPackage": SwidType.fromSwidInterface(
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
          "matchTextDirection": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "bool",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          )
        },
        namedDefaults: {
          "matchTextDirection": SwidDefaultFormalParameter(
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "package:flutter/src/widgets/icon_data.dart",
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
                value: "false",
              ),
            ),
            defaultValueCode: "false",
          )
        },
        normalParameterNames: [
          "codePoint",
        ],
        normalParameterTypes: [
          SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "int",
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
            name: "IconData",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "package:flutter/src/widgets/icon_data.dart",
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
      methods: [
        SwidFunctionType(
          name: "==",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/src/widgets/icon_data.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [
            "other",
          ],
          normalParameterTypes: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "Object",
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
          name: "hashCode",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/src/widgets/icon_data.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "int",
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
          declarationModifiers: SwidDeclarationModifiers.empty().clone(
            isGetter: true,
          ),
        ),
        SwidFunctionType(
          name: "toString",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/src/widgets/icon_data.dart",
          namedParameterTypes: {},
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
        )
      ],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {
        "codePoint": SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "int",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:core",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
            declarationModifiers: SwidDeclarationModifiers.empty(),
          ),
        ),
        "fontFamily": SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "String",
            nullabilitySuffix: SwidNullabilitySuffix.question,
            originalPackagePath: "dart:core",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
            declarationModifiers: SwidDeclarationModifiers.empty(),
          ),
        ),
        "fontPackage": SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "String",
            nullabilitySuffix: SwidNullabilitySuffix.question,
            originalPackagePath: "dart:core",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
            declarationModifiers: SwidDeclarationModifiers.empty(),
          ),
        ),
        "matchTextDirection": SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "bool",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:core",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
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

    expect(iconDataClass.instanceFieldDeclarations.length, 4);
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TsClassMethodDeclarations(swidClass: iconDataClass),
        ),
        """
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toString() : string {
    return this._dart_toString();
}
""");
  }, tags: "swid");
}
