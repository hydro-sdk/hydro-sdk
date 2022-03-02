import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/loadanimation.dart' as _90b4;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/foundation/loadfoundation.dart' as _f178;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/gestures/loadgestures.dart' as _6b76;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/painting/loadpainting.dart' as _c1de;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/physics/loadphysics.dart' as _7272;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/rendering/loadrendering.dart' as _ddf3;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/loadsemantics.dart' as _8638;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/loadwidgets.dart' as _71d7;
import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

void flutter({required _36c2.HydroState hydroState, required _36c2.Context context}) { final flutter = _36c2.HydroTable();
context.env  [
'flutter'
] = flutter;
_c1de.loadpainting(table: flutter, hydroState: hydroState);
_71d7.loadwidgets(table: flutter, hydroState: hydroState);
_f178.loadfoundation(table: flutter, hydroState: hydroState);
_90b4.loadanimation(table: flutter, hydroState: hydroState);
_8638.loadsemantics(table: flutter, hydroState: hydroState);
_6b76.loadgestures(table: flutter, hydroState: hydroState);
_ddf3.loadrendering(table: flutter, hydroState: hydroState);
_7272.loadphysics(table: flutter, hydroState: hydroState); } 
