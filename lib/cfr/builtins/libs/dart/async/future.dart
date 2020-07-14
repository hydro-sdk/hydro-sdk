import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:meta/meta.dart';

class VMManagedFuture extends VMManagedBox<Future<List<dynamic>>> {
  final HydroTable table;
  final HydroState hydroState;
  final Future<List<dynamic>> vmObject;
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
        catchError.dispatch([null, obj], parentState: hydroState);
      },
          test: test != null
              ? (obj) {
                  return test.dispatch([null, obj], parentState: hydroState)[0];
                }
              : null);
      return [caller];
    });
    table["then"] = makeLuaDartFunc(func: (List<dynamic> args) {
      VMManagedFuture caller = args[0];
      Closure then = args[1];
      return [
        maybeBoxObject<Future<List<dynamic>>>(
            object: caller.unwrap().then((val) {
              List res = then.dispatch(val, parentState: hydroState);

              return res;
            }),
            hydroState: hydroState)
      ];
    });
  }
}

void loadFuture({@required HydroState hydroState, @required HydroTable table}) {
  registerBoxer<Future<List<dynamic>>>(
      boxer: ({Future<List<dynamic>> vmObject, HydroState hydroState}) {
    return VMManagedFuture(
        vmObject: vmObject, hydroState: hydroState, table: HydroTable());
  });

  table["future"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Future<List<dynamic>>>(
          object: Future(() {
            Closure computation = args[0];
            return computation.dispatch([], parentState: hydroState);
          }),
          hydroState: hydroState)
    ];
  });

  table["futureError"] = makeLuaDartFunc(func: (List<dynamic> args) {
    var future = Future<List<dynamic>>.error(args[0], args[1]);
    return [
      maybeBoxObject<Future<List<dynamic>>>(
          object: future, hydroState: hydroState)
    ];
  });

  table["futureSync"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Future<List<dynamic>>>(
          object: Future.sync(() {
            Closure computation = args[0];
            return [computation.dispatch([], parentState: hydroState)];
          }),
          hydroState: hydroState)
    ];
  });

  table["futureValue"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Future<List<dynamic>>>(
          object: Future.value([args[0]]), hydroState: hydroState)
    ];
  });
}
