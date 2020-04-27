import 'package:hydro_sdk/cfr/builtins/flutter/animation/animation.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/foundation/foundation.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/material/material.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/painting/painting.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/widgets.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';

import 'package:meta/meta.dart';

void loadFlutterLib({@required HydroState luaState, @required Context ctx}) {
  var flutter = HydroTable();

  ctx.env["flutter"] = flutter;

  loadFoundation(luaState: luaState, table: flutter);
  loadMaterial(luaState: luaState, table: flutter);
  loadWidgets(luaState: luaState, table: flutter);
  loadPainting(luaState: luaState, table: flutter);
  loadAnimation(luaState: luaState, table: flutter);
}
