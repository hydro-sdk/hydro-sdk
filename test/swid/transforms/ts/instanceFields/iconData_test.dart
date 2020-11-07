import 'dart:io';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassInstanceFieldDeclarations.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var iconDataClass = SwidClass.fromJson(
        json.decode(File("../test/swid/res/IconData.json").readAsStringSync()));

    expect(iconDataClass.instanceFieldDeclarations.length, 4);
    expect(
        TsClassInstanceFieldDeclarations(swidClass: iconDataClass).toTsSource(),
        """
    public readonly codePoint: number = undefined as any;
    public readonly fontFamily: string = undefined as any;
    public readonly fontPackage: string = undefined as any;
    public readonly matchTextDirection: boolean = undefined as any;
""");
}, tags: "swid");
}
