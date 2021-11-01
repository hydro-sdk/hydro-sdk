part of hydro_sdk.run_component;

mixin ReloadableMountableChunk<T extends StatefulWidget> on State<T>
    implements HotReloadable<T> {
  Future<void> maybeReloadMountableChunk({
    required Uint8List rawPackage,
    required String component,
    required Map<
            String,
            Prototype Function({
      CodeDump? codeDump,
      Prototype? parent,
    })>
        thunks,
  }) async {
    final decodedBzip2 = BZip2Decoder().decodeBytes(rawPackage);
    final decodedTar = TarDecoder().decodeBytes(decodedBzip2);

    final manifestContent = _getFileContentFromArchiveAsString(
      fileName: "${component}/manifest.json",
      archive: decodedTar,
    );

    PackageManifest? manifest;

    if (manifestContent != null) {
      manifest = PackageManifest.fromJson(jsonDecode(manifestContent));
    } else {
      print("Failed to find package manifest");
    }

    String? debugInfoContent;

    if (manifest != null) {
      debugInfoContent = _getFileContentFromArchiveAsString(
        fileName: "${component}/${manifest.mountableChunk}.hc.symbols",
        archive: decodedTar,
      );
    }

    List<ModuleDebugInfo>? debugInfo;

    if (debugInfoContent != null) {
      debugInfo = jsonDecode(debugInfoContent)
          .map((x) => ModuleDebugInfo.fromJson(x))
          .toList()
          .cast<ModuleDebugInfo>();
    }

    if (debugInfo == null) {
      print("Failed to find debug info");
    } else if (debugInfo.isEmpty) {
      print("Debug info is empty");
    }

    if (manifest != null) {
      final mountableChunk = _getFileContentFromArchive(
          fileName: "${component}/${manifest.mountableChunk}.hc",
          archive: decodedTar);
      if (mountableChunk != null) {
        if (res == null) {
          await fullRestart(
            bytecodeImage: Uint8List.fromList(mountableChunk),
            baseUrl: manifest.mountableChunk,
            symbols: debugInfo,
            thunks: thunks,
          );
        } else {
          final status = await hotReload(
            bytecodeImage: Uint8List.fromList(mountableChunk),
            baseUrl: manifest.mountableChunk,
            symbols: debugInfo,
            thunks: thunks,
          );
          if (!status) {
            await fullRestart(
              bytecodeImage: Uint8List.fromList(mountableChunk),
              baseUrl: manifest.mountableChunk,
              symbols: debugInfo,
              thunks: thunks,
            );
          }
        }
      } else {
        print("Failed to find mountable bytecode chunk");
      }
    }
  }
}
