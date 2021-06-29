import 'dart:async';
import 'dart:core';
import 'dart:typed_data';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedChannelBuffers extends VMManagedBox<ChannelBuffers> {
  VMManagedChannelBuffers(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['push'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure unpackedcallback = args[3];
      vmObject.push(
          args[1],
          maybeUnBoxAndBuildArgument<ByteData?>(args[2],
              parentState: hydroState),
          (data) => unpackedcallback.dispatch(
                [args[0], data],
                parentState: hydroState,
              ));
      return [];
    });
    table['setListener'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure unpackedcallback = args[2];
      vmObject.setListener(
          args[1],
          (data, callback) => unpackedcallback.dispatch(
                [args[0], data, callback],
                parentState: hydroState,
              ));
      return [];
    });
    table['clearListener'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.clearListener(args[1]);
      return [];
    });
    table['drain'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure unpackedcallback = args[2];
      return [
        maybeBoxObject<Future>(
            object: vmObject.drain(
                args[1],
                (data, callback) => maybeUnBoxAndBuildArgument<Future<void>>(
                    unpackedcallback.dispatch(
                      [args[0], data, callback],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['handleMessage'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.handleMessage(maybeUnBoxAndBuildArgument<ByteData>(args[1],
          parentState: hydroState));
      return [];
    });
    table['resize'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.resize(args[1], args[2]);
      return [];
    });
    table['allowOverflow'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.allowOverflow(args[1], args[2]);
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final ChannelBuffers vmObject;
}

class RTManagedChannelBuffers extends ChannelBuffers
    implements Box<ChannelBuffers> {
  RTManagedChannelBuffers({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_push'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure unpackedcallback = args[3];
      super.push(
          args[1],
          maybeUnBoxAndBuildArgument<ByteData?>(args[2],
              parentState: hydroState),
          (data) => unpackedcallback.dispatch(
                [args[0], data],
                parentState: hydroState,
              ));
      return [];
    });
    table['_dart_setListener'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure unpackedcallback = args[2];
      super.setListener(
          args[1],
          (data, callback) => unpackedcallback.dispatch(
                [args[0], data, callback],
                parentState: hydroState,
              ));
      return [];
    });
    table['_dart_clearListener'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.clearListener(args[1]);
      return [];
    });
    table['_dart_drain'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure unpackedcallback = args[2];
      return [
        maybeBoxObject<Future>(
            object: super.drain(
                args[1],
                (data, callback) => maybeUnBoxAndBuildArgument<Future<void>>(
                    unpackedcallback.dispatch(
                      [args[0], data, callback],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_handleMessage'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.handleMessage(maybeUnBoxAndBuildArgument<ByteData>(args[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_resize'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.resize(args[1], args[2]);
      return [];
    });
    table['_dart_allowOverflow'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.allowOverflow(args[1], args[2]);
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  ChannelBuffers unwrap() => this;
  ChannelBuffers get vmObject => this;
  @override
  void push(String name, ByteData? data, callback) {
    Closure closure = table["push"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void setListener(String name, callback) {
    Closure closure = table["setListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void clearListener(String name) {
    Closure closure = table["clearListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Future<void> drain(String name, callback) {
    Closure closure = table["drain"];
    return maybeUnBoxAndBuildArgument<Future<void>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void handleMessage(ByteData data) {
    Closure closure = table["handleMessage"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void resize(String name, int newSize) {
    Closure closure = table["resize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void allowOverflow(String name, bool allowed) {
    Closure closure = table["allowOverflow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadChannelBuffers(
    {required HydroState hydroState, required HydroTable table}) {
  table['channelBuffers'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [RTManagedChannelBuffers(table: args[0], hydroState: hydroState)];
  });
  registerBoxer<ChannelBuffers>(boxer: (
      {required ChannelBuffers vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedChannelBuffers(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
