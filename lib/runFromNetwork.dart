import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/hotReloadable.dart';
import 'package:hydro_sdk/cfr/lasm/nativeThunk.dart';
import 'package:hydro_sdk/cfr/moduleDebugInfo.dart';
import 'package:hydro_sdk/cfr/preloadCustomNamespaces.dart';

typedef Widget ErrorBuilder(Object? err);

void _rebuildAllChildren(BuildContext context) {
  void rebuild(Element el) {
    el.markNeedsBuild();
    el.visitChildren(rebuild);
  }

  (context as Element).visitChildren(rebuild);
}

class RunFromNetwork extends StatefulWidget {
  final String baseUrl;
  final String filePath;
  final List<dynamic>? args;
  final Map<String, NativeThunk> thunks;
  final Future<String> Function(String)? downloadHash;
  final Future<Uint8List> Function(String)? downloadByteCodeImage;
  final Future<List<ModuleDebugInfo>?> Function(String)? downloadDebugInfo;
  final ErrorBuilder? errorBuilder;
  final List<CustomNamespaceLoader>? customNamespaces;

  final bool debugMode;
  RunFromNetwork({
    required this.baseUrl,
    required this.filePath,
    this.args,
    required this.thunks,
    this.downloadHash,
    this.downloadByteCodeImage,
    this.downloadDebugInfo,
    this.errorBuilder,
    this.customNamespaces,
    this.debugMode = kDebugMode,
  });

  @override
  _RunFromNetwork createState() => _RunFromNetwork(
        baseUrl: baseUrl,
        filePath: filePath,
        args: args,
        thunks: thunks,
        downloadHash: downloadHash,
        downloadByteCodeImage: downloadByteCodeImage,
        downloadDebugInfo: downloadDebugInfo,
        errorBuilder: errorBuilder,
        customNamespaces: customNamespaces,
        debugMode: debugMode,
      );
}

class _RunFromNetwork extends State<RunFromNetwork>
    with HotReloadable, PreloadableCustomNamespaces {
  final String baseUrl;
  final String filePath;
  final List<dynamic>? args;
  final Map<String, NativeThunk> thunks;
  final ErrorBuilder? errorBuilder;
  final bool? debugMode;
  Object? error;
  Timer? timer;
  bool requiresRebuild = false;

  Future<String?> Function(String)? downloadHash;
  Future<Uint8List?> Function(String)? downloadByteCodeImage;
  Future<List<ModuleDebugInfo>?> Function(String)? downloadDebugInfo;

  String? _debugUrl;

  _RunFromNetwork({
    required this.baseUrl,
    required this.filePath,
    this.args,
    required this.thunks,
    this.downloadHash,
    this.downloadByteCodeImage,
    this.downloadDebugInfo,
    this.errorBuilder,
    List<CustomNamespaceLoader>? customNamespaces,
    this.debugMode,
  }) {
    customNamespaceLoaders = customNamespaces;
    _debugUrl = debugMode! && Platform.isAndroid
        ? "http://10.0.2.2:5000"
        : debugMode! && Platform.isIOS
            ? "http://localhost:5000"
            : "";

    Future<Response?> _attemptDownloadWithDegradation(String uri) async {
      if (_debugUrl != "") {
        try {
          return await get(Uri.parse("$_debugUrl/$uri"));
        } catch (err) {
          print(err);
          setState(() {
            error = err;
          });
        }
      }
      try {
        return await get(Uri.parse("$baseUrl/$uri"));
      } catch (err) {
        print(err);
        setState(() {
          error = err;
        });
      }

      return null;
    }

    if (downloadHash == null) {
      downloadHash = (String uri) async {
        try {
          var res = await (_attemptDownloadWithDegradation(uri)
              as FutureOr<Response>);
          if (res.statusCode == 200) {
            return res.body;
          }
        } catch (err) {
          print(err);
          setState(() {
            error = err;
          });
        }

        return null;
      };
    }

    if (downloadByteCodeImage == null) {
      downloadByteCodeImage = (String uri) async {
        try {
          var res = await (_attemptDownloadWithDegradation(uri)
              as FutureOr<Response>);
          return res.bodyBytes;
        } catch (err) {
          print(err);
          setState(() {
            error = err;
          });
          return null;
        }
      };
    }

    if (downloadDebugInfo == null) {
      downloadDebugInfo = (String uri) async {
        if (_debugUrl != "") {
          try {
            var res = await _attemptDownloadWithDegradation(uri);
            if (res?.statusCode == 200) {
              return json
                  .decode(res!.body)
                  ?.map((x) => ModuleDebugInfo.fromJson(x))
                  ?.toList()
                  ?.cast<ModuleDebugInfo>();
            } else {
              return [];
            }
          } catch (err) {
            setState(() {
              error = err;
            });
            print(err);
          }
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
    String? newHash = await downloadHash!("$filePath.sha256");
    if (newHash == null) {
      setState(() {
        error = Exception("Unable to load hash ($filePath.sha256)");
      });
      return;
    }
    if (newHash != lastHash) {
      var image = await downloadByteCodeImage!("$filePath");
      List<ModuleDebugInfo>? symbols;
      if (debugMode!) {
        symbols = await downloadDebugInfo!("$filePath.symbols");
        if (symbols == null) {
          setState(() {
            error =
                Exception("Unable to load debug symbols ($filePath.symbols)");
          });
        }
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
              symbols: symbols,
              thunks: thunks);
        } else {
          var status = await hotReload(
              bytecodeImage: image,
              baseUrl: baseUrl,
              symbols: symbols,
              thunks: thunks);
          if (!status) {
            await fullRestart(
                bytecodeImage: image,
                baseUrl: baseUrl,
                symbols: symbols,
                thunks: thunks);
          }
          setState(() {
            requiresRebuild = true;
          });
        }

        return;
      } else {
        setState(() {
          error = Exception("Unable to load byte code ($filePath)");
        });
        return;
      }
    }
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (error != null) {
      if (timer != null) {
        timer!.cancel();
      }
      if (errorBuilder != null) {
        return errorBuilder!(error);
      }
      throw error!;
    }
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

      if (!res!.success) {
        print(res!.values![0]);
      }

      return maybeUnBoxAndBuildArgument<Widget, dynamic>(
          luaState.context!.env["hydro"]["globalBuildResult"].dispatch(
              args != null ? [...args!] : [],
              parentState: luaState)[0],
          parentState: luaState);
    }
  }
}
