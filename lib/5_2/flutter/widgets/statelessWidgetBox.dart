import 'package:flua/5_2/table.dart' as l;
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flutter/widgets.dart';

class StatelessWidgetBox extends StatelessWidget {
  final l.Table table;

  StatelessWidgetBox({@required this.table});

  @override
  Widget build(BuildContext context) {
    return maybeUnwrapAndBuildArgument(
        table.metatable["build"]([table.map, context])[0]);
  }
}
