import 'package:hydro_sdk/cfr/builtins/loadBuiltins.dart';
import 'package:hydro_sdk/cfr/coroutine/coroutineresult.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/lasm/nativeThunk.dart';
import 'package:hydro_sdk/doFileFromBundle.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RunFromBundle extends StatefulWidget {
  final String path;
  final List<dynamic> args;
  final Map<String, NativeThunk> thunks;

  RunFromBundle({
    @required this.path,
    @required this.args,
    @required this.thunks,
  });

  @override
  _RunFromBundle createState() => _RunFromBundle(
        path: path,
        args: args,
        thunks: thunks,
      );
}

class _RunFromBundle extends State<RunFromBundle> {
  final String path;
  final List<dynamic> args;
  final Map<String, NativeThunk> thunks;
  HydroState luaState = HydroState();
  Future<CoroutineResult> res;

  _RunFromBundle({
    @required this.path,
    @required this.args,
    @required this.thunks,
  }) {
    loadBuiltins(hydroState: luaState);
    res = doFileFromBundle(
      hydroState: luaState,
      path: path,
      args: args,
      thunks: thunks,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CoroutineResult>(
      future: res,
      builder: (BuildContext context, AsyncSnapshot<CoroutineResult> snapshot) {
        if (snapshot.hasData) {
          return maybeUnBoxAndBuildArgument<Widget>(
              luaState.context.env["hydro"]
                  ["globalBuildResult"](args != null ? [...args] : [])[0],
              parentState: luaState);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
