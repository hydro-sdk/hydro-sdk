import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassDeclaration.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidElement.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentElement.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "CustomClipper",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/rendering/proxy_box.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
          name: "shouldReclip",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/src/rendering/proxy_box.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: ["oldClipper"],
          normalParameterTypes: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "CustomerClipper<T>",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/rendering/proxy_box.dart",
                typeArguments: [
                  SwidTypeArgumentType(
                    type: SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                        name: "T",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath:
                            "package:flutter/src/rendering/proxy_box.dart",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.typeParameterType,
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                      ),
                    ),
                    element: SwidElement.fromSwidTypeArgumentElement(
                      swidTypeArgumentElement: SwidTypeArgumentElement(
                        bound: SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
                            name: "dynamic",
                            nullabilitySuffix: SwidNullabilitySuffix.none,
                            originalPackagePath: "dart:core",
                            typeArguments: [],
                            referenceDeclarationKind:
                                SwidReferenceDeclarationKind.dynamicType,
                            declarationModifiers:
                                SwidDeclarationModifiers.empty(),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            )
          ],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "bool",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        )
      ],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      isMixin: false,
      typeFormals: [
        SwidTypeFormal(
          value: SwidTypeFormalValue.fromString(
            string: "T",
          ),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
          swidTypeFormalBound: null,
        )
      ],
    );

    final pipeline = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    );

    final res = pipeline.reduceFromTerm(
      DartVMManagedClassDeclaration(
        swidClass: ir,
        format: true,
      ),
    );

    expect(res, """
class VMManagedCustomClipper
    extends _36c2.VMManagedBox<_bf98.CustomClipper<_fac9.dynamic>> {
  VMManagedCustomClipper(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table[\'shouldReclip\'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.shouldReclip(_36c2.maybeUnBoxAndBuildArgument<
            _bf98.CustomerClipper<_fac9.dynamic>,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _bf98.CustomClipper<_fac9.dynamic> vmObject;
}
""");
  }, tags: "swid");
}
