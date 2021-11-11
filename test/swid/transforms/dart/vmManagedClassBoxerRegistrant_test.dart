import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassBoxerRegistrant.dart';
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
    var ir = DartVMManagedClassBoxerRegistrant(
      swidClass: SwidClass(
        name: "fooClass",
        typeFormals: [],
        isMixin: false,
        implementedClasses: [],
        extendedClass: null,
        originalPackagePath: "",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        staticMethods: [],
        generativeConstructors: [],
        factoryConstructors: [],
        instanceFieldDeclarations: {},
        declarationModifiers: SwidDeclarationModifiers.empty(),
        constructorType: SwidFunctionType(
          name: "",
          typeFormals: [],
          isFactory: false,
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
        """registerBoxer<fooClass>(boxer: ({required fooClass vmObject, required HydroState hydroState, required HydroTable table}) { return  VMManagedfooClass(vmObject: vmObject, hydroState: hydroState, table: table); } );""");
  }, tags: "swid");
}
