import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/builtins/loadBuiltins.dart';
import 'package:hydro_sdk/cfr/coroutine/coroutineresult.dart';
import 'package:hydro_sdk/cfr/lasm/nativeThunk.dart';
import 'package:hydro_sdk/cfr/moduleDebugInfo.dart';
import 'package:hydro_sdk/cfr/preloadCustomNamespaces.dart';
import 'package:hydro_sdk/doFileFromBundle.dart';
import 'package:hydro_sdk/hydroState.dart';

class RunFromBundle extends StatefulWidget {
  final String path;
  final List<dynamic> args;
  final Map<String, NativeThunk> thunks;
  final List<CustomNamespaceLoader>? customNamespaces;

  RunFromBundle({
    required this.path,
    required this.args,
    required this.thunks,
    this.customNamespaces,
  });

  @override
  _RunFromBundle createState() => _RunFromBundle(
        path: path,
        args: args,
        thunks: thunks,
      );
}

class _RunFromBundle extends State<RunFromBundle>
    with PreloadableCustomNamespaces {
  final String path;
  final List<dynamic> args;
  final Map<String, NativeThunk> thunks;
  HydroState luaState = HydroState();
  Future<CoroutineResult>? res;

  _RunFromBundle({
    required this.path,
    required this.args,
    required this.thunks,
    List<CustomNamespaceLoader>? customNamespaces,
  }) {
    customNamespaceLoaders = customNamespaces;
    preloadCustomNamespaces(hydroState: luaState);
    loadBuiltins(hydroState: luaState);
    res = Future<CoroutineResult>(() async {
      List<ModuleDebugInfo>? symbols = json
          .decode((await rootBundle.loadString("$path.symbols")))
          ?.map((x) => ModuleDebugInfo.fromJson(x))
          ?.toList()
          ?.cast<ModuleDebugInfo>();
      luaState.symbols = symbols;
      return doFileFromBundle(
        hydroState: luaState,
        path: path,
        args: args,
        thunks: thunks,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CoroutineResult>(
      future: res,
      builder: (BuildContext context, AsyncSnapshot<CoroutineResult> snapshot) {
        if (snapshot.hasData) {
          return maybeUnBoxAndBuildArgument<Widget, dynamic>(
              luaState.context!.env["hydro"]["globalBuildResult"].dispatch([
                ...args,
              ], parentState: luaState)[0],
              parentState: luaState);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
