import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/animation.dart'
    as _e83d;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/foundation/foundation.dart'
    as _0432;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/gestures/gestures.dart'
    as _9eb6;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/painting/painting.dart'
    as _5a81;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/rendering/rendering.dart'
    as _b51c;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semantics.dart'
    as _f3f3;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/widgets.dart'
    as _75f8;
import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

void loadflutter(
    {required _36c2.HydroState hydroState, required _36c2.Context context}) {
  final flutter = _36c2.HydroTable();
  context.env['flutter'] = flutter;
  _5a81.loadpainting(table: flutter, hydroState: hydroState);
  _0432.loadfoundation(table: flutter, hydroState: hydroState);
  _e83d.loadanimation(table: flutter, hydroState: hydroState);
  _f3f3.loadsemantics(table: flutter, hydroState: hydroState);
  _9eb6.loadgestures(table: flutter, hydroState: hydroState);
  _b51c.loadrendering(table: flutter, hydroState: hydroState);
  _75f8.loadwidgets(table: flutter, hydroState: hydroState);
}
