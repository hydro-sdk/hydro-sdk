import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/tsClassVmDeclaration.dart';
import 'package:hydro_sdk/swid/backend/util/requiresDartBinding.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var iconDataClass = SwidClass.fromJson(
        json.decode(File("test/swid/res/IconData.json").readAsStringSync()));

    expect(requiresDartBinding(swidClass: iconDataClass), true);
    expect(iconDataClass.instanceFieldDeclarations.length, 4);
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TsClassVmDeclaration(swidClass: iconDataClass),
        ),
        """
declare const flutter: {
widgets: {
iconData: (this: void, iconData: IIconData, codePoint: number, props : {  fontFamily? : string | undefined, fontPackage? : string | undefined, matchTextDirection : boolean,}) => IIconData
}
};
""");

    var cupertinoIconsClass = SwidClass.fromJson(json
        .decode(File("test/swid/res/CupertinoIcons.json").readAsStringSync()));

    expect(
      CachingPipeline(
        cacheMgr: const PipelineNoopCacheMgr(),
      ).reduceFromTerm(
        TsClassVmDeclaration(swidClass: cupertinoIconsClass),
      ),
      "",
    );
  }, tags: "swid");
}
