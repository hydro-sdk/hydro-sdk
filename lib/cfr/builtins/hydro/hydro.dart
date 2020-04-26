import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';

void loadHydroLib(Context ctx) {
  var hydro = HydroTable();
  ctx.env["hydro"] = hydro;

  hydro["globalBuildResult"] = (List<dynamic> args) => null;
}
