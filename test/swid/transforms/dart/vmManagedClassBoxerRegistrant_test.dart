import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/backend/dart/dartVmManagedClassBoxerRegistrant.dart';
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
    var ir = DartVMManagedClassBoxerRegistrant(
        swidClass: SwidClass(
      name: "fooClass",
      originalPackagePath: "",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      staticMethods: [],
      factoryConstructors: [],
      instanceFieldDeclarations: {},
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      constructorType: SwidFunctionType(
        name: "",
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
          name: "",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "",
          referenceDeclarationKind: SwidReferenceDeclarationKind.voidType,
          typeArguments: [],
        )),
        swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      ),
      staticConstFieldDeclarations: [],
      methods: [],
      mixedInClasses: [],
    ));

    expect(ir.toDartSource(),
        """registerBoxer<fooClass>(boxer: ({@required fooClass vmObject, @required HydroState hydroState, @required HydroTable table}) { return  VMManagedfooClass(vmObject: vmObject, hydroState: hydroState, table: table); } );""");
  }, tags: "swid");
}
