import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInstantiableGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidInstantiatedGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/util/instantiateAllGenericsAs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    /*
    class Iterable<E> {
     Iterable<E> Iterable();
     Iterable<T> map<T>(T f(E e))
    }
  */
    var iterable = SwidClass(
        name: "Iterable",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "dart:core",
        implementedClasses: [],
        constructorType: SwidFunctionType(
          name: "",
          nullabilitySuffix: SwidNullabilitySuffix.none,
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
              name: "Iterable<E>",
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
                          SwidReferenceDeclarationKind.typeParameterType),
                ),
              ],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
            ),
          ),
          isFactory: false,
          typeFormals: [],
        ),
        factoryConstructors: [],
        staticMethods: [],
        methods: [
          SwidFunctionType(
            name: "map",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:core",
            swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
            namedParameterTypes: {},
            namedDefaults: {},
            normalParameterNames: ["f"],
            normalParameterTypes: [
              SwidType.fromSwidFunctionType(
                swidFunctionType: SwidFunctionType(
                    name: "",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "",
                    swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
                    namedParameterTypes: {},
                    namedDefaults: {},
                    normalParameterNames: ["e"],
                    normalParameterTypes: [
                      SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
                              name: "E",
                              nullabilitySuffix: SwidNullabilitySuffix.none,
                              originalPackagePath: "dart:core",
                              typeArguments: [],
                              referenceDeclarationKind:
                                  SwidReferenceDeclarationKind
                                      .typeParameterType)),
                    ],
                    optionalParameterNames: [],
                    optionalParameterTypes: [],
                    returnType: SwidType.fromSwidInterface(
                        swidInterface: SwidInterface(
                      name: "T",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.typeParameterType,
                    )),
                    isFactory: false,
                    typeFormals: []),
              ),
            ],
            optionalParameterNames: [],
            optionalParameterTypes: [],
            returnType: SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "Iterable<T>",
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
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
              ),
            ),
            isFactory: false,
            typeFormals: [
              SwidTypeFormal(
                value: SwidTypeFormalValue.fromString(string: "T"),
                swidReferenceDeclarationKind:
                    SwidReferenceDeclarationKind.typeParameterType,
              ),
            ],
          ),
        ],
        staticConstFieldDeclarations: [],
        instanceFieldDeclarations: {},
        swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
        mixedInClasses: [],
        extendedClass: null,
        isMixin: false,
        typeFormals: [
          SwidTypeFormal(
            value: SwidTypeFormalValue.fromString(string: "E"),
            swidReferenceDeclarationKind:
                SwidReferenceDeclarationKind.typeParameterType,
          )
        ]);
    expect(
        DartVMManagedClassDeclaration(
          swidClass: instantiateAllGenericsAs(
            swidType: SwidType.fromSwidClass(swidClass: iterable),
            instantiatedGeneric:
                SwidInstantiatedGeneric.fromSwidInstantiableGeneric(
              swidInstantiableGeneric:
                  SwidInstantiableGeneric.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "dynamic",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "",
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.dynamicType,
                  typeArguments: [],
                ),
              ),
            ),
          ).when(
            fromSwidInterface: (_) => null,
            fromSwidClass: (val) => val,
            fromSwidDefaultFormalParameter: (_) => null,
            fromSwidFunctionType: (_) => null,
          ),
        ).toDartSource(),
        """
class VMManagedIterable extends VMManagedBox<Iterable<dynamic>> {
  VMManagedIterable(
      {@required this.table,
      @required this.vmObject,
      @required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table[\'map\'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure f = args[1];
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.map(f != null
                ? (e) => f.dispatch(
                      [args[0], e],
                      parentState: hydroState,
                    )[0]
                : null),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Iterable vmObject;
}
""");
  }, tags: "swid");
}
