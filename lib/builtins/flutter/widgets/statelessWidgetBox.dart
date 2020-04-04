import 'package:flua/luastate.dart';
import 'package:flua/vm/closure.dart';
import 'package:flua/vm/table.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flutter/widgets.dart';

class StatelessWidgetBox extends StatelessWidget {
  final HydroTable table;
  final LuaState parentState;

  StatelessWidgetBox({@required this.table, @required this.parentState});

  @override
  Widget build(BuildContext context) {
    Closure managedBuild = table.metatable["build"];
    var buildResult = managedBuild
        .dispatch([table.map, context], parentState: parentState)[0];
    return maybeUnwrapAndBuildArgument<Widget>(buildResult,
        parentState: parentState);
  }
}

class StatelessPreferredSizeBox extends PreferredSize {
  final HydroTable table;
  final LuaState parentState;

  StatelessPreferredSizeBox({@required this.table, @required this.parentState});

  @override
  Size get preferredSize => maybeUnwrapAndBuildArgument<Widget>(
      table["preferredSize"]([table.map])[0],
      parentState: parentState);

  @override
  Widget build(BuildContext context) {
    Closure managedBuild = table.metatable["build"];
    var buildResult = managedBuild
        .dispatch([table.map, context], parentState: parentState)[0];
    return maybeUnwrapAndBuildArgument<Widget>(buildResult,
        parentState: parentState);
  }
}
