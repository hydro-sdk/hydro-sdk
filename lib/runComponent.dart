import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive_io.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/build-project/packageManifest.dart';
import 'package:hydro_sdk/cfr/decode/codedump.dart';
import 'package:hydro_sdk/cfr/hotReloadable.dart';
import 'package:hydro_sdk/cfr/moduleDebugInfo.dart';
import 'package:hydro_sdk/cfr/preloadCustomNamespaces.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';

class RunComponent extends StatelessWidget {
  final String project;
  final String component;
  final Map<String, Prototype Function({CodeDump codeDump, Prototype parent})>
      thunks;

  const RunComponent({
    @required this.project,
    @required this.component,
    this.thunks = const {},
  });

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      return _RunDebugComponent(
        project: project,
        component: component,
        thunks: thunks,
      );
    } else {
      return const SizedBox();
    }
  }
}

class _RunDebugComponent extends StatefulWidget {
  final String project;
  final String component;
  final int port;
  final Widget loading;
  final Map<String, Prototype Function({CodeDump codeDump, Prototype parent})>
      thunks;

  const _RunDebugComponent({
    @required this.project,
    @required this.component,
    @required this.thunks,
    this.port = 5000,
    this.loading = const Center(
      child: CircularProgressIndicator(),
    ),
  });

  @override
  _RunDebugComponentState createState() => _RunDebugComponentState();
}

class _RunDebugComponentState extends State<_RunDebugComponent>
    with HotReloadable, PreloadableCustomNamespaces {
  Timer timer;
  List<dynamic> args;

  _RunDebugComponentState() {
    maybeReload();
    timer = Timer.periodic(Duration(milliseconds: 500), (_) => maybeReload());
  }

  Future<void> maybeReload() async {
    if (kDebugMode) {
      if (mounted) {
        final newHash = await _downloadDebugPackageHash(
          port: widget.port,
          project: widget.project,
          component: widget.component,
        );

        if (newHash == null) {
          return;
        }

        if (newHash != null && newHash != lastHash) {
          setState(() {
            lastHash = newHash;
          });
          final rawPackage = await _downloadDebugPackage(
              port: widget.port,
              project: widget.project,
              component: widget.component);

          final decodedBzip2 = BZip2Decoder().decodeBytes(rawPackage);
          final decodedTar = TarDecoder().decodeBytes(decodedBzip2);

          final manifest = PackageManifest.fromJson(jsonDecode(
              _getFileContentFromArchiveAsString(
                  fileName: "${widget.component}/manifest.json",
                  archive: decodedTar)));

          final debugInfo = jsonDecode(_getFileContentFromArchiveAsString(
                  fileName:
                      "${widget.component}/${manifest.mountableChunk}.hc.symbols",
                  archive: decodedTar))
              .map((x) => ModuleDebugInfo.fromJson(x))
              .toList()
              .cast<ModuleDebugInfo>();

          final mountableChunk = _getFileContentFromArchive(
              fileName: "${widget.component}/${manifest.mountableChunk}.hc",
              archive: decodedTar);

          print(manifest.mountableChunk);

          if (res == null) {
            await fullRestart(
              bytecodeImage: Uint8List.fromList(mountableChunk),
              baseUrl: manifest.mountableChunk,
              symbols: debugInfo,
              thunks: widget.thunks,
            );
          } else {
            var status = await hotReload(
              bytecodeImage: Uint8List.fromList(mountableChunk),
              baseUrl: manifest.mountableChunk,
              symbols: debugInfo,
              thunks: widget.thunks,
            );
            if (!status) {
              await fullRestart(
                bytecodeImage: Uint8List.fromList(mountableChunk),
                baseUrl: manifest.mountableChunk,
                symbols: debugInfo,
                thunks: widget.thunks,
              );
            }
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      if (res == null) {
        return widget.loading;
      } else {
        return maybeUnBoxAndBuildArgument<Widget>(
            luaState.context.env["hydro"]["globalBuildResult"].dispatch(
                args != null ? [...args] : [],
                parentState: luaState)[0],
            parentState: luaState);
      }
    }
    return const SizedBox();
  }
}

List<int> _getFileContentFromArchive({
  @required String fileName,
  @required Archive archive,
}) =>
    archive.fileData(archive.files.indexWhere((x) => x.name == fileName));

String _getFileContentFromArchiveAsString({
  @required String fileName,
  @required Archive archive,
}) =>
    String.fromCharCodes(_getFileContentFromArchive(
      fileName: fileName,
      archive: archive,
    ));

String _debugBaseUrl({
  @required int port,
}) =>
    kDebugMode
        ? Platform.isAndroid
            ? "http://10.0.2.2:${port}"
            : "http://127.0.0.1:${port}"
        : null;

String _debugComponentUrl({
  @required int port,
  @required String project,
  @required String component,
}) =>
    kDebugMode
        ? [
            _debugBaseUrl(port: port),
            "/",
            project,
            "/",
            component,
          ].join("")
        : null;

Future<String> _downloadDebugPackageHash({
  @required int port,
  @required String project,
  @required String component,
}) async {
  if (kDebugMode) {
    try {
      final response = await get([
        _debugComponentUrl(
          port: port,
          project: project,
          component: component,
        ),
        ".ota.sha256",
      ].join(""));
      if (response?.statusCode == 200) {
        return response?.body;
      }
    } catch (err) {
      print(err);
      return null;
    }
    return null;
  }
  return null;
}

Future<Uint8List> _downloadDebugPackage({
  @required int port,
  @required String project,
  @required String component,
}) async {
  if (kDebugMode) {
    try {
      final response = await get([
        _debugComponentUrl(
          port: port,
          project: project,
          component: component,
        ),
        ".ota",
      ].join(""));
      if (response?.statusCode == 200) {
        return response?.bodyBytes;
      }
    } catch (err) {
      print(err);
      return null;
    }
    return null;
  }
  return null;
}
