import 'package:flua/builtins/flutter/painting/alignment.dart';
import 'package:flua/builtins/flutter/painting/borderRadius.dart';
import 'package:flua/builtins/flutter/painting/boxDecoration.dart';
import 'package:flua/builtins/flutter/painting/edgeInsets.dart';
import 'package:flua/builtins/flutter/painting/linearGradient.dart';
import 'package:flua/builtins/flutter/painting/networkImage.dart';
import 'package:flua/builtins/flutter/painting/textSpan.dart';
import 'package:flua/hydroState.dart';
import 'package:flua/vm/table.dart';
import 'package:meta/meta.dart';

loadPainting({@required HydroState luaState, @required HydroTable table}) {
  var painting = HydroTable();

  table["painting"] = painting;

  loadEdgeInsets(painting);
  loadBorderRadius(painting);
  loadNetworkImage(painting);
  loadAlignment(painting);
  loadBoxDecoration(luaState: luaState, table: painting);
  loadTextSpan(luaState: luaState, table: painting);
  loadLinearGradient(luaState: luaState, table: painting);
}
