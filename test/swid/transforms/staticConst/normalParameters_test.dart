import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/dart/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformNormalParametersToTs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    List<SwidLiteral> normalParameters = [
      SwidLiteral.fromSwidIntegerLiteral(
          swidIntegerLiteral: SwidIntegerLiteral(value: "0xe52a")),
      SwidLiteral.fromSwidStringLiteral(
          swidStringLiteral: SwidStringLiteral(value: "0xe52a")),
      SwidLiteral.fromSwidStringLiteral(
          swidStringLiteral: SwidStringLiteral(value: "1")),
      SwidLiteral.fromSwidIntegerLiteral(
          swidIntegerLiteral: SwidIntegerLiteral(value: "1")),
    ];

    expect(transformNormalParametersToTs(swidLiterals: normalParameters),
        "0xe52a,\"0xe52a\",\"1\",1");
  });
}
