import 'package:flutter/material.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class InheritedWidgetBox extends InheritedWidget {
  final HydroTable table;
  final HydroState parentState;
  InheritedWidgetBox({@required this.table, @required this.parentState})
      : super(
            child: maybeUnwrapAndBuildArgument<Widget>(table["child"],
                parentState: parentState));

  @override
  bool updateShouldNotify(InheritedWidgetBox old) => true;
}
