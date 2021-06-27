import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedPictureRecorder extends VMManagedBox<PictureRecorder> {
  VMManagedPictureRecorder(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getIsRecording'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.isRecording];
    });
    table['endRecording'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Picture>(
            object: vmObject.endRecording(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final PictureRecorder vmObject;
}

class RTManagedPictureRecorder extends PictureRecorder
    implements Box<PictureRecorder> {
  RTManagedPictureRecorder({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_getIsRecording'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.isRecording];
    });
    table['_dart_endRecording'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Picture>(
            object: super.endRecording(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  PictureRecorder unwrap() => this;
  PictureRecorder get vmObject => this;
  @override
  bool get isRecording {
    Closure closure = table["getIsRecording"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Picture endRecording() {
    Closure closure = table["endRecording"];
    return maybeUnBoxAndBuildArgument<Picture>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadPictureRecorder(
    {required HydroState hydroState, required HydroTable table}) {
  table['pictureRecorder'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [RTManagedPictureRecorder(table: args[0], hydroState: hydroState)];
  });
  registerBoxer<PictureRecorder>(boxer: (
      {required PictureRecorder vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPictureRecorder(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
