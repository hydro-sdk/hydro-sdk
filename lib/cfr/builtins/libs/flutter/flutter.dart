import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/animation.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/foundation/foundation.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/gestures/gestures.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/rendering/rendering.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semantics.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/widgets.dart';
import 'package:hydro_sdk/cfr/runtimeSupport.dart';

void loadflutter({required HydroState hydroState, required Context context}) {
  final flutter = HydroTable();
  context.env['flutter'] = flutter;
  loadanimation(table: flutter, hydroState: hydroState);
  loadfoundation(table: flutter, hydroState: hydroState);
  loadsemantics(table: flutter, hydroState: hydroState);
  loadgestures(table: flutter, hydroState: hydroState);
  loadrendering(table: flutter, hydroState: hydroState);
  loadwidgets(table: flutter, hydroState: hydroState);
}
