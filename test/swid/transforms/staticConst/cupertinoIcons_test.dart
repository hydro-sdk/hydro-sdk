import 'dart:io';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassStaticConstFieldDeclarations.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var cupertinoIconsClass = SwidClass.fromJson(json.decode(
        File("../test/swid/res/CupertinoIcons.json").readAsStringSync()));

    //Trim thousands of icon definitions down to 1 plus 2 other static fields
    cupertinoIconsClass = cupertinoIconsClass.copyWith(
        staticConstFieldDeclarations: List.from(cupertinoIconsClass
            .staticConstFieldDeclarations
            .where((x) =>
                x.name == "iconFont" ||
                x.name == "iconFontPackage" ||
                x.name == "left_chevron")
            .toList()));

    expect(cupertinoIconsClass.staticConstFieldDeclarations.length, 3);
    //Should be able to resolve the inline references to CupertinoIcons.iconFont and CupertinoIcons.iconFontPackage
    expect(
        TsClassStaticConstFieldDeclarations(swidClass: cupertinoIconsClass)
            .toTsSource(),
        """
public static iconFont = "CupertinoIcons";
public static iconFontPackage = "cupertino_icons";
public static left_chevron = new IconData(0xf3d2,{fontFamily:CupertinoIcons.iconFont,fontPackage:CupertinoIcons.iconFontPackage,matchTextDirection:true});
""");
  });
}
