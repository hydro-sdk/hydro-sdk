import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/tsClassVmDeclaration.dart';
import 'package:hydro_sdk/swid/backend/util/requiresDartBinding.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var iconDataClass = SwidClass.fromJson(
        json.decode(File("test/swid/res/IconData.json").readAsStringSync()));

    expect(requiresDartBinding(swidClass: iconDataClass), true);
    expect(iconDataClass.instanceFieldDeclarations.length, 4);
    expect(TsClassVmDeclaration(swidClass: iconDataClass).toTsSource(), """
declare const flutter: {
widgets: {
iconData: (this: void, iconData: IIconData, codePoint: number, props : { fontFamily : string, fontPackage : string, matchTextDirection : boolean, }) => IIconData
}
};
""");

    var cupertinoIconsClass = SwidClass.fromJson(json.decode(
        File("test/swid/res/CupertinoIcons.json").readAsStringSync()));

    expect(
        TsClassVmDeclaration(swidClass: cupertinoIconsClass).toTsSource(), "");
  }, tags: "swid");
}
