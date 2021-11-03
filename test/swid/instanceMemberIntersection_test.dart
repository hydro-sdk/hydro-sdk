import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/instanceMemberIntersection.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final first = SwidClass(
      name: "",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
          name: "firstMethod",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "",
              declarationModifiers: SwidDeclarationModifiers.empty(),
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "",
              referenceDeclarationKind: SwidReferenceDeclarationKind.unknown,
              typeArguments: [],
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
        SwidFunctionType(
          name: "secondMethod",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "",
              declarationModifiers: SwidDeclarationModifiers.empty(),
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "",
              referenceDeclarationKind: SwidReferenceDeclarationKind.unknown,
              typeArguments: [],
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
      ],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {
        "firstField": SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "",
            declarationModifiers: SwidDeclarationModifiers.empty(),
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "",
            referenceDeclarationKind: SwidReferenceDeclarationKind.unknown,
            typeArguments: [],
          ),
        ),
      },
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      isMixin: false,
      typeFormals: [],
    );

    final second = SwidClass(
      name: "",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
          name: "firstMethod",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "",
              declarationModifiers: SwidDeclarationModifiers.empty(),
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "",
              referenceDeclarationKind: SwidReferenceDeclarationKind.unknown,
              typeArguments: [],
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
      ],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {
        "firstField": SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "",
            declarationModifiers: SwidDeclarationModifiers.empty(),
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "",
            referenceDeclarationKind: SwidReferenceDeclarationKind.unknown,
            typeArguments: [],
          ),
        ),
        "secondField": SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "",
            declarationModifiers: SwidDeclarationModifiers.empty(),
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "",
            referenceDeclarationKind: SwidReferenceDeclarationKind.unknown,
            typeArguments: [],
          ),
        ),
      },
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      isMixin: false,
      typeFormals: [],
    );

    expect(
      instanceMemberIntersection(
        first: first,
        second: second,
      ),
      InstanceMemberIntersectionResult(
        methods: [
          "firstMethod",
        ],
        instanceFields: [
          "firstField",
        ],
      ),
    );
  }, tags: "swid");
}
