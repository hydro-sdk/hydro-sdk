import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/integrationTestHarness.dart';
import 'package:hydro_sdk/testMode.dart';

class MyCustomWidget extends StatelessWidget {
  final Color color;
  final Icon icon;
  final Text text;
  final MainAxisAlignment mainAxisAlignment;

  MyCustomWidget({
    @required this.color,
    @required this.icon,
    @required this.text,
    @required this.mainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: color,
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          children: [icon, text],
        ));
  }
}

void main() {
  testWidgets('', (WidgetTester tester) async {
    var testMode = getTestMode();
    expect(testMode, isNotNull);

    await tester.pumpWidget(integrationTestHarness(
      "assets/test/widget/customWidget-1.ts",
      customNamespaces: [
        ({HydroState hydroState}) {
          var myPackageTable = HydroTable();
          hydroState.context.env["org"]["myPackage"] = myPackageTable;

          myPackageTable["myCustomWidget"] =
              makeLuaDartFunc(func: (List<dynamic> args) {
            return [
              MyCustomWidget(
                color: maybeUnBoxAndBuildArgument<Color>(args[0]["color"],
                    parentState: hydroState),
                icon: maybeUnBoxAndBuildArgument<Icon>(args[0]["icon"],
                    parentState: hydroState),
                text: maybeUnBoxAndBuildArgument<Widget>(args[0]["text"],
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
  });
}
