import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/backend/dart/dartStaticMethodNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/frontend/util/instantiateAllGenericsAsDynamic.dart';

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
          swidFunctionType: instantiateAllGenericsAsDynamic(
                  swidType:
                      SwidType.fromSwidFunctionType(swidFunctionType: castFrom))
              .maybeWhen(
                  fromSwidFunctionType: (val) => val, orElse: () => null),
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
return  [maybeBoxObject<Set>(object: Set.castFrom(maybeUnBoxAndBuildArgument<Set<dynamic>>(args  [
1
], parentState: hydroState), newSet: newSet != null ? <R>() => maybeUnBoxAndBuildArgument<Set<R>>(newSet.dispatch([args[0],],parentState:hydroState,)[0], parentState: hydroState) : null ), hydroState: hydroState, table: HydroTable())]; } );""");
  }, tags: "swid");
}
