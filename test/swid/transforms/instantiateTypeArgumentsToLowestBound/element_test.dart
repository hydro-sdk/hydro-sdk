import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalBound.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateGenericsToLowestBound.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "Element",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/widgets/framework.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
            name: "dependOnInheritedWidgetOfExactType",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "package:flutter/src/widgets/framework.dart",
            namedParameterTypes: {
              "aspect": SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "Object",
                  nullabilitySuffix: SwidNullabilitySuffix.question,
                  originalPackagePath: "dart:core",
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
                name: "T",
                nullabilitySuffix: SwidNullabilitySuffix.question,
                originalPackagePath:
                    "package:flutter/src/widgets/framework.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.typeParameterType,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            isFactory: false,
            typeFormals: [
              SwidTypeFormal(
                value: SwidTypeFormalValue.fromString(
                  string: "T",
                ),
                swidReferenceDeclarationKind:
                    SwidReferenceDeclarationKind.typeParameterType,
                swidTypeFormalBound: SwidTypeFormalBound.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "InheritedWidget",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/widgets/framework.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                ),
              )
            ],
            declarationModifiers: SwidDeclarationModifiers.empty())
      ],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      isMixin: false,
      typeFormals: [],
    );

    final instantiated = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    )
        .reduceFromTerm(
          InstantiateGenericsToLowestBound(
            swidType: SwidType.fromSwidClass(
              swidClass: ir,
            ),
          ),
        )
        .maybeWhen(
          fromSwidClass: (val) => val,
          orElse: () => null,
        )!;

    expect(
      instantiated.methods.first.returnType,
      SwidType.fromSwidInterface(
        swidInterface: SwidInterface(
          name: "T",
          nullabilitySuffix: SwidNullabilitySuffix.question,
          originalPackagePath: "package:flutter/src/widgets/framework.dart",
          typeArguments: [],
          referenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
      ),
    );
  }, tags: "swid");
}
