import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/unsatisfiedTypeParameters.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    //Iterable<T> map<T>(T f(E e))
    var map = SwidFunctionType(
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
                            SwidReferenceDeclarationKind.typeParameterType)),
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
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        ),
      ),
      isFactory: false,
      typeFormals: [
        SwidTypeFormal(
          name: "T",
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
        ),
      ],
    );

    var unsatisfiedTypesFromMap = unsatisfiedTypeParameters(
        swidType: SwidType.fromSwidFunctionType(swidFunctionType: map));
    /*
      The first argument to the delegate argument to "map" is typed as "E".
      This type is not satisifed by the given declaration of "map".
  */
    expect(unsatisfiedTypesFromMap, isNotNull);
    expect(unsatisfiedTypesFromMap.length, 1);
    expect(unsatisfiedTypesFromMap.first.name, "E");

    var mapWithNoTypeParameters = SwidFunctionType.clone(
      swidFunctionType: map,
      typeFormals: [],
    );

    var unsatisfiedTypesFromMapWithNoTypes = unsatisfiedTypeParameters(
        swidType: SwidType.fromSwidFunctionType(
            swidFunctionType: mapWithNoTypeParameters));

    /*
      Deleting the declaration of "T" from "map" should cause the uses of "T" to now
      be unsatisfied
    */
    expect(unsatisfiedTypesFromMapWithNoTypes, isNotNull);
    expect(unsatisfiedTypesFromMapWithNoTypes.length, 3);
    expect(unsatisfiedTypesFromMapWithNoTypes, [
      SwidTypeFormal(
          name: "E",
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType),
      SwidTypeFormal(
          name: "T",
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType),
      SwidTypeFormal(
          name: "T",
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType),
    ]);

    //factory Iterable<E> Iterable.empty()
    var empty = SwidFunctionType(
        name: "empty",
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
                      SwidReferenceDeclarationKind.typeParameterType,
                ),
              ),
            ],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
          ),
        ),
        isFactory: true,
        typeFormals: []);

    var unsatisfiedTypesFromEmpty = unsatisfiedTypeParameters(
        swidType: SwidType.fromSwidFunctionType(swidFunctionType: empty));

    /*
      Empty is declared as returning "Iterable<E>" but no declaration of "E" is given
  */
    expect(unsatisfiedTypesFromEmpty, isNotNull);
    expect(unsatisfiedTypesFromEmpty.length, 1);
    expect(unsatisfiedTypesFromEmpty, [
      SwidTypeFormal(
          name: "E",
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType)
    ]);

    //Iterable<E>  Iterable()
    var constructor = SwidFunctionType(
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
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        ),
      ),
      isFactory: false,
      typeFormals: [],
    );
    var unsatisfiedTypesFromConstructor = unsatisfiedTypeParameters(
        swidType: SwidType.fromSwidFunctionType(swidFunctionType: constructor));

    expect(unsatisfiedTypesFromConstructor, isNotNull);
    expect(unsatisfiedTypesFromConstructor.length, 1);
    expect(unsatisfiedTypesFromConstructor, [
      SwidTypeFormal(
          name: "E",
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType)
    ]);
    /*
    class Iterable<E> {
     Iterable<E> Iterable();
    }
  */
    var iterable = SwidClass(
        name: "Iterable",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "dart:core",
        constructorType: constructor,
        factoryConstructors: [],
        staticMethods: [],
        methods: [],
        staticConstFieldDeclarations: [],
        instanceFieldDeclarations: {},
        swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
        mixedInClasses: [],
        extendedClass: null,
        isMixin: false,
        typeFormals: [
          SwidTypeFormal(
            name: "E",
            swidReferenceDeclarationKind:
                SwidReferenceDeclarationKind.typeParameterType,
          )
        ]);

    var unsatisfiedTypesFromIterable = unsatisfiedTypeParameters(
        swidType: SwidType.fromSwidClass(swidClass: iterable));

    //"iterable" is empty except for a constructor declaration
    //The declaration of "E" in "iterable" should satisfy the use of "E" in "iterable"'s constructor
    expect(unsatisfiedTypesFromIterable, isNotNull);
    expect(unsatisfiedTypesFromIterable.length, 0);

    //Removing "E" should cause the use of "E" in the constructor to become unsatisfied
    expect(
        unsatisfiedTypeParameters(
            swidType: SwidType.fromSwidClass(
                swidClass:
                    SwidClass.clone(swidClass: iterable, typeFormals: []))),
        [
          SwidTypeFormal(
            name: "E",
            swidReferenceDeclarationKind:
                SwidReferenceDeclarationKind.typeParameterType,
          )
        ]);
    /*
    class Iterable<E> {
     Iterable<E> Iterable();

     Iterable<T> map<T>(T f(E e))
    }
  */
    var iterableWithMapMethod = SwidClass.clone(
      swidClass: iterable,
      methods: [
        ...iterable.methods,
        map,
      ],
    );

    var unsatisfiedTypesFromIterableWithMapMethod = unsatisfiedTypeParameters(
        swidType: SwidType.fromSwidClass(swidClass: iterableWithMapMethod));

    //The declaration of "E" in "iterable" should satisfy it's use in "map"
    expect(unsatisfiedTypesFromIterableWithMapMethod, isNotNull);
    expect(unsatisfiedTypesFromIterable.length, 0);

    //Removing "E" should cause the use of "E" in the constructor as well is
    //in the "map" method to become unsatisfied
    expect(
        unsatisfiedTypeParameters(
            swidType: SwidType.fromSwidClass(
                swidClass: SwidClass.clone(
                    swidClass: iterableWithMapMethod, typeFormals: []))),
        [
          SwidTypeFormal(
            name: "E",
            swidReferenceDeclarationKind:
                SwidReferenceDeclarationKind.typeParameterType,
          ),
          SwidTypeFormal(
            name: "E",
            swidReferenceDeclarationKind:
                SwidReferenceDeclarationKind.typeParameterType,
          )
        ]);

    /*
    class Iterable<E> {
     Iterable<E> Iterable();

     Iterable<T> map<T>(T f(E e))

     factory Iterable<E> Iterable.empty()
    }
  */
    var iterableWithMapAndEmpty =
        SwidClass.clone(swidClass: iterable, methods: [
      ...iterable.methods,
      map,
    ], factoryConstructors: [
      ...iterable.factoryConstructors,
      empty
    ]);

    var unsatisfiedTypesFromIterableWithMapAndEmpty = unsatisfiedTypeParameters(
        swidType: SwidType.fromSwidClass(swidClass: iterableWithMapAndEmpty));

    /*
      By default, classes don't provide their type formals to their static children.
      This is the opposite behaviour of Dart, but is the behaviour of Typescript.
      This should cause the use of "E" in "empty" to go unsatisfied.
    */
    expect(unsatisfiedTypesFromIterableWithMapAndEmpty, isNotNull);
    expect(unsatisfiedTypesFromIterableWithMapAndEmpty.length, 1);
    expect(unsatisfiedTypesFromIterableWithMapAndEmpty, [
      SwidTypeFormal(
          name: "E",
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType)
    ]);

    /*
        Should be able to override propogation behaviour to class statics to get
        the default Dart behaviour
    */
    expect(
        unsatisfiedTypeParameters(
          swidType: SwidType.fromSwidClass(swidClass: iterableWithMapAndEmpty),
          classTypeFormalPropogationKind: SwidClassTypeFormalPropogationKind
              .kPropagateTypeFormalsToStaticMembers,
        ).length,
        0);
  }, tags: "swid");
}
