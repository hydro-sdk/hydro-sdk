import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/loadBuiltins.dart';
import 'package:hydro_sdk/cfr/coroutine/coroutineresult.dart';
import 'package:hydro_sdk/cfr/lasm/nativeThunk.dart';
import 'package:hydro_sdk/cfr/linkStatus.dart';
import 'package:hydro_sdk/cfr/moduleDebugInfo.dart';
import 'package:hydro_sdk/cfr/preloadCustomNamespaces.dart';
import 'package:hydro_sdk/hydroState.dart';

mixin HotReloadable<T extends StatefulWidget> on State<T>
    implements PreloadableCustomNamespaces<T> {
  HydroState luaState = HydroState();
  String? lastHash;
  HydroFunctionImpl? func;
  CoroutineResult? res;

  Future<bool> hotReload({
    required Uint8List bytecodeImage,
    required List<ModuleDebugInfo>? symbols,
    required String baseUrl,
    required Map<String, NativeThunk> thunks,
  }) async {
    var linkStatus = LinkStatus();
    luaState.symbols = symbols;
    var val = await luaState.loadBuffer(
        buffer: bytecodeImage,
        name: baseUrl,
        thunks: thunks,
        linkStatus: linkStatus);
    luaState.dispatchContext = DispatchContext(dispatchContext: val);
    print("I/Hydro: Reloaded function prototypes");
    setState(() {
      func = val;
      res = func!.pcall([], parentState: luaState);
    });
    WidgetsBinding.instance!.reassembleApplication();
    return true;
  }

  Future<void> fullRestart({
    required Uint8List bytecodeImage,
    required String baseUrl,
    required List<ModuleDebugInfo>? symbols,
    required Map<String, NativeThunk> thunks,
  }) async {
    setState(() {
      luaState = HydroState();
      luaState.symbols = symbols;
      preloadCustomNamespaces(hydroState: luaState);
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
      luaState.dispatchContext = DispatchContext(dispatchContext: val);
      print(
          "I/Hydro ${linkStatus.nativePrototypes} native, ${linkStatus.virtualPrototypes} virtual prototypes");
      // var linkStatus = linkNativePrototypes(destination: val.closure, stubs: stubs);
      //  print("I/Hydro Linked ${linkStatus.linkedNativePrototypes} native prototypes");
      setState(() {
        func = val;
        res = func!.pcall([], parentState: luaState);
      });
    });
  }
}
