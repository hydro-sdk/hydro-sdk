import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var iconDataClass = SwidClass.fromJson(
        json.decode(File("test/swid/res/IconData.json").readAsStringSync()));

    expect(iconDataClass.instanceFieldDeclarations.length, 4);
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          TransformTypeDeclarationToTs(
            swidType: SwidType.fromSwidFunctionType(
              swidFunctionType: iconDataClass.constructorType!,
            ),
            parentClass: null,
          ),
        ),
        "(codePoint: number, props : {  fontFamily? : string | undefined, fontPackage? : string | undefined, matchTextDirection : boolean,}) => IconData");
  }, tags: "swid");
}
