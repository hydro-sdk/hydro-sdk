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
import 'package:hydro_sdk/otaCacheMgr/otaCacheMgr.dart';
import 'package:hydro_sdk/registry/dto/getLatestPackageDto.dart';
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
  final OtaCacheMgr otaCacheMgr;
  final Map<
      String,
      Prototype Function({
    CodeDump? codeDump,
    Prototype? parent,
  })> thunks;
  final Widget loading;
  final int debugPort;

  const RunComponent({
    required this.project,
    required this.component,
    this.releaseChannel = "latest",
    this.registryApi = const RegistryApi(
      scheme: "https",
      host: "api.registry.hydro-sdk.io",
    ),
    this.otaCacheMgr = const OtaCacheMgr(),
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
  RunComponentKind? runComponentKind;
  Uint8List? rawPackage;

  void _runPackageFromRegistry({
    required Uint8List package,
  }) {
    if (mounted) {
      if (kDebugMode) {
        print(
            "This host app is built in debug mode. ${widget.project}/${widget.component} was downloaded from ${widget.registryApi.toString()}");
      }
      setState(() {
        runComponentKind = RunComponentKind.kRunComponentFromRegistry;
        rawPackage = package;
      });
    }
  }

  Future<void> _attemptToLoadComponentFromRegistry() async {
    try {
      if (mounted) {
        setState(() {
          runComponentKind = RunComponentKind.kLoadingComponentFromRegistry;
        });
      }

      final otaCacheManifest = await widget.otaCacheMgr.getManifestForComponent(
        project: widget.project,
        component: widget.component,
        releaseChannel: widget.releaseChannel,
      );

      if (otaCacheManifest != null) {
        final otaCachePackage = await widget.otaCacheMgr.getPackageForManifest(
          project: widget.project,
          component: widget.component,
          releaseChannel: widget.releaseChannel,
          otaCacheManifest: otaCacheManifest,
        );

        //A cached package for this componet exists, start running it
        _runPackageFromRegistry(
          package: otaCachePackage,
        );
      }

      final latestPackageResult = await widget.registryApi.getLatestPackage(
        getLatestPackageDto: GetLatestPackageDto(
          sessionId: Uuid().v4(),
          projectName: widget.project,
          componentName: widget.component,
          releaseChannelName: widget.releaseChannel,
          currentPackageId: otaCacheManifest?.id ?? "",
        ),
      );

      final latestPackage = latestPackageResult.maybeWhen(
        success: (val) => val.result,
        orElse: () => null,
      );

      if (latestPackage != null) {
        //A newer package than what is cached is available for this component
        final id = latestPackage.id;
        final url = latestPackage.url;

        if (id.isNotEmpty && url.isNotEmpty) {
          final newPackage = await get(Uri.parse(url));

          if (newPackage.statusCode == 200) {
            //Download and cache new version
            final decodedPackage = base64Decode(newPackage.body);
            widget.otaCacheMgr.cachePackageForComponent(
              project: widget.project,
              component: widget.component,
              releaseChannel: widget.releaseChannel,
              id: id,
              package: decodedPackage,
            );

            if (otaCacheManifest?.id.isEmpty ?? true) {
              //If we weren't running anything from the cache, start running the newly downloaded package
              _runPackageFromRegistry(
                package: decodedPackage,
              );
            }
          }
        }
      }
    } catch (err, stack) {
      print(err);
      print(stack);
    }
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
        } else {
          _attemptToLoadComponentFromRegistry();
        }
      }).onError((dynamic error, stackTrace) {
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

List<int>? _getFileContentFromArchive({
  required String fileName,
  required Archive archive,
}) {
  final index = archive.files.indexWhere((x) => x.name == fileName);

  if (index != -1) {
    return archive.fileData(index);
  }
}

String? _getFileContentFromArchiveAsString({
  required String fileName,
  required Archive archive,
}) {
  final content = _getFileContentFromArchive(
    fileName: fileName,
    archive: archive,
  );

  if (content != null) {
    return String.fromCharCodes(content);
  }
}
