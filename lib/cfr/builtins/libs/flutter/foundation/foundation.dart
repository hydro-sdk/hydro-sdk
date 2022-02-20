import 'package:hydro_sdk/cfr/builtins/libs/flutter/foundation/abstractNode.dart'
    as _c482;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/foundation/key.dart'
    as _4ad7;
import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

void loadfoundation(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  final foundation = _36c2.HydroTable();
  table['foundation'] = foundation;
  _c482.loadAbstractNode(table: foundation, hydroState: hydroState);
  _4ad7.loadKey(table: foundation, hydroState: hydroState);
}
