import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/backend/ts/tsClassVmDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/util/requiresDartClassTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var endian = SwidClass(
      name: "Endian",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:typed_data",
      constructorType: null,
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      implementedClasses: [],
      staticConstFieldDeclarations: [
        SwidStaticConstFieldDeclaration(
          name: "big",
          value: SwidStaticConst.fromSwidStaticConstFunctionInvocation(
            staticConstFunctionInvocation: SwidStaticConstFunctionInvocation(
              value: "Endian._",
              staticType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "Endian",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:typed_data",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                ),
              ),
              normalParameters: [
                SwidStaticConst.fromSwidBooleanLiteral(
                  swidBooleanLiteral: SwidBooleanLiteral(value: "false"),
                ),
              ],
              namedParameters: {},
              isConstructorInvocation: false,
            ),
          ),
        ),
        SwidStaticConstFieldDeclaration(
          name: "little",
          value: SwidStaticConst.fromSwidStaticConstFunctionInvocation(
            staticConstFunctionInvocation: SwidStaticConstFunctionInvocation(
              value: "Endian._",
              staticType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "Endian",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:typed_data",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                ),
              ),
              normalParameters: [
                SwidStaticConst.fromSwidBooleanLiteral(
                  swidBooleanLiteral: SwidBooleanLiteral(value: "true"),
                ),
              ],
              namedParameters: {},
              isConstructorInvocation: false,
            ),
          ),
        ),
      ],
      instanceFieldDeclarations: {},
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [],
    );
    expect(requiresDartClassTranslationUnit(swidClass: endian), true);
    expect(TsClassVmDeclaration(swidClass: endian).toTsSource(), """
declare const dart: {
typed_data: {
endianBig: (this: void) => Endian;
endianLittle: (this: void) => Endian
}
};
""");
  }, tags: "swid");
}
