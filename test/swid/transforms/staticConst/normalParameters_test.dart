import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformNormalParametersToTs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    List<SwidLiteral> normalParameters = [
      SwidIntegerLiteral(value: "0xe52a"),
      SwidStringLiteral(value: "0xe52a"),
      SwidStringLiteral(value: "1"),
      SwidIntegerLiteral(value: "1"),
    ];

    expect(transformNormalParametersToTs(swidLiterals: normalParameters),
        "0xe52a,\"0xe52a\",\"1\",1");
  });
}
