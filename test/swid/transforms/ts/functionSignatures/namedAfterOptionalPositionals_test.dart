import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformTypeDeclarationToTs.dart';
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
    final ir = SwidFunctionType(
      name: "listen",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:async",
      namedParameterTypes: {
        "cancelOnError": SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "bool",
            nullabilitySuffix: SwidNullabilitySuffix.question,
            originalPackagePath: "dart:core",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
            declarationModifiers: SwidDeclarationModifiers.empty(),
          ),
        ),
        "onDone": SwidType.fromSwidFunctionType(
          swidFunctionType: SwidFunctionType(
            name: "",
            nullabilitySuffix: SwidNullabilitySuffix.question,
            originalPackagePath: "",
            namedParameterTypes: {},
            namedDefaults: {},
            normalParameterNames: [],
            normalParameterTypes: [],
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
            declarationModifiers: SwidDeclarationModifiers.empty(),
          ),
        ),
        "onError": SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "Function",
            nullabilitySuffix: SwidNullabilitySuffix.question,
            originalPackagePath: "dart:core",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
            declarationModifiers: SwidDeclarationModifiers.empty(),
          ),
        )
      },
      namedDefaults: {},
      normalParameterNames: [
        "onData",
      ],
      normalParameterTypes: [
        SwidType.fromSwidFunctionType(
          swidFunctionType: SwidFunctionType(
            name: "",
            nullabilitySuffix: SwidNullabilitySuffix.question,
            originalPackagePath: "",
            namedParameterTypes: {},
            namedDefaults: {},
            normalParameterNames: [
              "event",
            ],
            normalParameterTypes: [
              SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "T",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:async",
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
      declarationModifiers: SwidDeclarationModifiers.empty(),
    );

    final res =
        CachingPipeline(cacheMgr: const PipelineNoopCacheMgr()).reduceFromTerm(
      TransformTypeDeclarationToTs(
        swidType: SwidType.fromSwidFunctionType(
          swidFunctionType: ir,
        ),
        parentClass: null,
      ),
    );

    expect(
      res,
      "(onData? : (event: T) => void, props? : {  cancelOnError? : boolean | undefined, onDone? : () => void | undefined, onError? : Function | undefined,}) => void",
    );
  }, tags: "swid");
}
