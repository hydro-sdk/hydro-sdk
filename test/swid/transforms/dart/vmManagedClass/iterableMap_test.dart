import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInstantiableGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidInstantiatedGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateAllGenericsAs.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

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
      generativeConstructors: [],
      constructorType: SwidFunctionType(
        name: "",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "",
        declarationModifiers: SwidDeclarationModifiers.empty(),
        namedParameterTypes: {},
        namedDefaults: {},
        normalParameterNames: [],
        normalParameterTypes: [],
        optionalParameterNames: [],
        optionalParameterTypes: [],
        returnType: SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            declarationModifiers: SwidDeclarationModifiers.empty(),
            name: "Iterable<E>",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:core",
            typeArguments: [
              SwidTypeArgumentType(
                type: SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                      name: "E",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.typeParameterType),
                ),
                element: null,
              ),
            ],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
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
          declarationModifiers: SwidDeclarationModifiers.empty(),
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [
            "f",
          ],
          normalParameterTypes: [
            SwidType.fromSwidFunctionType(
              swidFunctionType: SwidFunctionType(
                name: "",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "",
                declarationModifiers: SwidDeclarationModifiers.empty(),
                namedParameterTypes: {},
                namedDefaults: {},
                normalParameterNames: [
                  "e",
                ],
                normalParameterTypes: [
                  SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                          declarationModifiers:
                              SwidDeclarationModifiers.empty(),
                          name: "E",
                          nullabilitySuffix: SwidNullabilitySuffix.none,
                          originalPackagePath: "dart:core",
                          typeArguments: [],
                          referenceDeclarationKind:
                              SwidReferenceDeclarationKind.typeParameterType)),
                ],
                optionalParameterNames: [],
                optionalParameterTypes: [],
                returnType: SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                    name: "T",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "dart:core",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.typeParameterType,
                  ),
                ),
                isFactory: false,
                typeFormals: [],
              ),
            ),
          ],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              declarationModifiers: SwidDeclarationModifiers.empty(),
              name: "Iterable<T>",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [
                SwidTypeArgumentType(
                  type: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                      name: "T",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.typeParameterType,
                    ),
                  ),
                  element: null,
                ),
              ],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
            ),
          ),
          isFactory: false,
          typeFormals: [
            SwidTypeFormal(
              swidTypeFormalBound: null,
              value: SwidTypeFormalValue.fromString(
                string: "T",
              ),
              swidReferenceDeclarationKind:
                  SwidReferenceDeclarationKind.typeParameterType,
            ),
          ],
        ),
      ],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [
        SwidTypeFormal(
          swidTypeFormalBound: null,
          value: SwidTypeFormalValue.fromString(
            string: "E",
          ),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
        )
      ],
    );
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          DartVMManagedClassDeclaration(
            swidClass: CachingPipeline(
              cacheMgr: const PipelineNoopCacheMgr(),
            )
                .reduceFromTerm(
                  InstantiateAllGenericsAs(
                    instantiateNormalParameterTypes: false,
                    swidType: SwidType.fromSwidClass(swidClass: iterable),
                    instantiatedGeneric:
                        SwidInstantiatedGeneric.fromSwidInstantiableGeneric(
                      swidInstantiableGeneric:
                          SwidInstantiableGeneric.fromSwidInterface(
                        swidInterface: SwidInterface(
                          declarationModifiers:
                              SwidDeclarationModifiers.empty(),
                          name: "dynamic",
                          nullabilitySuffix: SwidNullabilitySuffix.none,
                          originalPackagePath: "",
                          referenceDeclarationKind:
                              SwidReferenceDeclarationKind.dynamicType,
                          typeArguments: [],
                        ),
                      ),
                    ),
                  ),
                )
                .when(
                  fromSwidInterface: (_) => dartUnknownClass,
                  fromSwidClass: (val) => val,
                  fromSwidDefaultFormalParameter: (_) => dartUnknownClass,
                  fromSwidFunctionType: (_) => dartUnknownClass,
                ),
          ),
        ),
        """
class VMManagedIterable extends VMManagedBox<Iterable<dynamic>> {
  VMManagedIterable(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table[\'map\'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedf = luaCallerArguments[1];
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.map((e) => unpackedf.dispatch(
                  [luaCallerArguments[0], e],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Iterable<dynamic> vmObject;
}
""");
  }, tags: "swid");
}
