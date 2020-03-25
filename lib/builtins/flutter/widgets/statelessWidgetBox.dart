import 'package:flua/vm/table.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flutter/widgets.dart';

class StatelessWidgetBox extends StatelessWidget {
  final HydroTable table;

  StatelessWidgetBox({@required this.table});

  @override
  Widget build(BuildContext context) {
    return maybeUnwrapAndBuildArgument(
        table.metatable["build"]([table.map, context])[0]);
  }
}

class StatelessPreferredSizeBox extends PreferredSize {
  final HydroTable table;

  StatelessPreferredSizeBox({@required this.table});

  @override
  Size get preferredSize =>
      maybeUnwrapAndBuildArgument(table["preferredSize"]([table.map])[0]);

  @override
  Widget build(BuildContext context) {
    return maybeUnwrapAndBuildArgument(
        table.metatable["build"]([table.map, context])[0]);
  }
}
