import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformIntegerLiteralToTs.dart';
import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformIntegerLiteralToTs(
            swidIntegerLiteral: SwidIntegerLiteral(
              value: "0xe52a",
            ),
          ),
        ),
        "0xe52a");
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformIntegerLiteralToTs(
            swidIntegerLiteral: SwidIntegerLiteral(
              value: "0",
            ),
          ),
        ),
        "0");
  }, tags: "swid");
}
