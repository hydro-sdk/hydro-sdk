import 'package:flutter/material.dart';
import 'package:flua/5_2/luastate.dart';
import 'package:flua/5_2/coroutineresult.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  App();

  @override
  _App createState() => _App();
}

class _App extends State<App> {
  LuaState luaState = LuaState();

  Future<CoroutineResult> res;

  App() {
    res = luaState.doFileFromBundle("asset/apps/hw.lc");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CoroutineResult>(
      future: res,
      builder: (BuildContext context, AsyncSnapshot<CoroutineResult> snapshot) {
        if (snapshot.hasData) {
          return snapshot.data.values[0];
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
