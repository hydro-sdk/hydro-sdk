import 'dart:typed_data';

import 'package:hydro_sdk/cfr/coroutine/coroutineresult.dart';
import 'package:hydro_sdk/cfr/decode/codedump.dart';
import 'package:hydro_sdk/cfr/lasm/stub.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/reassembler/reassembleClosures.dart';
import 'package:hydro_sdk/cfr/lasm/linkNativePrototypes.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

mixin HotReloadable<T extends StatefulWidget> on State<T> {
  HydroState luaState = HydroState();
  String lastHash;
  HydroFunctionImpl func;
  CoroutineResult res;

  Future<bool> hotReload(
      {@required Uint8List bytecodeImage, @required String baseUrl}) async {
    var val = await luaState.loadBuffer(bytecodeImage, baseUrl);
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
          Map<String, LasmStub Function({CodeDump codeDump, Prototype parent})>
              stubs}) async {
    setState(() {
      luaState = HydroState();
      func = null;
      res = null;
    });
    Future.delayed(Duration(seconds: 2)).then((val) async {
      var val = await luaState.loadBuffer(bytecodeImage, baseUrl);
      var linkStatus = linkNativePrototypes(destination: val.closure, stubs: stubs);
       print("I/Hydro Linked ${linkStatus.linkedNativePrototypes} native prototypes");
      setState(() {
        func = val;
        res = func.pcall([], parentState: luaState);
      });
    });
  }
}
