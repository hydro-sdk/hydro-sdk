import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/curve.dart'
    as _39b6;
import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

void loadanimation(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  final animation = _36c2.HydroTable();
  table['animation'] = animation;
  _39b6.loadCurve(table: animation, hydroState: hydroState);
}
