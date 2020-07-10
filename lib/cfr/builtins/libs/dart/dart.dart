import 'package:hydro_sdk/cfr/builtins/libs/dart/developer/developer.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/core.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/ui.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';

void loadDartLib(Context ctx) {
  var dart = HydroTable();

  ctx.env["dart"] = dart;

  loadCore(dart);
  loadUi(dart);
  loadDeveloper(dart);
}
