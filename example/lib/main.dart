import 'package:flutter/material.dart';
import 'package:flua/5_2/luastate.dart';
import 'package:flua/5_2/coroutineresult.dart';

void main() => runApp(MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) {
          return App();
        }
      },
    ));

class App extends StatefulWidget {
  App();

  @override
  _App createState() => _App();
}

class _App extends State<App> {
  LuaState luaState = LuaState();

  Future<CoroutineResult> res;

  _App() {
    res = luaState.doFileFromBundle("assets/apps/hw.lc");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CoroutineResult>(
      future: res,
      builder: (BuildContext context, AsyncSnapshot<CoroutineResult> snapshot) {
        if (snapshot.hasData) {
          return luaState.context.env["buildResult"];
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
