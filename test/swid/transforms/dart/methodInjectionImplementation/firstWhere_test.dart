import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassMethodInjectionImplementation.dart';
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
      name: "vmObject.firstWhere",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "",
      namedParameterTypes: {
        "orElse": SwidType.fromSwidFunctionType(
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
                name: "int",
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
          ),
        )
      },
      namedDefaults: {},
      normalParameterNames: [
        "test",
      ],
      normalParameterTypes: [
        SwidType.fromSwidFunctionType(
          swidFunctionType: SwidFunctionType(
            name: "",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "",
            namedParameterTypes: {},
            namedDefaults: {},
            normalParameterNames: [
              "element",
            ],
            normalParameterTypes: [
              SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "int",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:core",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              ),
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
          ),
        )
      ],
      optionalParameterNames: [],
      optionalParameterTypes: [],
      returnType: SwidType.fromSwidInterface(
        swidInterface: SwidInterface(
          name: "int",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "dart:core",
          typeArguments: [],
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
      ),
      isFactory: false,
      typeFormals: [],
      declarationModifiers: SwidDeclarationModifiers.empty(),
    );

    final res = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    ).reduceFromTerm(
      DartVMManagedClassMethodInjectionImplementation(
        swidFunctionType: ir,
        tableKey: "firstWhere",
      ),
    );

    expect(res, """
table['firstWhere'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
  Closure unpackedtest = luaCallerArguments[1];
  Closure? unpackedorElse =
      luaCallerArguments.length >= 3 ? luaCallerArguments[2]['orElse'] : null;
  return [
    vmObject.firstWhere(
        (element) => unpackedtest.dispatch(
              [luaCallerArguments[0], element],
              parentState: hydroState,
            )[0],
        orElse: unpackedorElse != null
            ? () => unpackedorElse.dispatch(
                  [
                    luaCallerArguments[0],
                  ],
                  parentState: hydroState,
                )[0]
            : null),
  ];
});""");
  }, tags: "swid");
}
