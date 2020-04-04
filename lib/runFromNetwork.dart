import 'dart:async';
import 'dart:typed_data';
import 'package:flua/hotReloadable.dart';
import 'package:http/http.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flutter/material.dart';

void _rebuildAllChildren(BuildContext context) {
  void rebuild(Element el) {
    el.markNeedsBuild();
    el.visitChildren(rebuild);
  }

  (context as Element).visitChildren(rebuild);
}

class RunFromNetwork extends StatefulWidget {
  final String baseUrl;
  final Future<String> Function(String) downloadHash;
  final Future<Uint8List> Function(String) downloadByteCodeImage;

  RunFromNetwork(
      {@required this.baseUrl, this.downloadHash, this.downloadByteCodeImage});

  @override
  _RunFromNetwork createState() => _RunFromNetwork(
      baseUrl: baseUrl,
      downloadHash: downloadHash,
      downloadByteCodeImage: downloadByteCodeImage);
}

class _RunFromNetwork extends State<RunFromNetwork>
    with HotReloadable<RunFromNetwork> {
  final String baseUrl;

  Timer timer;
  bool requiresRebuild = false;

  Future<String> Function(String) downloadHash;
  Future<Uint8List> Function(String) downloadByteCodeImage;

  _RunFromNetwork(
      {@required this.baseUrl, this.downloadHash, this.downloadByteCodeImage}) {
    if (downloadHash == null) {
      downloadHash = (String uri) async {
        try {
          var res = await get(uri);
          if (res.statusCode == 200) {
            return res.body;
          }
        } catch (err) {
          print(err);
        }

        return null;
      };
    }

    if (downloadByteCodeImage == null) {
      downloadByteCodeImage = (String uri) async {
        try {
          var res = await get(uri);
          return res.bodyBytes;
        } catch (err) {
          print(err);
          return null;
        }
      };
    }
    maybeReload();
    timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      maybeReload();
    });
  }

  Future<void> maybeReload() async {
    String newHash = await downloadHash("$baseUrl.sha256");
    if (newHash != null && newHash != lastHash) {
      var image = await downloadByteCodeImage(baseUrl);
      if (image != null) {
        setState(() {
          lastHash = newHash;
        });

        //First time load
        if (res == null) {
          await fullRestart(bytecodeImage: image, baseUrl: baseUrl);
        } else {
          var status = await hotReload(bytecodeImage: image, baseUrl: baseUrl);
          if (!status) {
            await fullRestart(bytecodeImage: image, baseUrl: baseUrl);
          }
          setState(() {
            requiresRebuild = true;
          });
        }

        return;
      }
    }
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
      if (requiresRebuild) {
        Future.delayed(Duration(seconds: 1)).then((val) {
          _rebuildAllChildren(context);
          Future.delayed(Duration(seconds: 1)).then((val) {
            _rebuildAllChildren(context);
            Future.delayed(Duration(seconds: 1)).then((val) {
              _rebuildAllChildren(context);
            });
          });
        });
        setState(() {
          requiresRebuild = false;
        });
      }
      return maybeUnwrapAndBuildArgument<Widget>(
          luaState.context.env["buildResult"],
          parentState: luaState);
    }
  }
}
