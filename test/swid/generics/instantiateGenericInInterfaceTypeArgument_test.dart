import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidGenericInstantiator.dart';
import 'package:hydro_sdk/swid/ir/swidInstantiableGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidInstantiatedGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/util/instantiateAllGenericsAsDynamic.dart';
import 'package:hydro_sdk/swid/ir/util/instantiateGeneric.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "MapView",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:collection",
      constructorType: SwidFunctionType(
        name: "",
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
            name: "MapView<K, V>",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:collection",
            typeArguments: [
              SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "K",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:collection",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.typeParameterType,
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              ),
              SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "V",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:collection",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.typeParameterType,
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              ),
            ],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
            declarationModifiers: SwidDeclarationModifiers.empty(),
          ),
        ),
        isFactory: false,
        typeFormals: [],
        declarationModifiers: SwidDeclarationModifiers.empty(),
      ),
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      isMixin: false,
      typeFormals: [
        SwidTypeFormal(
          value: SwidTypeFormalValue.fromString(
            string: "K",
          ),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
        ),
        SwidTypeFormal(
          value: SwidTypeFormalValue.fromString(
            string: "V",
          ),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
        ),
      ],
    );

    final returnTypeWithInstantiatedGeneric = instantiateGeneric(
      genericInstantiator: SwidGenericInstantiator(
        name: "K",
        instantiatedGeneric:
            SwidInstantiatedGeneric.fromSwidInstantiableGeneric(
          swidInstantiableGeneric: SwidInstantiableGeneric.fromSwidInterface(
            swidInterface: dartDynamic,
          ),
        ),
      ),
      swidType: ir.constructorType!.returnType,
    );

    expect(
      returnTypeWithInstantiatedGeneric
          .maybeWhen(
            fromSwidInterface: (val) => val,
            orElse: () => null,
          )!
          .typeArguments
          .first,
      SwidType.fromSwidInterface(
        swidInterface: dartDynamic,
      ),
    );

    final returnTypeInstantiatedWithInstantiateAllAsDynamic =
        instantiateAllGenericsAsDynamic(
      swidType: ir.constructorType!.returnType,
    );

    expect(
      returnTypeInstantiatedWithInstantiateAllAsDynamic
          .maybeWhen(
            fromSwidInterface: (val) => val,
            orElse: () => null,
          )!
          .typeArguments
          .first,
      SwidType.fromSwidInterface(
        swidInterface: dartDynamic,
      ),
    );
  }, tags: "swid");
}
