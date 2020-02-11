import 'package:flutter/material.dart';
import 'package:flua/src/5_2/luastate.dart';
import 'package:flua/src/5_2/coroutineresult.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  App();

  @override
  _App createState() => _App();
}

class _App extends State<App> {
  LuaState luaState = LuaState();

  CoroutineResult res;

  @override
  Widget build(BuildContext context) {
    if (res == null) {
      Future.delayed(Duration(milliseconds: 100)).then((val) async {
        res = await luaState.doFileFromBundle("assets/apps/hw.lc");
        setState(() {});
      });
    }
    return Scaffold();
  }
}
