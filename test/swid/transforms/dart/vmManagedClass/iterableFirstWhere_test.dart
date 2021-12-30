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
     E firstWhere(bool test(E element), {E orElse()?})
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
          name: "firstWhere",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "dart:core",
          declarationModifiers: SwidDeclarationModifiers.empty(),
          namedParameterTypes: {
            "orElse": SwidType.fromSwidFunctionType(
              swidFunctionType: SwidFunctionType(
                name: "",
                nullabilitySuffix: SwidNullabilitySuffix.question,
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
                    name: "E",
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
          },
          namedDefaults: {},
          normalParameterNames: [
            "test",
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
                  "element",
                ],
                normalParameterTypes: [
                  SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                      name: "E",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.typeParameterType,
                    ),
                  ),
                ],
                optionalParameterNames: [],
                optionalParameterTypes: [],
                returnType: SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                    name: "bool",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "dart:core",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
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
              name: "E",
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
    table[\'firstWhere\'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      Closure? unpackedorElse = luaCallerArguments.length >= 3
          ? luaCallerArguments[2][\'orElse\']
          : null;
      return [
        vmObject.firstWhere(
            (element) => unpackedtest.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )[0],
            orElse: unpackedorElse != null
                ? () => unpackedorElse.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0]
                : null),
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
