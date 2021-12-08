import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/tsClassVmDeclaration.dart';
import 'package:hydro_sdk/swid/backend/util/requiresDartClassTranslationUnit.dart';
import 'package:hydro_sdk/swid/ir/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var endian = SwidClass(
      name: "Endian",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:typed_data",
      generativeConstructors: [],
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
                  declarationModifiers: SwidDeclarationModifiers.empty(),
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
                  swidBooleanLiteral: SwidBooleanLiteral(
                    value: "false",
                  ),
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
                  declarationModifiers: SwidDeclarationModifiers.empty(),
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
                  swidBooleanLiteral: SwidBooleanLiteral(
                    value: "true",
                  ),
                ),
              ],
              namedParameters: {},
              isConstructorInvocation: false,
            ),
          ),
        ),
      ],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [],
    );
    expect(
      requiresDartClassTranslationUnit(
        pipeline: CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ),
        swidClass: endian,
      ),
      true,
    );
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TsClassVmDeclaration(
            swidClass: endian,
          ),
        ),
        """
declare const dart: {
typed_data: {
endianBig: (this: void) => IEndian;
endianLittle: (this: void) => IEndian
}
};
""");
  }, tags: "swid");
}
