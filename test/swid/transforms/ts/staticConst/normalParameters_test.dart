import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformNormalParametersToTs.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    List<SwidStaticConst> normalParameters = [
      SwidStaticConst.fromSwidIntegerLiteral(
          swidIntegerLiteral: SwidIntegerLiteral(value: "0xe52a")),
      SwidStaticConst.fromSwidStringLiteral(
          swidStringLiteral: SwidStringLiteral(value: "0xe52a")),
      SwidStaticConst.fromSwidStringLiteral(
          swidStringLiteral: SwidStringLiteral(value: "1")),
      SwidStaticConst.fromSwidIntegerLiteral(
          swidIntegerLiteral: SwidIntegerLiteral(value: "1")),
    ];

    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformNormalParametersToTs(
            parentClass: SwidClass.empty(),
            inexpressibleFunctionInvocationFallback: "",
            swidLiterals: normalParameters,
            scopeResolver: (_) => null,
          ),
        ),
        "0xe52a, \"0xe52a\", \"1\", 1");
  }, tags: "swid");
}
