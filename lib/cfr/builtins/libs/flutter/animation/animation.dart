import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/curve.dart';
import 'package:hydro_sdk/cfr/runtimeSupport.dart';

void loadanimation(
    {required HydroState hydroState, required HydroTable table}) {
  final animation = HydroTable();
  table['animation'] = animation;
  loadCurve(table: animation, hydroState: hydroState);
}
