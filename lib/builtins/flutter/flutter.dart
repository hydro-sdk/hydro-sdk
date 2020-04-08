import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/key.dart';
import 'package:flua/builtins/flutter/material/material.dart';
import 'package:flua/builtins/flutter/package/package.dart';
import 'package:flua/builtins/flutter/painting/painting.dart';
import 'package:flua/builtins/flutter/widgets/widgets.dart';
import 'package:flua/vm/table.dart';

import 'package:meta/meta.dart';

loadFlutterLib({@required LuaState luaState, @required Context ctx}) {
  var flutter = HydroTable();

  ctx.env["flutter"] = flutter;

  loadKey(flutter);
  loadMaterial(luaState: luaState, table: flutter);
  loadPackage(luaState: luaState, table: flutter);
  loadWidgets(luaState: luaState, table: flutter);
  loadPainting(luaState: luaState, table: flutter);
}
