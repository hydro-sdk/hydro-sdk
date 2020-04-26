import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:flutter/widgets.dart';

class StatelessWidgetBox extends StatelessWidget {
  final HydroTable table;
  final HydroState parentState;

  StatelessWidgetBox({@required this.table, @required this.parentState});

  @override
  Widget build(BuildContext context) {
    Closure managedBuild =
        maybeFindInheritedMethod(managedObject: table, methodName: "build");
    var buildResult = managedBuild
        .dispatch([table.map, context], parentState: parentState)[0];
    return maybeUnwrapAndBuildArgument<Widget>(buildResult,
        parentState: parentState);
  }
}

class StatelessPreferredSizeBox extends PreferredSize {
  final HydroTable table;
  final HydroState parentState;

  StatelessPreferredSizeBox({@required this.table, @required this.parentState});

  @override
  Size get preferredSize => maybeUnwrapAndBuildArgument<Widget>(
      table["preferredSize"]([table.map])[0],
      parentState: parentState);

  @override
  Widget build(BuildContext context) {
    Closure managedBuild =
        maybeFindInheritedMethod(managedObject: table, methodName: "build");
    var buildResult = managedBuild
        .dispatch([table.map, context], parentState: parentState)[0];
    return maybeUnwrapAndBuildArgument<Widget>(buildResult,
        parentState: parentState);
  }
}
