import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:meta/meta.dart';

class VMManagedFuture extends VMManagedBox<Future<dynamic>> {
  final HydroTable table;
  final HydroState hydroState;
  final Future<dynamic> vmObject;
  VMManagedFuture({
    @required this.table,
    @required this.hydroState,
    @required this.vmObject,
  }) : super(
          table: table,
          hydroState: hydroState,
          vmObject: vmObject,
        ) {
    table["catchError"] = makeLuaDartFunc(func: (List<dynamic> args) {
      VMManagedFuture caller = args[0];
      Closure catchError = args[1];
      Closure test = args.length >= 3 ? args[2]["test"] : null;
      caller.unwrap().catchError((obj) {
        catchError.dispatch([obj], parentState: hydroState);
      },
          test: test != null
              ? (obj) {
                  return test.dispatch([obj], parentState: hydroState)[0];
                }
              : null);
      return [caller];
    });
    table["then"] = makeLuaDartFunc(func: (List<dynamic> args) {
      VMManagedFuture caller = args[0];
      Closure then = args[1];
      caller.unwrap().then((val) {
        then.dispatch([val], parentState: hydroState);
      });
      return [caller];
    });
  }
}

void loadFuture({@required HydroState hydroState, @required HydroTable table}) {
  registerBoxer<Future<dynamic>>(
      boxer: ({Future<dynamic> vmObject, HydroState hydroState}) {
    return VMManagedFuture(
        vmObject: vmObject, hydroState: hydroState, table: HydroTable());
  });

  table["future"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Future<dynamic>>(
          object: Future(() {
            Closure computation = args[0];
            return [computation.dispatch([], parentState: hydroState)];
          }),
          hydroState: hydroState)
    ];
  });

  table["futureValue"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Future<dynamic>>(
          object: Future.value(args[0]), hydroState: hydroState)
    ];
  });
  table["futureError"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Future<dynamic>>(
          object: Future.error(args[0], args[1]), hydroState: hydroState)
    ];
  });
}
