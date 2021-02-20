import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformNormalParametersToTs.dart';

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
        transformNormalParametersToTs(
            parentClass: SwidClass.empty(),
            inexpressibleFunctionInvocationFallback: "",
            swidLiterals: normalParameters,
            scopeResolver: (_) => null),
        "0xe52a, \"0xe52a\", \"1\", 1");
  }, tags: "swid");
}
