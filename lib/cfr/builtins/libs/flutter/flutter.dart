import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/animation.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/cupertino/cupertino.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/foundation/foundation.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/material.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/painting/painting.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/services/services.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/widgets.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadFlutterLib({required HydroState luaState, required Context ctx}) {
  var flutter = HydroTable();

  ctx.env["flutter"] = flutter;

  loadFoundation(luaState: luaState, table: flutter);
  loadMaterial(luaState: luaState, table: flutter);
  loadCupertino(luaState: luaState, table: flutter);
  loadWidgets(luaState: luaState, table: flutter);
  loadPainting(luaState: luaState, table: flutter);
  loadAnimation(luaState: luaState, table: flutter);
  loadServices(luaState: luaState, table: flutter);
}
