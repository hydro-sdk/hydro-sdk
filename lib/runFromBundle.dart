import 'package:hydro_sdk/coroutine/coroutineresult.dart';
import 'package:hydro_sdk/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RunFromBundle extends StatefulWidget {
  final String path;

  RunFromBundle({@required this.path});

  @override
  _RunFromBundle createState() => _RunFromBundle(path: path);
}

class _RunFromBundle extends State<RunFromBundle> {
  final String path;
  HydroState luaState = HydroState();
  Future<CoroutineResult> res;

  _RunFromBundle({@required this.path}) {
    res = luaState.doFileFromBundle(path);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CoroutineResult>(
      future: res,
      builder: (BuildContext context, AsyncSnapshot<CoroutineResult> snapshot) {
        if (snapshot.hasData) {
          return maybeUnwrapAndBuildArgument<Widget>(
              luaState.context.env["buildResult"],
              parentState: luaState);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
