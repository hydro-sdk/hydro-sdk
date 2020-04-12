import 'package:hydro_sdk/vm/context.dart';
import 'package:hydro_sdk/builtins/dart/core/core.dart';
import 'package:hydro_sdk/builtins/dart/ui/ui.dart';
import 'package:hydro_sdk/vm/table.dart';

loadDartLib(Context ctx) {
  var dart = HydroTable();

  ctx.env["dart"] = dart;

  loadCore(dart);
  loadUi(dart);
}
