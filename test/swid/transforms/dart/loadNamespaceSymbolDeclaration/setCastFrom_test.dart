import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/backend/dart/dartStaticMethodNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidTypeFormal.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var set = SwidClass(
      name: "Set",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:core",
      constructorType: null,
      factoryConstructors: [],
      implementedClasses: [],
      instanceFieldDeclarations: {},
      methods: [],
      mixedInClasses: [],
      staticConstFieldDeclarations: [],
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      staticMethods: [],
      typeFormals: [],
      extendedClass: null,
      isMixin: false,
    );

    var castFrom = SwidFunctionType(
      name: "castFrom",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:core",
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      namedParameterTypes: {
        "newSet": SwidType.fromSwidFunctionType(
          swidFunctionType: SwidFunctionType(
              name: "",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath: "",
              swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
              namedParameterTypes: {},
              namedDefaults: {},
              normalParameterNames: [],
              normalParameterTypes: [],
              optionalParameterNames: [],
              optionalParameterTypes: [],
              returnType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "Set<R>",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:core",
                  typeArguments: [
                    SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                        name: "R",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath: "",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.typeParameterType,
                      ),
                    ),
                  ],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                ),
              ),
              isFactory: false,
              typeFormals: [
                SwidTypeFormal(
                  value: SwidTypeFormalValue.fromString(string: "R"),
                  swidReferenceDeclarationKind:
                      SwidReferenceDeclarationKind.typeParameterType,
                )
              ]),
        )
      },
      namedDefaults: {},
      normalParameterNames: ["source"],
      normalParameterTypes: [
        SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "Set<S>",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:core",
            typeArguments: [
              SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "S",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:core",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.typeParameterType,
                ),
              ),
            ],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
          ),
        ),
      ],
      optionalParameterNames: [],
      optionalParameterTypes: [],
      returnType: SwidType.fromSwidInterface(
        swidInterface: SwidInterface(
          name: "Set<T>",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "dart:core",
          typeArguments: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "T",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.typeParameterType,
              ),
            )
          ],
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        ),
      ),
      isFactory: false,
      typeFormals: [
        SwidTypeFormal(
          value: SwidTypeFormalValue.fromString(string: "S"),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
        ),
        SwidTypeFormal(
          value: SwidTypeFormalValue.fromString(string: "T"),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
        ),
      ],
    );

    expect(
        DartStaticMethodNamespaceSymbolDeclaration(
          swidClass: set,
          swidFunctionType: castFrom,
        ).toDartSource(),
        """
table  [
\'setCastFrom\'
] = makeLuaDartFunc(func: (List<dynamic> args) { 
Closure newSet=args  [
2
]  [
\'newSet\'
];
return  [maybeBoxObject<Set>(object: Set.castFrom(maybeUnBoxAndBuildArgument<Set>(args  [
1
], parentState: hydroState), newSet: newSet != null ? <R>() => maybeUnBoxAndBuildArgument<Set>(newSet.dispatch([args[0],],parentState:hydroState,)[0], parentState: hydroState) : null ), hydroState: hydroState, table: HydroTable())]; } );""");
  }, tags: "swid");
}
