import 'package:hydro_sdk/cfr/builtins/libs/flutter/foundation/key.dart';
import 'package:hydro_sdk/cfr/runtimeSupport.dart';

void loadfoundation(
    {required HydroState hydroState, required HydroTable table}) {
  final foundation = HydroTable();
  table['foundation'] = foundation;
  loadKey(table: foundation, hydroState: hydroState);
}
