import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassDeclaration.dart';
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
    var ir = DartVMManagedClassDeclaration(
      swidClass: SwidClass(
        name: "fooClass",
        typeFormals: [],
        implementedClasses: [],
        isMixin: false,
        extendedClass: null,
        originalPackagePath: "",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        staticMethods: [],
        generativeConstructors: [],
        factoryConstructors: [],
        declarationModifiers: SwidDeclarationModifiers.empty(),
        instanceFieldDeclarations: {
          "barField": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              declarationModifiers: SwidDeclarationModifiers.empty(),
              name: "BarEnum",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath: "",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.enumElement,
            ),
          )
        },
        constructorType: SwidFunctionType(
          name: "",
          isFactory: false,
          typeFormals: [],
          namedDefaults: {},
          namedParameterTypes: {},
          optionalParameterNames: [],
          normalParameterNames: [],
          normalParameterTypes: [],
          nullabilitySuffix: SwidNullabilitySuffix.none,
          optionalParameterTypes: [],
          originalPackagePath: "",
          returnType: SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
            declarationModifiers: SwidDeclarationModifiers.empty(),
            name: "",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "",
            referenceDeclarationKind: SwidReferenceDeclarationKind.voidType,
            typeArguments: [],
          )),
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
        staticConstFieldDeclarations: [],
        methods: [],
        mixedInClasses: [],
      ),
    );

    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          ir,
        ),
        """
class VMManagedfooClass extends _36c2.VMManagedBox<_e3b0.fooClass> {
  VMManagedfooClass(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table[\'barField\'] = _e3b0.BarEnum.values.indexWhere((x) {
      return x == vmObject.barField;
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _e3b0.fooClass vmObject;
}
""");
  }, tags: "swid");
}
