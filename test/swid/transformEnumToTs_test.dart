import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/swidEnum.dart';
import 'package:hydro_sdk/swid/transformEnumToTs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        transformEnumToTs(
            swidEnum: SwidEnum(
                originalPackagePath: "package:foo_package/src/fooEnum.dart",
                identifier: "FooEnum",
                children: ["bar", "baz", "qux"])),
"""
export FooEnum {
    bar,
    baz,
    qux,
}

""");
  });
}
