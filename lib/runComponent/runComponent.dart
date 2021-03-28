library hydro_sdk.run_component;

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:archive/archive_io.dart';
import 'package:http/http.dart';

import 'package:hydro_sdk/build-project/packageManifest.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/decode/codedump.dart';
import 'package:hydro_sdk/cfr/hotReloadable.dart';
import 'package:hydro_sdk/cfr/moduleDebugInfo.dart';
import 'package:hydro_sdk/cfr/preloadCustomNamespaces.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';

part 'runDebugComponent.dart';
part 'debugUrls.dart';
part 'debugDownload.dart';
part 'reloadableMountableChunk.dart';
part 'runComponentFromFile.dart';

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
