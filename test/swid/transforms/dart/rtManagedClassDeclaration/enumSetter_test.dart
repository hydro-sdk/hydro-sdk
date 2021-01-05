import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/backend/dart/rtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var ast = SwidClass(
        name: "Path",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        typeFormals: [],
        implementedClasses: [],
        originalPackagePath: "dart:ui",
        constructorType: SwidFunctionType(
          name: "",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          typeFormals: [],
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
              name: "Path",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:ui",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
            ),
          ),
          isFactory: false,
        ),
        factoryConstructors: [],
        staticMethods: [],
        methods: [
          SwidFunctionType(
            name: "fillType=",
            typeFormals: [],
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:ui",
            swidDeclarationModifiers: SwidDeclarationModifiers.clone(
              swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
              isSetter: true,
            ),
            namedParameterTypes: {},
            namedDefaults: {},
            normalParameterNames: [
              "value",
            ],
            normalParameterTypes: [
              SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                name: "PathFillType",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:ui",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.enumElement,
              )),
            ],
            optionalParameterNames: [],
            optionalParameterTypes: [],
            returnType: SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "void",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "",
                typeArguments: [],
                referenceDeclarationKind: SwidReferenceDeclarationKind.voidType,
              ),
            ),
            isFactory: false,
          ),
        ],
        staticConstFieldDeclarations: [],
        instanceFieldDeclarations: {},
        swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
        mixedInClasses: [],
        extendedClass: null,
        isMixin: false);
    expect(RTManagedClassDeclaration(swidClass: ast).toDartSource(), """
class RTManagedPath extends Path implements Box<Path> {
  RTManagedPath({@required this.table, @required this.hydroState}) : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_setFillType'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.fillType =
          (maybeUnBoxEnum(values: PathFillType.values, boxedEnum: args[1]));
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  Path unwrap() => this;
  Path get vmObject => this;
  @override
  void set fillType(PathFillType value) {
    Closure closure = table["setFillType"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}
""");
  }, tags: "swid");
}
