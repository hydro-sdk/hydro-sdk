import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/dart/core/core.dart';
import 'package:hydro_sdk/cfr/builtins/dart/ui/ui.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';

void loadDartLib(Context ctx) {
  var dart = HydroTable();

  ctx.env["dart"] = dart;

  loadCore(dart);
  loadUi(dart);
}
