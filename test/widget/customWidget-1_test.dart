import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/integrationTestHarness.dart';

class MyCustomWidget extends StatelessWidget {
  final Key? key;
  final Color? color;
  final Widget? icon;
  final Widget? text;
  final MainAxisAlignment? mainAxisAlignment;

  MyCustomWidget({
    required this.key,
    required this.color,
    required this.icon,
    required this.text,
    required this.mainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        key: key,
        color: color,
        child: Row(
          mainAxisAlignment: mainAxisAlignment!,
          children: [icon!, text!],
        ));
  }
}

void main() {
  testWidgets('', (WidgetTester tester) async {
    await tester.pumpWidget(integrationTestHarness(
      "assets/test/widget/customWidget-1.ts",
      customNamespaces: [
        ({HydroState? hydroState}) {
          var myPackageTable = HydroTable();
          hydroState!.context!.env["org"]["myPackage"] = myPackageTable;

          myPackageTable["myCustomWidget"] =
              makeLuaDartFunc(func: (List<dynamic> args) {
            return [
              MyCustomWidget(
                key: maybeUnBoxAndBuildArgument<Key, dynamic>(args[0]["key"],
                    parentState: hydroState),
                color: maybeUnBoxAndBuildArgument<Color, dynamic>(
                    args[0]["color"],
                    parentState: hydroState),
                icon: maybeUnBoxAndBuildArgument<Widget, dynamic>(
                    args[0]["icon"],
                    parentState: hydroState),
                text: maybeUnBoxAndBuildArgument<Widget, dynamic>(
                    args[0]["text"],
                    parentState: hydroState),
                mainAxisAlignment: maybeUnBoxEnum(
                    values: MainAxisAlignment.values,
                    boxedEnum: args[0]["mainAxisAlignment"]),
              )
            ];
          });
        }
      ],
    ));
    await tester.pumpAndSettle();
    var exception = tester.takeException();
    expect(exception, isNull);
    expect(find.byKey(Key("Key for MyCustomwidget")), isNotNull);
  }, tags: "widget");
}
