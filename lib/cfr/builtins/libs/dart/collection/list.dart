import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:meta/meta.dart';

class VMManagedList extends VMManagedBox<List<dynamic>> {
  final HydroTable table;
  final HydroState hydroState;
  final List<dynamic> vmObject;
  VMManagedList({
    @required this.table,
    @required this.hydroState,
    @required this.vmObject,
  }) : super(
          table: table,
          hydroState: hydroState,
          vmObject: vmObject,
        ) {
    table["unwrap"] = makeLuaDartFunc(func: (List<dynamic> args) {
      VMManagedList caller = args[0];
      return [HydroTable()..arr = caller.unwrap()];
    });

    table["map"] = makeLuaDartFunc(func: (List<dynamic> args) {
      VMManagedList caller = args[0];
      Closure map = args[1];
      return [
        maybeBoxObject<List<dynamic>>(
            object: caller
                .unwrap()
                .map((e) => map.dispatch([null, e], parentState: hydroState)[0])
                ?.toList(),
            hydroState: hydroState)
      ];
    });

    table["elementAt"] = makeLuaDartFunc(func: (List<dynamic> args) {
      VMManagedList caller = args[0];
      int index = args[1];
      return [caller.unwrap().elementAt(index)];
    });
  }
}

void loadList({@required HydroState hydroState, @required HydroTable table}) {
  registerBoxer<List<dynamic>>(
      boxer: ({List<dynamic> vmObject, HydroState hydroState}) {
    return VMManagedList(
        vmObject: vmObject, hydroState: hydroState, table: HydroTable());
  });

  table["fromArray"] = makeLuaDartFunc(func: (List<dynamic> args) {
    HydroTable arg = args[0];
    return [
      maybeBoxObject<List<dynamic>>(
        object: arg.arr,
        hydroState: hydroState,
      )
    ];
  });
}
