import 'package:flutter_test/flutter_test.dart';

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
import 'package:hydro_sdk/swid/ir/transforms/instantiateGenericsToLowestBound.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    /*
      abstract class Layer extends AbstractNode with DiagnosticableTreeMixin {
        AnnotationResult<S> findAllAnnotations<S extends Object>(Offset localPosition) {}
      }

      class AnnotationResult<T> { }
    */

    final returnType = SwidType.fromSwidInterface(
      swidInterface: SwidInterface(
        name: "AnnotationResult<S>",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "package:flutter/src/rendering/layer.dart",
        typeArguments: [
          SwidTypeArgumentType(
            type: SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "S",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "package:flutter/src/rendering/layer.dart",
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
                    name: "Object",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "dart:core",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                ),
              ),
            ),
          )
        ],
        referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        declarationModifiers: SwidDeclarationModifiers.empty(),
      ),
    );

    final ir = SwidClass(
      name: "Layer",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/rendering/layer.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
          name: "findAllAnnotations",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/src/rendering/layer.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [
            "localPosition",
          ],
          normalParameterTypes: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "Offset",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:ui",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            )
          ],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: returnType,
          isFactory: false,
          typeFormals: [
            SwidTypeFormal(
              value: SwidTypeFormalValue.fromString(
                string: "S",
              ),
              swidReferenceDeclarationKind:
                  SwidReferenceDeclarationKind.typeParameterType,
              swidTypeFormalBound: SwidTypeFormalBound.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "Object",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:core",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              ),
            )
          ],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        )
      ],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      isMixin: false,
      typeFormals: [],
    );

    final instantiated = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    ).reduceFromTerm(
      InstantiateGenericsToLowestBound(
        swidType: SwidType.fromSwidClass(
          swidClass: ir,
        ),
      ),
    );

    expect(
      instantiated
          .maybeWhen(
            fromSwidClass: (val) => val,
            orElse: () => null,
          )
          ?.methods
          .first
          .returnType
          .displayName,
      "AnnotationResult<S>",
    );

    expect(
      instantiated
          .maybeWhen(
            fromSwidClass: (val) => val,
            orElse: () => null,
          )
          ?.methods
          .first
          .returnType,
      returnType,
    );
  }, tags: "swid");
}
