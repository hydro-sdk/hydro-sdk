import 'package:hydro_sdk/cfr/builtins/flutter/foundation/key.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:meta/meta.dart';

loadFoundation({@required HydroState luaState, @required HydroTable table}) {
  var foundation = HydroTable();

  table["foundation"] = foundation;

  loadKey(foundation);
}
