import 'dart:async';
import 'dart:typed_data';
import 'package:http/http.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/coroutine/coroutineresult.dart';
import 'package:flua/luastate.dart';
import 'package:flutter/material.dart';

class RunFromNetwork extends StatefulWidget {
  final String baseUrl;

  RunFromNetwork({@required this.baseUrl});

  @override
  _RunFromNetwork createState() => _RunFromNetwork(baseUrl: baseUrl);
}

class _RunFromNetwork extends State<RunFromNetwork> {
  final String baseUrl;

  LuaState luaState = LuaState();
  String lastHash;
  CoroutineResult res;
  Timer timer;

  _RunFromNetwork({@required this.baseUrl}) {
    maybeReload();
    timer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      maybeReload();
    });
  }

  Future<void> maybeReload() async {
    String newHash = await downloadHash();
    if (newHash != lastHash) {
      var image = await downloadByteCodeImage();

      setState(() {
        lastHash = newHash;
        res = null;
      });

      Future.delayed(Duration(seconds: 2)).then((val) {
        luaState.doBuffer(image, baseUrl).then((val) {
          setState(() {
            res = val;
          });
        });
      });
      return;
    }
  }

  Future<String> downloadHash() async {
    var res = await get("$baseUrl.sha256");
    return res.body;
  }

  Future<Uint8List> downloadByteCodeImage() async {
    var res = await get(baseUrl);
    return res.bodyBytes;
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (res == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return maybeUnwrapAndBuildArgument(luaState.context.env["buildResult"]);
    }
  }
}
