import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/tsFunctionDefaultNamedProps.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var diagnosticsNodeClass = SwidClass.fromJson(json
        .decode(File("test/swid/res/DiagnosticsNode.json").readAsStringSync()));

    expect(
        CachingPipeline(cacheMgr: const PipelineNoopCacheMgr(),).reduceFromTerm(
          TsFunctionDefaultNamedProps(
            swidFunctionType: SwidFunctionType.clone(
              swidFunctionType: diagnosticsNodeClass.constructorType!,
              name: diagnosticsNodeClass.name,
            ),
          ),
        ),
        """
const diagnosticsNodeDefaultProps = {
    showName: true,
    showSeparator: true,
};
""");
  }, tags: "swid");
}
