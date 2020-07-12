import 'package:hydro_sdk/cfr/builtins/libs/dart/async/async.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/developer/developer.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/core.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/ui.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:meta/meta.dart';

void loadDartLib({@required HydroState hydroState, @required Context ctx}) {
  var dart = HydroTable();

  ctx.env["dart"] = dart;

  loadCore(dart);
  loadUi(dart);
  loadDeveloper(dart);
  loadAsync(table: dart, hydroState: hydroState);
}
