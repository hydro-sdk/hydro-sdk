import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartRtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "DoubleTapGestureRecognizer",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/gestures/multitap.dart",
      constructorType: SwidFunctionType(
        name: "",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "",
        namedParameterTypes: {
          "debugOwner": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "Object",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "kind": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "PointerDeviceKind",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath: "dart:ui",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "supportedDevices": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "Set<PointerDeviceKind>",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath: "dart:core",
              typeArguments: [
                SwidTypeArgumentType(
                  type: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "PointerDeviceKind",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:ui",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                    ),
                  ),
                  element: null,
                )
              ],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          )
        },
        namedDefaults: {},
        normalParameterNames: [],
        normalParameterTypes: [],
        optionalParameterNames: [],
        optionalParameterTypes: [],
        returnType: SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "DoubleTapGestureRecognizer",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "package:flutter/src/gestures/multitap.dart",
            typeArguments: [],
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
      methods: [],
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
      ),
    );
    expect(res, """
class RTManagedDoubleTapGestureRecognizer
    extends _2713.DoubleTapGestureRecognizer
    implements _36c2.Box<_2713.DoubleTapGestureRecognizer> {
  RTManagedDoubleTapGestureRecognizer(
      {_fac9.Object? debugOwner,
      _a643.PointerDeviceKind? kind,
      _fac9.Set<_a643.PointerDeviceKind>? supportedDevices,
      required this.table,
      required this.hydroState})
      : super(
            debugOwner: debugOwner,
            kind: kind,
            supportedDevices: supportedDevices) {
    table[\'vmObject\'] = vmObject;
    table[\'unwrap\'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _2713.DoubleTapGestureRecognizer unwrap() => this;
  _2713.DoubleTapGestureRecognizer get vmObject => this;
}
""");
  }, tags: "swid");
}
