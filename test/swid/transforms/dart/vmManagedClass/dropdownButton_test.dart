import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidElement.dart';
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
      name: "DropdownButton",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/material/dropdown.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {
        "items": SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "List<DropdownMenuItem<T>>",
            nullabilitySuffix: SwidNullabilitySuffix.question,
            originalPackagePath: "dart:core",
            typeArguments: [
              SwidTypeArgumentType(
                type: SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "DropdownMenuItem<T>",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/material/dropdown.dart",
                    typeArguments: [
                      SwidTypeArgumentType(
                        type: SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
                            name: "T",
                            nullabilitySuffix: SwidNullabilitySuffix.none,
                            originalPackagePath:
                                "package:flutter/src/material/dropdown.dart",
                            typeArguments: [],
                            referenceDeclarationKind:
                                SwidReferenceDeclarationKind.typeParameterType,
                            declarationModifiers:
                                SwidDeclarationModifiers.empty(),
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
                ),
                element: null,
              )
            ],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
            declarationModifiers: SwidDeclarationModifiers.empty(),
          ),
        )
      },
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
class VMManagedDropdownButton
    extends _36c2.VMManagedBox<_9b55.DropdownButton<_fac9.dynamic>> {
  VMManagedDropdownButton(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table[\'items\'] = _36c2
        .maybeBoxObject<_fac9.List<_9b55.DropdownMenuItem<_fac9.dynamic>>?>(
            object: vmObject.items,
            hydroState: hydroState,
            table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _9b55.DropdownButton<_fac9.dynamic> vmObject;
}
""");
  }, tags: "swid");
}
