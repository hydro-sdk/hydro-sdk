import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/swidEnum.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformEnumToTs.dart';

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
export enum FooEnum {
    bar,
    baz,
    qux,
}

""");
  }, tags: "swid");
}
