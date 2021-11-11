import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartRtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var ast = SwidClass(
      name: "Path",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      typeFormals: [],
      implementedClasses: [],
      originalPackagePath: "dart:ui",
      generativeConstructors: [],
      constructorType: SwidFunctionType(
        name: "",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        typeFormals: [],
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
            name: "Path",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:ui",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
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
          declarationModifiers: SwidDeclarationModifiers.clone(
            declarationModifiers: SwidDeclarationModifiers.empty(),
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
                declarationModifiers: SwidDeclarationModifiers.empty(),
                name: "PathFillType",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:ui",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.enumElement,
              ),
            ),
          ],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              declarationModifiers: SwidDeclarationModifiers.empty(),
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
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      extendedClass: null,
      isMixin: false,
    );
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          DartRTManagedClassDeclaration(
            swidClass: ast,
          ),
        ),
        """
class RTManagedPath extends Path implements Box<Path> {
  RTManagedPath({required this.table, required this.hydroState}) : super() {
    table[\'vmObject\'] = vmObject;
    table[\'unwrap\'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table[\'_dart_setFillType\'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.fillType = (maybeUnBoxEnum(
          values: PathFillType.values, boxedEnum: luaCallerArguments[1]));
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
