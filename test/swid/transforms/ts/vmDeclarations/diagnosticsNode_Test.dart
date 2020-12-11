import 'dart:io';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/backend/requiresDartBinding.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassVmDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var diagnosticsNodeClass = SwidClass.fromJson(json
        .decode(File("test/swid/res/DiagnosticsNode.json").readAsStringSync()));

    expect(requiresDartBinding(swidClass: diagnosticsNodeClass), true);
    expect(
        TsClassVmDeclaration(swidClass: diagnosticsNodeClass).toTsSource(), """
declare const flutter: {
foundation: {
diagnosticsNode: (this : void, diagnosticsNode : DiagnosticsNode, props : { linePrefix? : string | undefined, showName : boolean, showSeparator : boolean, style? : DiagnosticsTreeStyle | undefined, name? : string | undefined, }) => DiagnosticsNode;
diagnosticsNodeMessage: (this : void, message : string, props : { allowWrap : boolean, level : DiagnosticLevel, style : DiagnosticsTreeStyle, }) => DiagnosticsNode
}
};
""");
  }, tags: "swid");
}
