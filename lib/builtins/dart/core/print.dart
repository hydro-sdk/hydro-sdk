import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/table.dart' as l;

loadPrint(l.Table table) {
  table["print"] = makeLuaDartFunc(func: (List<dynamic> args) {
    print(args[0]);
    return [];
  });
}
