import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformNamedParametersToTs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    Map<String, SwidLiteral> namedParameters = {
      "fontFamily": SwidStringLiteral(value: "Material"),
      "size": SwidIntegerLiteral(value: "12"),
    };

    expect(transformNamedParametersToTs(namedParameters: namedParameters),
        "{fontFamily:\"Material\",size:12}");
  });
}
