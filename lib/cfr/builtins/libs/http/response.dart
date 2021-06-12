import 'package:http/http.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedResponse extends VMManagedBox<Response> {
  final HydroTable table;
  final HydroState hydroState;
  final Response vmObject;
  VMManagedResponse({
    required this.table,
    required this.hydroState,
    required this.vmObject,
  }) : super(
          table: table,
          hydroState: hydroState,
          vmObject: vmObject,
        ) {
    table["body"] = vmObject.body;
    table["statusCode"] = vmObject.statusCode;
  }
}

void loadResponse({
  required HydroState hydroState,
  required HydroTable table,
}) {
  registerBoxer<Response>(boxer: ({
    required Response vmObject,
    required HydroState hydroState,
    required HydroTable table,
  }) {
    return VMManagedResponse(
      vmObject: vmObject,
      hydroState: hydroState,
      table: table,
    );
  });
}
