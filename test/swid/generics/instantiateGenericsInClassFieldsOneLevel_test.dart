import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/instantiateGeneric.dart';

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
        type: SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "double",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:core",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
          ),
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
        SwidInterface(
          name: "double",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "dart:core",
          typeArguments: [],
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        ));

    expect(
        replacedIterable.methods.last.returnType
            .maybeWhen(fromSwidInterface: (val) => val, orElse: () => null)
            .displayName,
        "Iterator<double>");
  }, tags: "swid");
}
