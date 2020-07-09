import 'dart:async';
import 'dart:typed_data';
import 'package:hydro_sdk/cfr/decode/codedump.dart';
import 'package:hydro_sdk/cfr/hotReloadable.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:flutter/material.dart';
import 'package:hydro_sdk/cfr/lasm/nativeThunk.dart';
import 'package:hydro_sdk/cfr/moduleDebugInfoRaw.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';

void _rebuildAllChildren(BuildContext context) {
  void rebuild(Element el) {
    el.markNeedsBuild();
    el.visitChildren(rebuild);
  }

  (context as Element).visitChildren(rebuild);
}

class RunFromNetwork extends StatefulWidget {
  final String baseUrl;
  final List<dynamic> args;
  final Map<String, NativeThunk> thunks;
  final Future<String> Function(String) downloadHash;
  final Future<Uint8List> Function(String) downloadByteCodeImage;
  final Future<ModuleDebugInfoRaw> Function(String) downloadDebugInfo;

  RunFromNetwork({
    @required this.baseUrl,
    @required this.args,
    @required this.thunks,
    this.downloadHash,
    this.downloadByteCodeImage,
    this.downloadDebugInfo,
  });

  @override
  _RunFromNetwork createState() => _RunFromNetwork(
        baseUrl: baseUrl,
        args: args,
        thunks: thunks,
        downloadHash: downloadHash,
        downloadByteCodeImage: downloadByteCodeImage,
        downloadDebugInfo: downloadDebugInfo,
      );
}

class _RunFromNetwork extends State<RunFromNetwork>
    with HotReloadable<RunFromNetwork> {
  final String baseUrl;
  final List<dynamic> args;
  final Map<String, Prototype Function({CodeDump codeDump, Prototype parent})>
      thunks;

  Timer timer;
  bool requiresRebuild = false;

  Future<String> Function(String) downloadHash;
  Future<Uint8List> Function(String) downloadByteCodeImage;
  Future<ModuleDebugInfoRaw> Function(String) downloadDebugInfo;

  _RunFromNetwork({
    @required this.baseUrl,
    @required this.args,
    @required this.thunks,
    this.downloadHash,
    this.downloadByteCodeImage,
    this.downloadDebugInfo,
  }) {
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

    if (downloadDebugInfo == null) {
      downloadDebugInfo = (String uri) async {
        try {
          var res = await get(uri);
          if (res.statusCode == 200) {
            return ModuleDebugInfoRaw(res.body);
          }
        } catch (err) {
          print(err);
        }

        return null;
      };
    }

    maybeReload();
    timer = Timer.periodic(
        kDebugMode ? Duration(milliseconds: 500) : Duration(hours: 10),
        (Timer timer) {
      maybeReload();
    });
  }

  Future<void> maybeReload() async {
    String newHash = await downloadHash("$baseUrl.sha256");
    if (newHash != null && newHash != lastHash) {
      var image = await downloadByteCodeImage(baseUrl);
      ModuleDebugInfoRaw debugInfo;
      if (kDebugMode) {
        debugInfo = await downloadDebugInfo("$baseUrl.symbols");
      }
      if (image != null) {
        setState(() {
          lastHash = newHash;
        });

        //First time load
        if (res == null) {
          await fullRestart(
              bytecodeImage: image,
              baseUrl: baseUrl,
              moduleDebugInfoRaw: debugInfo,
              thunks: thunks);
        } else {
          var status = await hotReload(
              bytecodeImage: image,
              baseUrl: baseUrl,
              moduleDebugInfoRaw: debugInfo,
              thunks: thunks);
          if (!status) {
            await fullRestart(
                bytecodeImage: image,
                baseUrl: baseUrl,
                moduleDebugInfoRaw: debugInfo,
                thunks: thunks);
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
          luaState.context.env["hydro"]
              ["globalBuildResult"](args != null ? [...args] : [])[0],
          parentState: luaState);
    }
  }
}
