import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/backend/dart-barrel/util/resolveBarrelSpecs.dart';

import 'package:hydro_sdk/swid/ir/backend/ts/tsClassVmDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/util/requiresDartBinding.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var iterableClass = SwidClass.fromJson(
        json.decode(File("../test/swid/res/Iterable.json").readAsStringSync()));
    var offsetClass = SwidClass.fromJson(
        json.decode(File("../test/swid/res/Offset.json").readAsStringSync()));
    var rRectClass = SwidClass.fromJson(
        json.decode(File("../test/swid/res/RRect.json").readAsStringSync()));
    var setClass = SwidClass.fromJson(
        json.decode(File("../test/swid/res/Set.json").readAsStringSync()));

    var res = resolveBarrelSpecs(classes: [
      iterableClass,
      offsetClass,
      rRectClass,
      setClass,
    ]);
    print(res);
  }, tags: "swid");
}
