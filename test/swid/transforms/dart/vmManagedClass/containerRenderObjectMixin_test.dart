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
import 'package:hydro_sdk/swid/ir/swidTypeFormalBound.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "ContainerRenderObjectMixin",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/rendering/object.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      isMixin: true,
      typeFormals: [
        SwidTypeFormal(
          value: SwidTypeFormalValue.fromString(
            string: "ChildType",
          ),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
          swidTypeFormalBound: SwidTypeFormalBound.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "RenderObject",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "package:flutter/src/rendering/object.dart",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
        ),
        SwidTypeFormal(
          value: SwidTypeFormalValue.fromString(
            string: "ParentDataType",
          ),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
          swidTypeFormalBound: SwidTypeFormalBound.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "ContainerParentDataMixin<ChildType>",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "package:flutter/src/rendering/object.dart",
              typeArguments: [
                SwidTypeArgumentType(
                  type: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "ChildType",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath:
                          "package:flutter/src/rendering/object.dart",
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
                          name: "RenderObject",
                          nullabilitySuffix: SwidNullabilitySuffix.none,
                          originalPackagePath:
                              "package:flutter/src/rendering/object.dart",
                          typeArguments: [],
                          referenceDeclarationKind:
                              SwidReferenceDeclarationKind.classElement,
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
class VMManagedContainerRenderObjectMixin extends _36c2.VMManagedBox<
    _9742.ContainerRenderObjectMixin<_9742.RenderObject,
        _9742.ContainerParentDataMixin<_9742.RenderObject>>> {
  VMManagedContainerRenderObjectMixin(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _9742.ContainerRenderObjectMixin<_9742.RenderObject,
      _9742.ContainerParentDataMixin<_9742.RenderObject>> vmObject;
}
""");
  }, tags: "swid");
}
