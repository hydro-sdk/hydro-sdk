import 'package:hydro_sdk/cfr/coroutine/coroutineresult.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RunFromBundle extends StatefulWidget {
  final String path;
  final List<dynamic> args;

  RunFromBundle({@required this.path, @required this.args});

  @override
  _RunFromBundle createState() => _RunFromBundle(path: path, args: args);
}

class _RunFromBundle extends State<RunFromBundle> {
  final String path;
  final List<dynamic> args;
  HydroState luaState = HydroState();
  Future<CoroutineResult> res;

  _RunFromBundle({@required this.path, @required this.args}) {
    res = luaState.doFileFromBundle(path);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CoroutineResult>(
      future: res,
      builder: (BuildContext context, AsyncSnapshot<CoroutineResult> snapshot) {
        if (snapshot.hasData) {
          return maybeUnwrapAndBuildArgument<Widget>(
              luaState.context.env["hydroGlobalBuildResult"](
                  args != null ? [null, ...args] : [])[0],
              parentState: luaState);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
