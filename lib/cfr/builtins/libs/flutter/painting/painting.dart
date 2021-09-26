import 'package:hydro_sdk/cfr/builtins/libs/flutter/painting/alignment.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/painting/borderRadius.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/painting/borderSide.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/painting/boxDecoration.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/painting/circleBorder.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/painting/edgeInsets.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/painting/linearGradient.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/painting/networkImage.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/painting/strutStyle.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/painting/textAlignVertical.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/painting/textSpan.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/painting/textStyle.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadPainting({required HydroState luaState, required HydroTable table}) {
  var painting = HydroTable();

  table["painting"] = painting;

  loadTextStyle(luaState: luaState, table: painting);
  loadEdgeInsets(painting);
  loadBorderRadius(hydroState: luaState, table: painting);
  loadNetworkImage(painting);
  loadAlignment(painting);
  loadBoxDecoration(luaState: luaState, table: painting);
  loadTextSpan(luaState: luaState, table: painting);
  loadLinearGradient(luaState: luaState, table: painting);
  loadCircleBorder(luaState: luaState, table: painting);
  loadBorderSide(luaState: luaState, table: painting);
  loadStrutStyle(luaState: luaState, table: painting);
  loadTextAlignVertical(luaState: luaState, table: painting);
}
