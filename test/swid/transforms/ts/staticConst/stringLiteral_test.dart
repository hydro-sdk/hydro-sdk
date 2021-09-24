import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformStringLiteralToTs.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformStringLiteralToTs(
            swidStringLiteral: SwidStringLiteral(
              value: "0xe52a",
            ),
          ),
        ),
        "\"0xe52a\"");
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformStringLiteralToTs(
            swidStringLiteral: SwidStringLiteral(
              value: "0",
            ),
          ),
        ),
        "\"0\"");
  }, tags: "swid");
}
