import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/tsFunctionDefaultNamedProps.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var iconDataClass = SwidClass.fromJson(
        json.decode(File("../test/swid/res/IconData.json").readAsStringSync()));

    expect(iconDataClass.instanceFieldDeclarations.length, 4);
    expect(
        TsFunctionDefaultNamedProps(
                swidFunctionType: SwidFunctionType.clone(
                    swidFunctionType: iconDataClass.constructorType,
                    name: iconDataClass.name))
            .toTsSource(),
        """
const iconDataDefaultProps = {
    matchTextDirection: false
};
""");
  }, tags: "swid");
}
