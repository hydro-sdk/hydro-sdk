library hydro_sdk.run_component;

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:archive/archive_io.dart';
import 'package:http/http.dart';
import 'package:uuid/uuid.dart';

import 'package:hydro_sdk/build-project/packageManifest.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/decode/codedump.dart';
import 'package:hydro_sdk/cfr/hotReloadable.dart';
import 'package:hydro_sdk/cfr/moduleDebugInfo.dart';
import 'package:hydro_sdk/cfr/preloadCustomNamespaces.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:hydro_sdk/registry/dto/getPackageDto.dart';
import 'package:hydro_sdk/registry/registryApi.dart';

part 'runDebugComponent.dart';
part 'runComponentFromBytes.dart';
part 'runComponentFromFile.dart';
part 'reloadableMountableChunk.dart';
part 'serviceAware.dart';

enum RunComponentKind {
  kRunDebugComponent,
  kRunComponentFromRegistry,
  kLoadingComponentFromRegistry,
}

class RunComponent extends StatefulWidget {
  final String project;
  final String component;
  final String releaseChannel;
  final RegistryApi registryApi;
  final Map<String, Prototype Function({CodeDump codeDump, Prototype parent})>
      thunks;
  final Widget loading;
  final int debugPort;

  const RunComponent({
    @required this.project,
    @required this.component,
    this.releaseChannel = "latest",
    this.registryApi = const RegistryApi(baseUrl: ""),
    this.thunks = const {},
    this.debugPort = 5000,
    this.loading = const Center(
      child: CircularProgressIndicator(),
    ),
  });

  @override
  _RunComponentState createState() => _RunComponentState();
}

class _RunComponentState extends State<RunComponent> with ServiceAware {
  RunComponentKind runComponentKind;
  Uint8List rawPackage;

  void _attemptToLoadComponentFromRegistry() {
    if (mounted) {
      setState(() {
        runComponentKind = RunComponentKind.kLoadingComponentFromRegistry;
      });
    }
    widget.registryApi
        .getLatestPackageUri(
      getPackageDto: GetPackageDto(
        sessionId: Uuid().v4(),
        projectName: widget.project,
        componentName: widget.component,
        releaseChannelName: widget.releaseChannel,
        currentPackageId: "",
      ),
    )
        .then((latestPackageUri) {
      if (latestPackageUri?.statusCode == 201) {
        get(latestPackageUri.body).then((downloadResponse) {
          if (mounted) {
            setState(() {
              runComponentKind = RunComponentKind.kRunComponentFromRegistry;
              rawPackage = base64Decode(downloadResponse.body);
            });
          } 
        }).onError((error, stackTrace) {
          print(error);
          print(stackTrace);
        });
      }
    }).onError((error, stackTrace) {
      print(error);
      print(stackTrace);
    });
  }

  @override
  void initState() {
    super.initState();

    if (kDebugMode) {
      _debugPackageAvailable(
        project: widget.project,
        component: widget.component,
        port: widget.debugPort,
      ).then((value) {
        if (value != null && value != RunProjectResponseKind.kUnavailable) {
          if (mounted) {
            setState(() {
              runComponentKind = RunComponentKind.kRunDebugComponent;
            });
          }
        }
        _attemptToLoadComponentFromRegistry();
      }).onError((error, stackTrace) {
        print(error);
        print(stackTrace);
      });
    } else {
      _attemptToLoadComponentFromRegistry();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode && runComponentKind == RunComponentKind.kRunDebugComponent) {
      return _RunDebugComponent(
        project: widget.project,
        component: widget.component,
        thunks: widget.thunks,
        port: widget.debugPort,
        loading: widget.loading,
      );
    } else if (runComponentKind == RunComponentKind.kRunComponentFromRegistry) {
      return RunComponentFromBytes(
        bytes: rawPackage,
        component: widget.component,
        thunks: widget.thunks,
        loading: widget.loading,
      );
    } else if (runComponentKind ==
        RunComponentKind.kLoadingComponentFromRegistry) {
      return widget.loading;
    } else {
      return const SizedBox();
    }
  }
}

List<int> _getFileContentFromArchive({
  @required String fileName,
  @required Archive archive,
}) {
  archive.files.map((x) => print(x.name));
  return archive.fileData(archive.files.indexWhere((x) => x.name == fileName));
}

String _getFileContentFromArchiveAsString({
  @required String fileName,
  @required Archive archive,
}) =>
    String.fromCharCodes(_getFileContentFromArchive(
      fileName: fileName,
      archive: archive,
    ));
