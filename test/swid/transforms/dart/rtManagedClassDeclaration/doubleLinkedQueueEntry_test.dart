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
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "DoubleLinkedQueueEntry",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:collection",
      generativeConstructors: [],
      constructorType: SwidFunctionType(
        name: "",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "",
        namedParameterTypes: {},
        namedDefaults: {},
        normalParameterNames: [
          "_element",
        ],
        normalParameterTypes: [
          SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "E",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath: "dart:collection",
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
            name: "DoubleLinkedQueueEntry<E>",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:collection",
            typeArguments: [
              SwidTypeArgumentType(
                type: SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "E",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "dart:collection",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.typeParameterType,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                ),
                element: null,
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
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      isMixin: false,
      typeFormals: [
        SwidTypeFormal(
          swidTypeFormalBound: null,
          value: SwidTypeFormalValue.fromString(
            string: "E",
          ),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
        )
      ],
    );

    final res = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    ).reduceFromTerm(
      DartRTManagedClassDeclaration(
        swidClass: ir,
      ),
    );

    expect(res, """
class RTManagedDoubleLinkedQueueEntry extends DoubleLinkedQueueEntry
    implements Box<DoubleLinkedQueueEntry> {
  RTManagedDoubleLinkedQueueEntry(dynamic? _element,
      {required this.table, required this.hydroState})
      : super(
          _element,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  DoubleLinkedQueueEntry unwrap() => this;
  DoubleLinkedQueueEntry get vmObject => this;
}
""");
  }, tags: "swid");
}
