import 'package:hydro_sdk/vm/context.dart';
import 'package:hydro_sdk/vm/table.dart';

loadPrint(HydroTable table) {
  table["print"] = makeLuaDartFunc(func: (List<dynamic> args) {
    print(args[0]);
    return [];
  });
}
