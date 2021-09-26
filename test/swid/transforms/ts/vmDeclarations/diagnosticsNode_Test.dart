import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/tsClassVmDeclaration.dart';
import 'package:hydro_sdk/swid/backend/util/requiresDartBinding.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var diagnosticsNodeClass = SwidClass.fromJson(json
        .decode(File("test/swid/res/DiagnosticsNode.json").readAsStringSync()));

    expect(requiresDartBinding(swidClass: diagnosticsNodeClass), true);
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TsClassVmDeclaration(swidClass: diagnosticsNodeClass),
        ),
        """
declare const flutter: {
foundation: {
diagnosticsNode: (this : void, diagnosticsNode : DiagnosticsNode, props : { linePrefix? : string | undefined, showName : boolean, showSeparator : boolean, style? : DiagnosticsTreeStyle | undefined, name? : string | undefined, }) => DiagnosticsNode;
diagnosticsNodeMessage: (message : string, props : { allowWrap : boolean, level : DiagnosticLevel, style : DiagnosticsTreeStyle, }) => DiagnosticsNode
}
};
""");
  }, tags: "swid");
}
