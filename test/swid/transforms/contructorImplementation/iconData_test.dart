import 'dart:io';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassConstructorImplementation.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var iconDataClass = SwidClass.fromJson(
        json.decode(File("../test/swid/res/IconData.json").readAsStringSync()));

    expect(iconDataClass.instanceFieldDeclarations.length, 4);
    expect(
        TsClassConstructorImplementation(swidClass: iconDataClass).toTsSource(),
        """
public constructor(codePoint : number, props : { fontFamily : string, fontPackage : string, matchTextDirection? : boolean, }){
flutter.widgets.iconData(this, codePoint, {
...iconDataDefaultProps,
...props
});}
""");
  });
}
