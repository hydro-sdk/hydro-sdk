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
            format: true,
            swidClass: ast,
          ),
        ),
        """
class RTManagedPath extends _a643.Path implements _36c2.Box<_a643.Path> {
  RTManagedPath({required this.table, required this.hydroState}) : super() {
    table[\'vmObject\'] = vmObject;
    table[\'unwrap\'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table[\'_dart_setFillType\'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.fillType = (_36c2.maybeUnBoxEnum(
          values: _a643.PathFillType.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _a643.Path unwrap() => this;
  _a643.Path get vmObject => this;
  @_fac9.override
  void set fillType(value) {
    _36c2.Closure closure = table["setFillType"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}
""");
  }, tags: "swid");
}
