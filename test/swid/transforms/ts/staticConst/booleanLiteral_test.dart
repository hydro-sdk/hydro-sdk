import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformBooleanLiteralToTs.dart';
import 'package:hydro_sdk/swid/ir/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformBooleanLiteralToTs(
            swidBooleanLiteral: SwidBooleanLiteral(
              value: "true",
            ),
          ),
        ),
        "true");
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformBooleanLiteralToTs(
            swidBooleanLiteral: SwidBooleanLiteral(
              value: "false",
            ),
          ),
        ),
        "false");
  }, tags: "swid");
}
