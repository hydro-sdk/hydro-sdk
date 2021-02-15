import 'dart:typed_data';

import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedEndian extends VMManagedBox<Endian> {
  VMManagedEndian(
      {@required this.table,
      @required this.vmObject,
      @required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final HydroTable table;

  final HydroState hydroState;

  final Endian vmObject;
}

void loadEndian({@required HydroState hydroState, @required HydroTable table}) {
  registerBoxer<Endian>(boxer: (
      {@required Endian vmObject,
      @required HydroState hydroState,
      @required HydroTable table}) {
    return VMManagedEndian(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
