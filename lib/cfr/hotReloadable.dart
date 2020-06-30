import 'dart:typed_data';

import 'package:hydro_sdk/cfr/builtins/loadBuiltins.dart';
import 'package:hydro_sdk/cfr/coroutine/coroutineresult.dart';
import 'package:hydro_sdk/cfr/decode/codedump.dart';
import 'package:hydro_sdk/cfr/linkStatus.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/reassembler/reassembleClosures.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

mixin HotReloadable<T extends StatefulWidget> on State<T> {
  HydroState luaState = HydroState();
  String lastHash;
  HydroFunctionImpl func;
  CoroutineResult res;

  Future<bool> hotReload(
      {@required
          Uint8List bytecodeImage,
      @required
          String baseUrl,
      @required
          Map<String, Prototype Function({CodeDump codeDump, Prototype parent})>
              thunks}) async {
    var linkStatus = LinkStatus();
    var val = await luaState.loadBuffer(
        buffer: bytecodeImage,
        name: baseUrl,
        thunks: thunks,
        linkStatus: linkStatus);
    var status =
        reassembleClosures(destination: func.closure, source: val.closure);
    if (!status.bailedOut) {
      luaState.dispatchContext = DispatchContext(
          dispatchContext: val,
          resssemblyMap: luaState?.dispatchContext?.resssemblyMap != null
              ? [
                  ...luaState.dispatchContext.resssemblyMap,
                  ...status.reassemblyMap
                ]
              : status.reassemblyMap);
      print("I/Hydro: Relocated ${status.relocatedProtos} function prototypes");
      print(
          "I/Hydro: Reassembled ${status.reassembledProtos} function prototypes");
      setState(() {
        func = val;
        res = func.pcall([], parentState: luaState);
      });
      return true;
    } else {
      print("I/Hydro: Bailed out of hot-reload");
      print("I/Hydro: ${status.bailOutReason}");
      return false;
    }
  }

  Future<void> fullRestart(
      {@required
          Uint8List bytecodeImage,
      @required
          String baseUrl,
      @required
          Map<String, Prototype Function({CodeDump codeDump, Prototype parent})>
              thunks}) async {
    setState(() {
      luaState = HydroState();
      loadBuiltins(hydroState: luaState);
      func = null;
      res = null;
    });
    Future.delayed(Duration(seconds: 2)).then((val) async {
      var linkStatus = LinkStatus();
      var val = await luaState.loadBuffer(
          buffer: bytecodeImage,
          name: baseUrl,
          thunks: thunks,
          linkStatus: linkStatus);
      print(
          "I/Hydro ${linkStatus.nativePrototypes} native, ${linkStatus.virtualPrototypes} virtual prototypes");
      // var linkStatus = linkNativePrototypes(destination: val.closure, stubs: stubs);
      //  print("I/Hydro Linked ${linkStatus.linkedNativePrototypes} native prototypes");
      setState(() {
        func = val;
        res = func.pcall([], parentState: luaState);
      });
    });
  }
}
