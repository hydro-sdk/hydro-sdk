import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/backend/dart/dartRtManagedClassDeclaration.dart';

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
import 'package:hydro_sdk/swid/ir/swidTypeFormalBound.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "LayerHandle",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/rendering/layer.dart",
      constructorType: SwidFunctionType(
        name: "",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "package:flutter/src/rendering/layer.dart",
        namedParameterTypes: {},
        namedDefaults: {},
        normalParameterNames: [],
        normalParameterTypes: [],
        optionalParameterNames: [
          "_layer",
        ],
        optionalParameterTypes: [
          SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "T",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath: "package:flutter/src/rendering/layer.dart",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.typeParameterType,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          )
        ],
        returnType: SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "LayerHandle<T>",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "package:flutter/src/rendering/layer.dart",
            typeArguments: [
              SwidTypeArgumentType(
                type: SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "T",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/rendering/layer.dart",
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
                        name: "Layer",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath:
                            "package:flutter/src/rendering/layer.dart",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.classElement,
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
            declarationModifiers: SwidDeclarationModifiers.empty(),
          ),
        ),
        isFactory: false,
        typeFormals: [],
        declarationModifiers: SwidDeclarationModifiers.empty(),
      ),
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
          name: "layer=",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/src/rendering/layer.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [
            "layer",
          ],
          normalParameterTypes: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "T",
                nullabilitySuffix: SwidNullabilitySuffix.question,
                originalPackagePath: "package:flutter/src/rendering/layer.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.typeParameterType,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            )
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
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty().clone(
            isSetter: true,
          ),
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
          swidTypeFormalBound: SwidTypeFormalBound.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "Layer",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "package:flutter/src/rendering/layer.dart",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
        ),
      ],
    );

    final res = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    ).reduceFromTerm(
      DartRTManagedClassDeclaration(
        swidClass: ir,
      ),
    );

    expect(
      res,
      """
class RTManagedLayerHandle extends LayerHandle implements Box<LayerHandle> {
  RTManagedLayerHandle(dynamic? _layer,
      {required this.table, required this.hydroState})
      : super(
          _layer,
        ) {
    table[\'vmObject\'] = vmObject;
    table[\'unwrap\'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table[\'_dart_setLayer\'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.layer = (luaCallerArguments[1]);
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  LayerHandle unwrap() => this;
  LayerHandle get vmObject => this;
  @override
  void set layer(Layer? layer) {
    Closure closure = table["setLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}
""",
    );
  }, tags: "swid");
}
