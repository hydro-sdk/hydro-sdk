import 'package:hydro_sdk/cfr/builtins/libs/http/get.dart';
import 'package:hydro_sdk/cfr/builtins/libs/http/response.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadHttpLib({required HydroState hydroState, required Context ctx}) {
  var http = HydroTable();

  ctx.env["http"] = http;

  loadGet(hydroState: hydroState, table: http);
  loadResponse(hydroState: hydroState, table: http);
}
