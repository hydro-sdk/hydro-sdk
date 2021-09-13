import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/transforms/nameAnonymousNormalParametersInFunction.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final function1 = SwidFunctionType(
      name: "",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "",
      namedParameterTypes: {},
      namedDefaults: {},
      normalParameterNames: [""],
      normalParameterTypes: [],
      optionalParameterNames: [],
      optionalParameterTypes: [],
      returnType: dartUnknownType,
      isFactory: false,
      typeFormals: [],
      declarationModifiers: SwidDeclarationModifiers.empty(),
    );

    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        )
            .reduceFromTerm(
              NameAnonymousNormalParametersInFunction(
                swidFunctionType: function1,
              ),
            )
            .normalParameterNames,
        ["_"]);

    final function2 = SwidFunctionType(
      name: "",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "",
      namedParameterTypes: {},
      namedDefaults: {},
      normalParameterNames: ["", "", "", ""],
      normalParameterTypes: [],
      optionalParameterNames: [],
      optionalParameterTypes: [],
      returnType: dartUnknownType,
      isFactory: false,
      typeFormals: [],
      declarationModifiers: SwidDeclarationModifiers.empty(),
    );

    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        )
            .reduceFromTerm(
              NameAnonymousNormalParametersInFunction(
                swidFunctionType: function2,
              ),
            )
            .normalParameterNames,
        ["_", "__", "___", "____"]);

    final function3 = SwidFunctionType(
      name: "",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "",
      namedParameterTypes: {},
      namedDefaults: {},
      normalParameterNames: ["", "", "foo", ""],
      normalParameterTypes: [],
      optionalParameterNames: [],
      optionalParameterTypes: [],
      returnType: dartUnknownType,
      isFactory: false,
      typeFormals: [],
      declarationModifiers: SwidDeclarationModifiers.empty(),
    );

    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        )
            .reduceFromTerm(
              NameAnonymousNormalParametersInFunction(
                swidFunctionType: function3,
              ),
            )
            .normalParameterNames,
        ["_", "__", "foo", "____"]);
  }, tags: "swid");
}
