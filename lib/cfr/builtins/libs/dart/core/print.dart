import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';

void loadPrint(HydroTable table) {
  table["print"] = makeLuaDartFunc(func: (List<dynamic> args) {
    print(args[0]);
    return [];
  });
}
