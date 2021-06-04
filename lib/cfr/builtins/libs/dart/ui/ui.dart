import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/accessibilityFeatures.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/callbackHandle.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/color.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/fontWeight.dart';
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
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/textPosition.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/textRange.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadUi({required HydroState luaState, required HydroTable table}) {
  var ui = HydroTable();

  table["ui"] = ui;

  loadColor(ui);
  loadSize(hydroState: luaState, table: ui);
  loadRadius(ui);
  loadFontWeight(ui);
  loadTextPosition(ui);
  loadTextRange(ui);
  loadOffsetBase(hydroState: luaState, table: ui);
  loadOffset(hydroState: luaState, table: ui);
  loadRect(hydroState: luaState, table: ui);
  loadAccessibilityFeatures(hydroState: luaState, table: ui);
  loadCallbackHandle(hydroState: luaState, table: ui);
  loadRRect(hydroState: luaState, table: ui);
  loadPath(hydroState: luaState, table: ui);
  loadPathMetric(hydroState: luaState, table: ui);
  loadTangent(hydroState: luaState, table: ui);
  loadPathMetrics(hydroState: luaState, table: ui);
}
