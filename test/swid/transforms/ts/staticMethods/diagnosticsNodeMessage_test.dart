import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/tsClassStaticMethodImplementation.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var diagnosticsNodeClass = SwidClass.fromJson(json
        .decode(File("test/swid/res/DiagnosticsNode.json").readAsStringSync()));

    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TsClassStaticMethodImplementation(
            swidClass: diagnosticsNodeClass,
            swidFunctionType:
                diagnosticsNodeClass.factoryConstructors.firstWhere(
              (x) => x.name == "message",
            ),
          ),
        ),
        """
public static message(message: string, props : {  allowWrap? : boolean, level? : DiagnosticLevel, style? : DiagnosticsTreeStyle,}) : IDiagnosticsNode{
return flutter.foundation.diagnosticsNodeMessage(message, {
...messageDefaultProps,
...props
});
}""");
  }, tags: "swid");
}
