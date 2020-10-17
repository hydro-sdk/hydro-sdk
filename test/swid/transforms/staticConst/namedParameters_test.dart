import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/dart/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformNamedParametersToTs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    Map<String, SwidLiteral> namedParameters = {
      "fontFamily": SwidLiteral.fromSwidStringLiteral(
          swidStringLiteral: SwidStringLiteral(value: "Material")),
      "size": SwidLiteral.fromSwidIntegerLiteral(
          swidIntegerLiteral: SwidIntegerLiteral(value: "12")),
    };

    expect(transformNamedParametersToTs(namedParameters: namedParameters),
        "{fontFamily:\"Material\",size:12}");
  });
}
