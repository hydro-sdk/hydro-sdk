import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

typedef Box<T> Boxer<T>({
  required T vmObject,
  required HydroState hydroState,
  required HydroTable table,
});

Map<
    Type,
    Box<dynamic> Function({
  required dynamic vmObject,
  required HydroState hydroState,
  required HydroTable table,
})> _boxers = {};

void registerBoxer<T>({required Boxer<T> boxer}) {
  _boxers[T] = ({
    required dynamic vmObject,
    required HydroState hydroState,
    required HydroTable table,
  }) =>
      boxer(
        vmObject: vmObject,
        hydroState: hydroState,
        table: table,
      );
}

Box<T> maybeBoxObject<T>({
  required T object,
  required HydroState hydroState,
  required HydroTable table,
}) {
  Box<dynamic> Function({
    required HydroState hydroState,
    required HydroTable table,
    required dynamic vmObject,
  })? boxer = _boxers[T];
  if (boxer != null) {
    final Box<dynamic>? res = boxer(
      vmObject: object,
      hydroState: hydroState,
      table: table,
    );

    if (res != null) {
      return res as Box<T>;
    }
  }
  throw "No boxer registered for type $T";
}
