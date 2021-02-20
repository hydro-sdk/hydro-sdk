import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/dartPrimitives.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidGenericInstantiator.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidInstantiableGeneric.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidInstantiatedGeneric.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/frontend/util/instantiateGeneric.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var iterable = SwidClass(
      name: "Iterable",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:core",
      constructorType: null,
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
          name: "first",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "dart:core",
          swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
            name: "E",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:core",
            typeArguments: [],
            referenceDeclarationKind:
                SwidReferenceDeclarationKind.typeParameterType,
          )),
          isFactory: false,
          typeFormals: [],
        ),
        SwidFunctionType(
          name: "iterator",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "dart:core",
          swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
            name: "Iterator<E>",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:core",
            typeArguments: [
              SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                name: "E",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.typeParameterType,
              ))
            ],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
          )),
          isFactory: false,
          typeFormals: [],
        )
      ],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [
        SwidTypeFormal(
          value: SwidTypeFormalValue.fromString(string: "E"),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
        )
      ],
    );

    var replacedIterable = instantiateGeneric(
      genericInstantiator: SwidGenericInstantiator(
        name: "E",
        instantiatedGeneric:
            SwidInstantiatedGeneric.fromSwidInstantiableGeneric(
          swidInstantiableGeneric: SwidInstantiableGeneric.fromSwidInterface(
              swidInterface: DartPrimitives.dartDouble),
        ),
      ),
      swidType: SwidType.fromSwidClass(
        swidClass: iterable,
      ),
    ).when(
      fromSwidInterface: (_) => null,
      fromSwidClass: (val) => val,
      fromSwidDefaultFormalParameter: (_) => null,
      fromSwidFunctionType: (_) => null,
    );

    expect(
        replacedIterable.methods.first.returnType
            .maybeWhen(fromSwidInterface: (val) => val, orElse: () => null),
        DartPrimitives.dartDouble);

    expect(
        replacedIterable.methods.last.returnType
            .maybeWhen(fromSwidInterface: (val) => val, orElse: () => null)
            .displayName,
        "Iterator<double>");
  }, tags: "swid");
}
