import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartRtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "AnimatedListState",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/widgets/animated_list.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
          name: "insertItem",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/src/widgets/animated_list.dart",
          namedParameterTypes: {
            "duration": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "Duration",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            )
          },
          namedDefaults: {
            "duration": SwidDefaultFormalParameter(
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/widgets/animated_list.dart",
              staticType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "Duration",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:core",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              ),
              value: SwidStaticConst.fromSwidStaticConstFunctionInvocation(
                staticConstFunctionInvocation:
                    SwidStaticConstFunctionInvocation(
                  value: "Duration",
                  staticType: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "Duration",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                    ),
                  ),
                  normalParameters: [],
                  namedParameters: {
                    "milliseconds": SwidStaticConst.fromSwidIntegerLiteral(
                      swidIntegerLiteral: SwidIntegerLiteral(
                        value: "300",
                      ),
                    )
                  },
                  isConstructorInvocation: true,
                ),
              ),
              defaultValueCode: "_kDuration",
            )
          },
          normalParameterNames: [
            "index",
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
        format: true,
        swidClass: ir,
      ),
    );

    expect(res, """
class RTManagedAnimatedListState extends _cd40.AnimatedListState
    implements _36c2.Box<_cd40.AnimatedListState> {
  RTManagedAnimatedListState();

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _cd40.AnimatedListState unwrap() => this;
  _cd40.AnimatedListState get vmObject => this;
  @_fac9.override
  void insertItem(index,
      {_fac9.Duration duration = const _fac9.Duration(milliseconds: 300)}) {
    _36c2.Closure closure = table["insertItem"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}
""");
  }, tags: "swid");
}
