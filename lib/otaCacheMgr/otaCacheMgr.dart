import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:path/path.dart' as path;

import 'package:hydro_sdk/build-project/sha256Data.dart';
import 'package:hydro_sdk/otaCacheMgr/directoryProvider.dart';
import 'package:hydro_sdk/otaCacheMgr/mobileDirectoryProvider.dart';
import 'package:hydro_sdk/otaCacheMgr/otaCacheManifest.dart';

class OtaCacheMgr {
  final String basePath;
  final DirectoryProvider directoryProvider;

  const OtaCacheMgr({
    this.basePath = "otaCache",
    this.directoryProvider = const MobileDirectoryProvider(),
  });

  String _hashComponentInfo({
    required String project,
    required String component,
    required String releaseChannel,
  }) =>
      sha256Data([
        sha256Data(project.codeUnits),
        sha256Data(component.codeUnits),
        sha256Data(releaseChannel.codeUnits),
      ].join("").codeUnits);

  Future<String> _makePathForComponentInfo({
    required String project,
    required String component,
    required String releaseChannel,
  }) async =>
      [
        await directoryProvider.applicationDocumentsDirectory(),
        basePath,
        _hashComponentInfo(
          project: project,
          component: component,
          releaseChannel: releaseChannel,
        )
      ].join(path.separator);

  Future<String> _makeManifestPathForComponentInfo({
    required String project,
    required String component,
    required String releaseChannel,
  }) async =>
      await [
        await _makePathForComponentInfo(
          project: project,
          component: component,
          releaseChannel: releaseChannel,
        ),
        "ota.json"
      ].join(path.separator);

  Future<String> _makeOtaPathForComponentInfo({
    required String project,
    required String component,
    required String releaseChannel,
    required OtaCacheManifest otaCacheManifest,
  }) async =>
      [
        await _makePathForComponentInfo(
          project: project,
          component: component,
          releaseChannel: releaseChannel,
        ),
        "${otaCacheManifest.id}.ota",
      ].join(path.separator);

  Future<OtaCacheManifest?> getManifestForComponent({
    required String project,
    required String component,
    required String releaseChannel,
  }) async {
    try {
      return OtaCacheManifest.fromJson(
          jsonDecode(await File(await _makeManifestPathForComponentInfo(
        project: project,
        component: component,
        releaseChannel: releaseChannel,
      ))
              .readAsString()));
    } catch (_) {
      return null;
    }
  }

  Future<Uint8List> getPackageForManifest({
    required String project,
    required String component,
    required String releaseChannel,
    required OtaCacheManifest otaCacheManifest,
  }) async =>
      await File(await _makeOtaPathForComponentInfo(
        project: project,
        component: component,
        releaseChannel: releaseChannel,
        otaCacheManifest: otaCacheManifest,
      ))
          .readAsBytes();

  Future<Uint8List?> getCachedPackageForComponent({
    required String project,
    required String component,
    required String releaseChannel,
  }) async {
    final otaCacheManifest = await getManifestForComponent(
      project: project,
      component: component,
      releaseChannel: releaseChannel,
    );

    if (otaCacheManifest != null) {
      return await getPackageForManifest(
        project: project,
        component: component,
        releaseChannel: releaseChannel,
        otaCacheManifest: otaCacheManifest,
      );
    }

    return null;
  }

  Future<bool> cachePackageForComponent({
    required String project,
    required String component,
    required String releaseChannel,
    required String id,
    required Uint8List package,
  }) async {
    try {
      await Directory(await _makePathForComponentInfo(
              project: project,
              component: component,
              releaseChannel: releaseChannel))
          .create(
        recursive: true,
      );

      await File(await _makeOtaPathForComponentInfo(
        project: project,
        component: component,
        releaseChannel: releaseChannel,
        otaCacheManifest: OtaCacheManifest(
          id: id,
        ),
      ))
          .writeAsBytes(package);

      await File(await _makeManifestPathForComponentInfo(
              project: project,
              component: component,
              releaseChannel: releaseChannel))
          .writeAsString(jsonEncode(OtaCacheManifest(
        id: id,
      ).toJson()));
    } catch (err, stack) {
      print(err);
      print(stack);
      return false;
    }

    return true;
  }
}
