import 'package:flua/5_2/coroutineresult.dart';
import 'package:flua/5_2/flutter/maybeUnwrapAndBuildArgument.dart';
import 'package:flua/5_2/luastate.dart';
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
  LuaState luaState = LuaState();
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
          return maybeUnwrapAndBuildArgument(
              luaState.context.env["buildResult"]);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
