import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/ir/util/hasUnsatisfiedTypeParameters.dart';
import 'package:hydro_sdk/swid/ir/util/propagateUnsatisfiedTypeParameters.dart';
import 'package:hydro_sdk/swid/ir/util/unsatisfiedTypeParameters.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    //Iterable<T> map<T>(T f(E e))
    var map = SwidFunctionType(
      name: "map",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:core",
      declarationModifiers: SwidDeclarationModifiers.empty(),
      namedParameterTypes: {},
      namedDefaults: {},
      normalParameterNames: ["f"],
      normalParameterTypes: [
        SwidType.fromSwidFunctionType(
          swidFunctionType: SwidFunctionType(
              name: "",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "",
              declarationModifiers: SwidDeclarationModifiers.empty(),
              namedParameterTypes: {},
              namedDefaults: {},
              normalParameterNames: ["e"],
              normalParameterTypes: [
                SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                        declarationModifiers: SwidDeclarationModifiers.empty(),
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
              )),
              isFactory: false,
              typeFormals: []),
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
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
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
    );

    var unsatisfiedTypesFromMap = unsatisfiedTypeParameters(
        swidType: SwidType.fromSwidFunctionType(swidFunctionType: map));
    /*
      The first argument to the delegate argument to "map" is typed as "E".
      This type is not satisifed by the given declaration of "map".
  */
    expect(unsatisfiedTypesFromMap, isNotNull);
    expect(unsatisfiedTypesFromMap.length, 1);
    expect(unsatisfiedTypesFromMap.first.value.name, "E");

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
        swidTypeFormalBound: null,
        value: SwidTypeFormalValue.fromString(
          string: "E",
        ),
        swidReferenceDeclarationKind:
            SwidReferenceDeclarationKind.typeParameterType,
      ),
      SwidTypeFormal(
        swidTypeFormalBound: null,
        value: SwidTypeFormalValue.fromString(
          string: "T",
        ),
        swidReferenceDeclarationKind:
            SwidReferenceDeclarationKind.typeParameterType,
      ),
      SwidTypeFormal(
        swidTypeFormalBound: null,
        value: SwidTypeFormalValue.fromString(
          string: "T",
        ),
        swidReferenceDeclarationKind:
            SwidReferenceDeclarationKind.typeParameterType,
      ),
    ]);

    //factory Iterable<E> Iterable.empty()
    var empty = SwidFunctionType(
        name: "empty",
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
                        SwidReferenceDeclarationKind.typeParameterType,
                  ),
                ),
                element: null,
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
    expect(
      unsatisfiedTypesFromEmpty,
      [
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

    //Iterable<E>  Iterable()
    var constructor = SwidFunctionType(
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
    );
    var unsatisfiedTypesFromConstructor = unsatisfiedTypeParameters(
      swidType: SwidType.fromSwidFunctionType(
        swidFunctionType: constructor,
      ),
    );

    expect(unsatisfiedTypesFromConstructor, isNotNull);
    expect(unsatisfiedTypesFromConstructor.length, 1);
    expect(
      unsatisfiedTypesFromConstructor,
      [
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
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      implementedClasses: [],
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

    var unsatisfiedTypesFromIterable = unsatisfiedTypeParameters(
      swidType: SwidType.fromSwidClass(
        swidClass: iterable,
      ),
    );

    //"iterable" is empty except for a constructor declaration
    //The declaration of "E" in "iterable" should satisfy the use of "E" in "iterable"'s constructor
    expect(unsatisfiedTypesFromIterable, isNotNull);
    expect(unsatisfiedTypesFromIterable.length, 0);

    //Removing "E" should cause the use of "E" in the constructor to become unsatisfied
    expect(
      unsatisfiedTypeParameters(
        swidType: SwidType.fromSwidClass(
          swidClass: SwidClass.clone(
            swidClass: iterable,
            typeFormals: [],
          ),
        ),
      ),
      [
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
          swidTypeFormalBound: null,
          value: SwidTypeFormalValue.fromString(
            string: "E",
          ),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
        ),
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

    /*
    class Iterable<E> {
     Iterable<E> Iterable();

     Iterable<T> map<T>(T f(E e))

     factory Iterable<E> Iterable.empty()
    }
  */
    var iterableWithMapAndEmpty = SwidClass.clone(
      swidClass: iterable,
      methods: [
        ...iterable.methods,
        map,
      ],
      factoryConstructors: [...iterable.factoryConstructors, empty],
    );

    var unsatisfiedTypesFromIterableWithMapAndEmpty = unsatisfiedTypeParameters(
      swidType: SwidType.fromSwidClass(
        swidClass: iterableWithMapAndEmpty,
      ),
    );

    /*
      By default, classes don't provide their type formals to their static children.
      This is the opposite behaviour of Dart, but is the behaviour of Typescript.
      This should cause the use of "E" in "empty" to go unsatisfied.
    */
    expect(unsatisfiedTypesFromIterableWithMapAndEmpty, isNotNull);
    expect(unsatisfiedTypesFromIterableWithMapAndEmpty.length, 1);
    expect(
      unsatisfiedTypesFromIterableWithMapAndEmpty,
      [
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

    /*
        Should be able to override propogation behaviour to class statics to get
        the default Dart behaviour
    */
    expect(
        unsatisfiedTypeParameters(
          swidType: SwidType.fromSwidClass(swidClass: iterableWithMapAndEmpty),
          classTypeFormalClosureKind: SwidClassTypeFormalClosureKind
              .kCloseOverTypeFormalsInStaticMembers,
        ).length,
        0);

    /*
      We should be able to copy the unsatisfied type parameters down from the enclosing class to
      the factory constructors that require them.
      class Iterable<E> {
        Iterable<E> Iterable();

        Iterable<T> map<T>(T f(E e))

        factory Iterable<E> Iterable<E>.empty()
      }
    */
    var propagatedIterableWithMapAndEmpty =
        propagateUnsatisfiedTypeParameters(swidClass: iterableWithMapAndEmpty);

    expect(
        hasUnsatisfiedTypeParameters(
            swidType: SwidType.fromSwidClass(
                swidClass: propagatedIterableWithMapAndEmpty)),
        false);
    expect(
        unsatisfiedTypeParameters(
                swidType: SwidType.fromSwidClass(
                    swidClass: propagatedIterableWithMapAndEmpty))
            .length,
        0);
    expect(
        propagatedIterableWithMapAndEmpty
            .factoryConstructors.first.typeFormals.length,
        1);
    expect(
        propagatedIterableWithMapAndEmpty
            .factoryConstructors.first.typeFormals.first.value.name,
        "E");
  }, tags: "swid");
}
