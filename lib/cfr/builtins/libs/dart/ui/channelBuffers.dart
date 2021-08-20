import 'dart:async';
import 'dart:core';
import 'dart:typed_data';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedChannelBuffers extends VMManagedBox<ChannelBuffers> {
  VMManagedChannelBuffers(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['push'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[3];
      vmObject.push(
          luaCallerArguments[1],
          maybeUnBoxAndBuildArgument<ByteData?, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          (data) => unpackedcallback.dispatch(
                [luaCallerArguments[0], data],
                parentState: hydroState,
              ));
      return [];
    });
    table['setListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[2];
      vmObject.setListener(
          luaCallerArguments[1],
          (data, callback) => unpackedcallback.dispatch(
                [luaCallerArguments[0], data, callback],
                parentState: hydroState,
              ));
      return [];
    });
    table['clearListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.clearListener(luaCallerArguments[1]);
      return [];
    });
    table['drain'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[2];
      return [
        maybeBoxObject<Future>(
            object: vmObject.drain(
                luaCallerArguments[1],
                (data, callback) =>
                    maybeUnBoxAndBuildArgument<Future<void>, void>(
                        unpackedcallback.dispatch(
                          [luaCallerArguments[0], data, callback],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['handleMessage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handleMessage(maybeUnBoxAndBuildArgument<ByteData, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['resize'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.resize(luaCallerArguments[1], luaCallerArguments[2]);
      return [];
    });
    table['allowOverflow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.allowOverflow(luaCallerArguments[1], luaCallerArguments[2]);
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
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_push'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[3];
      super.push(
          luaCallerArguments[1],
          maybeUnBoxAndBuildArgument<ByteData?, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          (data) => unpackedcallback.dispatch(
                [luaCallerArguments[0], data],
                parentState: hydroState,
              ));
      return [];
    });
    table['_dart_setListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[2];
      super.setListener(
          luaCallerArguments[1],
          (data, callback) => unpackedcallback.dispatch(
                [luaCallerArguments[0], data, callback],
                parentState: hydroState,
              ));
      return [];
    });
    table['_dart_clearListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.clearListener(luaCallerArguments[1]);
      return [];
    });
    table['_dart_drain'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[2];
      return [
        maybeBoxObject<Future>(
            object: super.drain(
                luaCallerArguments[1],
                (data, callback) =>
                    maybeUnBoxAndBuildArgument<Future<void>, void>(
                        unpackedcallback.dispatch(
                          [luaCallerArguments[0], data, callback],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_handleMessage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleMessage(maybeUnBoxAndBuildArgument<ByteData, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_resize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.resize(luaCallerArguments[1], luaCallerArguments[2]);
      return [];
    });
    table['_dart_allowOverflow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.allowOverflow(luaCallerArguments[1], luaCallerArguments[2]);
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
    return maybeUnBoxAndBuildArgument<Future<void>, void>(
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
  table['channelBuffers'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedChannelBuffers(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<ChannelBuffers>(boxer: (
      {required ChannelBuffers vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedChannelBuffers(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
