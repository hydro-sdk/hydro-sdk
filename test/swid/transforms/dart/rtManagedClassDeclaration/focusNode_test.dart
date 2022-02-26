import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartRtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
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
    final ir = SwidClass(
      name: "FocusNode",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/widgets/focus_manager.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
          name: "canRequestFocus",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/src/widgets/focus_manager.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [
            "value",
          ],
          normalParameterTypes: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                  name: "bool",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:core",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                  declarationModifiers: SwidDeclarationModifiers.empty()),
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
            hasMustCallSuper: true,
            isPublic: true,
            isSetter: true,
            hasImplicitReturnType: true,
          ),
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

    final pipeline = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    );

    final res = pipeline.reduceFromTerm(
      DartRTManagedClassDeclaration(
        swidClass: ir,
        format: true,
      ),
    );

    expect(res, """
class RTManagedFocusNode extends _b485.FocusNode
    implements _36c2.Box<_b485.FocusNode> {
  RTManagedFocusNode();

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _b485.FocusNode unwrap() => this;
  _b485.FocusNode get vmObject => this;
  @_fac9.override
  void set canRequestFocus(value) {
    super.canRequestFocus = value;
    _36c2.Closure closure = table["setCanRequestFocus"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}
""");
  }, tags: "swid");
}
