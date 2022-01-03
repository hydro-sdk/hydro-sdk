import 'package:hydro_sdk/cfr/builtins/libs/flutter/gestures/hitTestEntry.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/gestures/hitTestTarget.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/gestures/pointerEvent.dart';
import 'package:hydro_sdk/cfr/runtimeSupport.dart';

void loadgestures({required HydroState hydroState, required HydroTable table}) {
  final gestures = HydroTable();
  table['gestures'] = gestures;
  loadHitTestTarget(table: gestures, hydroState: hydroState);
  loadHitTestEntry(table: gestures, hydroState: hydroState);
  loadPointerEvent(table: gestures, hydroState: hydroState);
}
