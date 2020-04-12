import 'package:hydro_sdk/cfr/builtins/flutter/animation/animation.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/key.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/material/material.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/package/package.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/painting/painting.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/widgets.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';

import 'package:meta/meta.dart';

loadFlutterLib({@required HydroState luaState, @required Context ctx}) {
  var flutter = HydroTable();

  ctx.env["flutter"] = flutter;

  loadKey(flutter);
  loadMaterial(luaState: luaState, table: flutter);
  loadPackage(luaState: luaState, table: flutter);
  loadWidgets(luaState: luaState, table: flutter);
  loadPainting(luaState: luaState, table: flutter);
  loadAnimation(luaState: luaState, table: flutter);
}
