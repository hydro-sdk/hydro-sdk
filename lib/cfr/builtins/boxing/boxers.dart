import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

typedef Box<T> Boxer<T>(
    {@required T vmObject,
    @required HydroState hydroState,
    @required HydroTable table});

Map<Type, Boxer<dynamic>> _boxers = {};

void registerBoxer<T>({@required Boxer<T> boxer}) {
  _boxers[T] = ({
    vmObject,
    hydroState,
    table,
  }) =>
      boxer(
        vmObject: vmObject,
        hydroState: hydroState,
        table: table,
      );
}

Box<T> maybeBoxObject<T>({
  @required T object,
  @required HydroState hydroState,
  @required HydroTable table,
}) {
  assert(hydroState != null);
  var boxer = _boxers[T];
  if (boxer != null) {
    var res = boxer(
      vmObject: object,
      hydroState: hydroState,
      table: table,
    );

    if (res != null) {
      return res;
    }
  }
  throw "No boxer registered for type $T";
}
