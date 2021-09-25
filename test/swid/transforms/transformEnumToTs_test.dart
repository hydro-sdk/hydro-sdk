import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformEnumToTs.dart';
import 'package:hydro_sdk/swid/ir/swidEnum.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformEnumToTs(
            swidEnum: SwidEnum(
              originalPackagePath: "package:foo_package/src/fooEnum.dart",
              identifier: "FooEnum",
              children: [
                "bar",
                "baz",
                "qux",
              ],
            ),
          ),
        ),
        """
export enum FooEnum {
    bar,
    baz,
    qux,
}

""");
  }, tags: "swid");
}
