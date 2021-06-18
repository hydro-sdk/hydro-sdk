import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/accessibilityFeatures.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/callbackHandle.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/color.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/offset.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/offsetBase.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/path.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/pathMetric.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/pathMetrics.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/rRect.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/radius.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/rect.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/size.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/tangent.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadui({required HydroState hydroState, required HydroTable table}) {
  final ui = HydroTable();
  table['ui'] = ui;
  loadAccessibilityFeatures(table: ui, hydroState: hydroState);
  loadCallbackHandle(table: ui, hydroState: hydroState);
  loadPath(table: ui, hydroState: hydroState);
  loadTangent(table: ui, hydroState: hydroState);
  loadPathMetrics(table: ui, hydroState: hydroState);
  loadPathMetric(table: ui, hydroState: hydroState);
  loadOffsetBase(table: ui, hydroState: hydroState);
  loadOffset(table: ui, hydroState: hydroState);
  loadSize(table: ui, hydroState: hydroState);
  loadRect(table: ui, hydroState: hydroState);
  loadRRect(table: ui, hydroState: hydroState);
  loadRadius(ui);
  loadColor(ui);
}
