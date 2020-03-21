import 'dart:typed_data';

import 'package:flua/coroutine/coroutineresult.dart';
import 'package:flua/luastate.dart';
import 'package:flua/reassembler/reassembleClosures.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

mixin HotReloadable<T extends StatefulWidget> on State<T> {
  LuaState luaState = LuaState();
  String lastHash;
  LuaFunctionImpl func;
  CoroutineResult res;

  Future<bool> hotReload(
      {@required Uint8List bytecodeImage, @required String baseUrl}) async {
    var val = await luaState.loadBuffer(bytecodeImage, baseUrl);
    var status =
        reassembleClosures(destination: func.closure, source: val.closure);
    if (!status.bailedOut) {
      print("I/Hydro: Relocated ${status.relocatedProtos} function prototypes");
      print(
          "I/Hydro: Reassembled ${status.reassembledProtos} function prototypes");
      setState(() {
        func = val;
        res = func.pcall([]);
      });
      return true;
    } else {
      print("I/Hydro: Bailed out of hot-reload");
      print("I/Hydro: ${status.bailOutReason}");
      return false;
    }
  }

  Future<void> fullRestart(
      {@required Uint8List bytecodeImage, @required String baseUrl}) async {
    setState(() {
      luaState = LuaState();
      func = null;
      res = null;
    });
    Future.delayed(Duration(seconds: 2)).then((val) async {
      var val = await luaState.loadBuffer(bytecodeImage, baseUrl);
      setState(() {
        func = val;
        res = func.pcall([]);
      });
    });
  }
}
